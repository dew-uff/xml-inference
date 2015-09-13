html(1).
html_attribute_xmlns_xlink(1, 2, 'http://www.w3.org/1999/xlink').
html_attribute_xml_lang(1, 4, 'en').
head(1, 6).
title(6, 7, 'Namespaces').
body(1, 9).
h1_attribute_align(10, 11, 'center').
h1(9, 10, ' An Ellipse and a Rectangle ').
svg_svg(9, 14).
svg_svg_attribute_xmlns_svg(14, 15, 'http://www.w3.org/2000/svg').
svg_svg_attribute_svg_width(14, 17, '12cm').
svg_svg_attribute_svg_height(14, 19, '10cm').
svg_ellipse(14, 21).
svg_ellipse_attribute_svg_rx(21, 22, '110').
svg_ellipse_attribute_svg_ry(21, 24, '130').
svg_rect(14, 26).
svg_rect_attribute_svg_x(26, 27, '4cm').
svg_rect_attribute_svg_y(26, 29, '1cm').
svg_rect_attribute_svg_width(26, 31, '3cm').
svg_rect_attribute_svg_height(26, 33, '6cm').
p_attribute_xlink_type(35, 36, 'simple').
p_attribute_xlink_href(35, 38, 'ellipses.html').
p(9, 35, 'More about ellipses').
p_attribute_xml_lang(41, 42, 'it').
p_attribute_xlink_type(41, 44, 'simple').
p_attribute_xlink_href(41, 46, 'rectangles.html').
p(9, 41, 'Ancora sui rettangoli').
hr(9, 49, '').
p(9, 51, ' Last modified December 30, 2004').
indexOf([Element|_], Element, 1):- !. 
indexOf([_|Tail], Element, Index):- 
indexOf(Tail, Element, Index1),!, 
Index is Index1+1. 
 printXML(LISTVAR,NODENAMESLIST,TREE,RULE) :-  findall( LISTVAR,RULE,RESULTLIST),printXMLRuleList(RESULTLIST,NODENAMESLIST,TREE,STACK,LASTTAG,LASTDEPHT),!.
 printXMLRuleList([HRESULT|TRESULT],NODENAMESLIST,TREE,STACK,LASTTAG,LASTDEPHT) :- 
  printXMLRule(NODENAMESLIST,HRESULT,TREE,STACK,RESULTSTACK,LASTDEPHT,NEWLASTDEPHT,LASTTAG,RESULTTAG), 
  printXMLRuleList(TRESULT,NODENAMESLIST,TREE,RESULTSTACK,RESULTTAG,NEWLASTDEPHT). 
  printXMLRuleList([],NODENAMESLIST,TREE,STACK,LASTTAG,LASTDEPHT):-printCloseNodes(LASTTAG).
  printXMLRule([],[],TREE,STACK,RESULTSTACK,LASTDEPHT,NEWLASTDEPHT,LASTTAG,NEWLASTTAG):- 
     (nonvar(STACK)->copy(STACK,RESULTSTACK);true), (nonvar(LASTTAG)->copy(LASTTAG,NEWLASTTAG);true), 
   (NEWLASTDEPHT = LASTDEPHT). 
  printXMLRule([HNODE|TNODE],[HVAR|TVAR],TREE,STACK,RESULTSTACK,LASTDEPHT,NEWLASTDEPHT,LASTTAG,NEWLASTTAG) :-  
    depht(TREE,HNODE,NEXTNEWLASTDEPHT), checkPrintCLoseNode(LASTDEPHT,NEXTNEWLASTDEPHT,HVAR,LASTTAG,STACK,TMPNEWSTACK),checkPrintOpenNode(TREE,HNODE,HVAR,STACK), 
    addElementId(TREE,HNODE,HVAR,STACK,NEWSTACK),(var(NEWSTACK)->copy(STACK,NEWSTACK);true), 
    addMapElementId(TREE,HNODE,HNODE,HVAR,TMPNEWSTACK,NEXTLASTTAG),(var(NEXTLASTTAG)-> (nonvar(TMPNEWSTACK)-> copy(TMPNEWSTACK,NEXTLASTTAG);true);true), 
    printXMLRule(TNODE,TVAR,TREE,NEWSTACK,NEWRESULTSTACK,NEXTNEWLASTDEPHT,RETURNLASTDEPHT,NEXTLASTTAG,NEWRESULTTAG), 
    joinLists(NEWRESULTTAG,NEXTLASTTAG,TMPTAG),distinct(TMPTAG,NEWLASTTAG),cleanList(TMPTAG,NEWLASTTAG), 
    joinLists(NEWRESULTSTACK,NEWSTACK,TMP),distinct(TMP,RESULTSTACK),cleanList(TMP,RESULTSTACK),NEWLASTDEPHT = RETURNLASTDEPHT . 
  printNode(TREE,NODENAME,NODEVALUE) :-  nonvar(NODEVALUE) ->  (isLeaf(TREE,NODENAME) ->  depht(TREE,NODENAME,NSPACE),printOpenNode(NODENAME,NODEVALUE,NSPACE), 
    	printCloseNode(NODENAME,NODEVALUE,NSPACE) 
    	; depht(TREE,NODENAME,NSPACE), printOpenNode(NODENAME,NODEVALUE,NSPACE) ); true. 
  checkPrintCLoseNode(LASTDEPHT,NEXTNEWLASTDEPHT,NODEID,LASTTAG,STACK,NEWLASTTAG) :- nonvar(LASTDEPHT)-> 
       (nonvar(NEXTNEWLASTDEPHT),NEXTNEWLASTDEPHT < LASTDEPHT -> 
       ( element(1,LASTTAG,NODE),atom_chars(NODE,LISTCHARS),indexOfElement(LISTCHARS,'-',CHARPOS),split(LISTCHARS,CHARPOS+1,LIST1, LIST2), 
  	   atom_chars(PRINTNODE,LIST2),PRINTDEPHT is LASTDEPHT-1,printCloseNode(PRINTNODE,_,PRINTDEPHT), 
  	   removeListHead(LASTTAG,NEWLASTTAG) 
  	 );nonvar(LASTTAG)->(var(NEWLASTTAG)-> copy(LASTTAG,NEWLASTTAG));true);nonvar(LASTTAG)->(var(NEWLASTTAG)-> copy(LASTTAG,NEWLASTTAG));true. 
  checkPrintOpenNode(TREE,HNODE,HVAR,LISTID)	:-  
       var(LISTID)->(printNode(TREE,HNODE,HVAR));(nonvar(LISTID),nonvar(HVAR), \+member(HVAR,LISTID) -> printNode(TREE,HNODE,HVAR)) 
  	 ;true. 
  printOpenNode(NODENAME,NODEVALUE,NSPACE) :- ident(NSPACE),print('<'),write(NODENAME),print( '>'),nl, NEWNSPACE is NSPACE+3, ident(NEWNSPACE), write(NODEVALUE),nl. 
  printCloseNode(NODENAME,NODEVALUE,NSPACE) :- ident(NSPACE),print('</'),write(NODENAME),print( '>'),nl. 
  ident(0). 
  ident(N) :- N>0, print(' '), M is N-1, ident(M). 
  findnode(t(NODE,F),NODENAME,SUBTREE) :-  ( NODE == NODENAME -> SUBTREE = F; findnode(F,NODENAME,SUBTREE) ). 
  findnode([],NODENAME,SUBTREE). 
  findnode([T|Ts],NODENAME,SUBTREE) :- findnode(T,NODENAME,SUBTREE), findnode(Ts,NODENAME,SUBTREE). 
  printCloseNodes([]).
  printCloseNodes(NODEIDMAP) :- length(NODEIDMAP, NLENGHT), printCloseMapNodes(NODEIDMAP,NLENGHT). 
  printCloseMapNodes([],0).
  printCloseMapNodes([],1). 
  printCloseMapNodes(NODEIDMAP, NLENGHT) :- element(1,NODEIDMAP,NODE),atom_chars(NODE,LISTCHARS),indexOfElement(LISTCHARS,'-',CHARPOS),split(LISTCHARS,CHARPOS+1,LIST1, LIST2), 
  				atom_chars(PRINTNODE,LIST2),PRINTDEPHT is NLENGHT-1,printCloseNode(PRINTNODE,_,PRINTDEPHT),removeListHead(NODEIDMAP,NEWNODEIDMAP), 
  				NEWNLENGHT is NLENGHT -1 ,printCloseMapNodes(NEWNODEIDMAP,NEWNLENGHT). 
  removeListHead([_|Tail], Tail). 
  isLeaf(TREE,NODENAME) :- findnode(TREE,NODENAME,SUBTREE),length(SUBTREE,0). 
  depht(T,NODENAME,DEPHT) :- depht(T,NODENAME,0,DEPHT). 
  depht(t(NODE,F),NODENAME,CURRENTDEPHT,DEPHT) :- ( NODE == NODENAME -> DEPHT = CURRENTDEPHT;(NEWCURRENTDEPHT is CURRENTDEPHT +1,depht(F,NODENAME,NEWCURRENTDEPHT,DEPHT)) ). 
  depht([],NODENAME,CURRENTDEPHT,DEPHT). 
  depht([T|Ts],NODENAME,CURRENTDEPHT,DEPHT) :- depht(T,NODENAME,CURRENTDEPHT,DEPHT),depht(Ts,NODENAME,CURRENTDEPHT,DEPHT). 
  add(X,List,[X|List]). 
  copy(LIST,LISTRESULT) :- append(LIST,[],LISTRESULT). 
  addFirstItem(ITEM,LISTRESULT) :- append([ITEM],[],LISTRESULT). 
  addElementId(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST) :- (nonvar(NODEVALUE),\+isLeaf(TREE,NODENAME) ->addListId(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST));true. 
  addElement(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST) :- (nonvar(NODEVALUE),\+isLeaf(TREE,NODENAME) ->addListElement(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST));true. 
  addMapElementId(TREE,NODENAME,NODEVALUE,NODEID,OLDLIST,NEWLIST):-  \+isLeaf(TREE,NODENAME) ->(nonvar(NODEID),nonvar(NODEVALUE), 
     num_atom(NODEID, NODEIDSTRING),text_concat(NODEIDSTRING,'-',NODEIDHIFEN),text_concat(NODEIDHIFEN,NODEVALUE,NODEMAP), 
  	addElement(TREE,NODENAME,NODEMAP,OLDLIST, NEWLIST));true. 
  addListId(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST)  :- (number(NODEVALUE)->(nonvar(OLDLIST)->(\+ memberchk(NODEVALUE,OLDLIST)->append([NODEVALUE],OLDLIST,NEWLIST);true);(copy([NODEVALUE],NEWLIST))));true. 
  addListElement(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST)  :- (nonvar(OLDLIST)->(append([NODEVALUE],OLDLIST,NEWLIST));(copy([NODEVALUE],NEWLIST))). 
  addNewItemList(ITEM,OLDLIST,NEWLIST) :- nonvar(OLDLIST)->( \+ memberchk(ITEM,OLDLIST)->append([ITEM],OLDLIST,NEWLIST)).  
  idInList(ID,LIST) :-   nonvar(ID),number(ID), memberchk(ID,LIST). 
  idNotInList(ID,LIST) :-   nonvar(ID),number(ID), \+ memberchk(ID,LIST). 
  joinLists(LISTA,LISTB,RESULTLIST) :- (nonvar(LISTA),nonvar(LISTB)) -> (append(LISTA,LISTB,RESULTLIST)) ; (nonvar(LISTA),copy(LISTA,RESULTLIST)); (nonvar(LISTB),copy(LISTB,RESULTLIST));true. 
  member1(X,[H|_]) :- X==H,!. 
  member1(X,[_|T]) :- member1(X,T). 
  distinct([],[]). 
  distinct([H|T],C) :- member1(H,T),!, distinct(T,C). 
  distinct([H|T],[H|C]) :- distinct(T,C). 
  remv([], []).
  remv([H|T], N) :- var(H), !, remv(T, N).
  remv([H|T], [H|N]) :- remv(T, N).
  cleanList(LISTA, LISTB) :- nonvar(LISTA)->(remv(LISTA,LISTC),distinct(LISTC,LISTB));true.
  %atom chars(Atom,List)
  %element(Pos, List, Element) i
  %% split(L,N,L1,L2) :- the list L1 contains the first N elements
  split(L,0,[],L).
  split([X|Xs],N,[X|Ys],Zs) :- N > 0, N1 is N - 1, split(Xs,N1,Ys,Zs).
  indexOfElement([Element|_], Element, 0):- !.
  indexOfElement([_|Tail], Element, Index):-
  indexOfElement(Tail, Element, Index1),
  !,
  Index is Index1+1.
 substringBefore(STRING1, STRING2, STRINGRESULT) :- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2), 
 substringBeforeList(STR1,STR2,STRINGRESULT,_). 
 substringBeforeList([],_,STRINGRESULT,_):-  STRINGRESULT = ''. 
 substringBeforeList([H|T], [H1|T1],STRINGRESULT,STRINGRESULTAUX):- H=H1 -> ( (var(STRINGRESULTAUX)-> STRINGRESULT = ''; atom_chars(STRINGRESULT,STRINGRESULTAUX)),!); addEndList(H,STRINGRESULTAUX,STRINGRESULTTEMP),substringBeforeList(T,[H1|T1],STRINGRESULT,STRINGRESULTTEMP),!.
 substringAfter(STRING1, STRING2, STRINGRESULT) :- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2),
 substringAfterList(STR1,STR2,STRINGRESULT).
 substringAfterList([],_,STRINGRESULT):-  STRINGRESULT = ''.
 substringAfterList([H|T], [H1|T1],STRINGRESULT):- H=H1 -> (copyList(T,STRINGRESULTLIST),atom_chars(STRINGRESULT,STRINGRESULTLIST),!);substringAfterList(T,[H1|T1],STRINGRESULT),!.
 normalizeSpace(TEXT,STRINGRESULT) :- atom_chars(TEXT,STR),
 normalizeSpaceList(STR,STRINGRESULT).
 normalizeSpaceList(STR,STRINGRESULT) :- normalizeSpaceList(STR,STRINGRESULT,TMPSTRINGRESULT), write(STRINGRESULT), atom_chars(TMPSTRINGRESULT,STRINGRESULT),!.
 normalizeSpaceList([H|T],STRINGRESULT,TMPSTRINGRESULT) :- \+ H=' ' -> (addEndList(H,TMPSTRINGRESULT,NEWTMP),normalizeSpaceList(T,STRINGRESULT,NEWTMP),!); normalizeSpaceList(T,STRINGRESULT,TMPSTRINGRESULT).
 normalizeSpaceList([],STRINGRESULT,TMPRESULTLIST).%var(TMPRESULTLIST) -> STRINGRESULT = []; STRINGRESULT = TMPRESULTLIST.
 contains(STRINGA, STRINGB) :- atom_chars(STRINGA,X), atom_chars(STRINGB,Y),
 containsListOrder(X,Y).
 containsListOrder([],_) :- false.
 containsListOrder([H|T], [H1|T1]) :- H=H1 -> (compare(T,T1),!);containsListOrder(T,[H1|T1]).
 startsWith(STRING1, STRING2) :- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2),
 startsWithList(STR1,STR2).
 startsWithList([],_):-  false,!.
 startsWithList(_,[]):-  true,!. 
 startsWithList([H|T], [H1|T1]):- H=H1 -> (startsWithList(T,T1)); false.
 endsWith(STRING1, STRING2) :- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2),
 endsWithList(STR1,STR2).
 endsWithList(_,[]):-  false,!.
 endsWithList([],_):-  false,!.
 endsWithList([H|T], [H1|T1]):- H=H1 -> ( compareList(T,T1),!);endsWithList(T,[H1|T1]).
 concat(STRINGINPUT,RESULT) :- tokenize(STRINGINPUT,',',TOKENIZERESULT),concatList(TOKENIZERESULT,TMPRESULT,RESULT).
  concatList([],TMPRESULT,RESULT) :- RESULT = TMPRESULT.
  concatList([H|T],TMPRESULT,RESULT):-  (nonvar(TMPRESULT)-> atom_concat(TMPRESULT,H,NEWTMPRESULT);NEWTMPRESULT = H),concatList(T,NEWTMPRESULT,RESULT),!.
 tokenize(STRING,TOKEN,RESULT) :- atom_chars(STRING,STR1),tokenizeList(STR1,TOKEN,TMPLIST,TMPRESULT,RESULTLIST),
   transformCharList(RESULTLIST, RESULTCHAR, RESULT).
 transformCharList([],RESULTCHAR,RESULT) :- RESULT = RESULTCHAR.
 transformCharList([H|T],RESULTCHAR,RESULT) :- atom_chars(STRING,H),addEndList(STRING,RESULTCHAR,NEWRESULTCHAR), transformCharList(T,NEWRESULTCHAR,RESULT),!.
 tokenizeList([],TOKEN,TMPLIST,TMPRESULT,RESULT):- addEndList(TMPLIST,TMPRESULT,NEWRESULTTMP),RESULT = NEWRESULTTMP,!.
 tokenizeList([H|T],TOKEN,TMPLIST,TMPRESULT,RESULT) :- H = TOKEN -> (addEndList(TMPLIST,TMPRESULT,NEWRESULTTMP),tokenizeList(T,TOKEN,NEWTMPLIST,NEWRESULTTMP,RESULT),!) ;addEndList(H,TMPLIST,NEWTMPLIST), tokenizeList(T,TOKEN,NEWTMPLIST,TMPRESULT, RESULT),!.
 tokenize(STRING,TOKEN,RESULT) :- atom_chars(STRING,STR1),tokenizeList(STR1,TOKEN,TMPLIST,TMPRESULT,RESULTLIST), 
 transformCharList(RESULTLIST, RESULTCHAR, RESULT).
 stringLength(STRING,LENGTH) :- atom_chars(STRING,STR1),listSize(STR1,LENGTH).
 listSize([H|T],LENGTH) :- listSize([H|T],LENGTH,0).
 listSize([H|T],LENGTH,TMPLENGTH) :- NEWTMPLENGTH is TMPLENGTH +1, listSize(T,LENGTH,NEWTMPLENGTH).
 listSize([],LENGTH,TMPLENGTH) :-  LENGTH = TMPLENGTH,!.
 compareNumber(STRING1,STRING2,RESULT):- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2),compareNumberList(STR1,STR2,RESULT).
 compareNumberList([], [],NUMBER):- NUMBER = 0.
 compareNumberList([H|T], [H1|T1],NUMBER) :- H=H1 ->(compareNumberList(T,T1,NUMBER),!); (H@>H1->NUMBER = 1; NUMBER = -1).
 substring(STRING1,START,END,RESULT) :- atom_chars(STRING1,STR1),
   NCOUNT is 1, substringList(STR1,START,END,NCOUNT,RESULT).
 substringList([H|T],START,END,NCOUNT,RESULT) :- START = NCOUNT -> (copyNList([H|T],RESULTAUX,END), atom_chars(RESULT,RESULTAUX),! ); (TMPNCOUNT is NCOUNT +1, substringList(T,START,END,TMPNCOUNT,RESULT)).
 substring(STRING1,START,RESULT) :- atom_chars(STRING1,STR1),
    NCOUNT is 1, substringList(STR1,START,NCOUNT,RESULT).
 substringList([H|T],START,NCOUNT,RESULT) :- START = NCOUNT -> (copyNList([H|T],RESULTAUX,9999), atom_chars(RESULT,RESULTAUX),! ); (TMPNCOUNT is NCOUNT +1, substringList(T,START,TMPNCOUNT,RESULT)).
 copyNList( COPIEDLIST,RESULTLIST, SIZE) :- copyNList(COPIEDLIST,RESULTLIST,SIZE,0,TMPRESULTLIST).
 copyNList([H|T],RESULTLIST,SIZE,ACTUALSIZE,TMPRESULTLIST) :- SIZE = ACTUALSIZE -> (var(TMPRESULTLIST) -> RESULTLIST = []; RESULTLIST = TMPRESULTLIST); addEndList(H,TMPRESULTLIST,NEWTMP),TMPACTUALSIZE is ACTUALSIZE +1, copyNList(T,RESULTLIST,SIZE,TMPACTUALSIZE,NEWTMP).
 %copyNList([H|T],RESULTLIST,TMPRESULTLIST) :- addEndList(H,TMPRESULTLIST,NEWTMP), copyList(T,RESULTLIST,NEWTMP).
 copyNList([],RESULTLIST,SIZE,ACTUALSIZE,TMPRESULTLIST) :-  var(TMPRESULTLIST) -> RESULTLIST = []; RESULTLIST = TMPRESULTLIST.
 contains(STRING1, STRING2) :- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2),
 containsList(STR1,STR2). 
 containsList(_,[]) :- false.
 containsList([],_) :- false.
 containsList([H|T], [H1|T1]) :- H=H1->(compareList(T,T1),!);containsList(T, [H1|T1]). 
 compareList(_, []):- true.
 compareList([H|T], [H1|T1]) :- H=H1 ->(compareList(T,T1),!);false.
 compareList([],[]):- true,!.
 compareList([H|T], [H1|T1]):- H=H1 ->(compareList(T,T1));false.
 compare(_, []):- true.
 compare([], _):- false.
 compare([H|T], [H1|T1]) :- H=H1 ->(compare(T,T1)).
 myfloor(INPUT, OUTPUT):- TMPOUTPUT is floor(INPUT), OUTPUT = TMPOUTPUT.
 myceiling(INPUT, OUTPUT):-   num_atom(NINPUT,INPUT), TMPOUTPUT is ceiling(NINPUT), OUTPUT = TMPOUTPUT.
 myround(INPUT, OUTPUT):-  num_atom(NINPUT,INPUT), TMPOUTPUT is round(NINPUT), OUTPUT = TMPOUTPUT.
 sum(List, Sum) :-
 		    sum(List, 0, Sum).
 sum([], Accumulator, Accumulator).
 sum([Head|Tail], Accumulator, Result) :-
 	  num_atom(NHEAD,Head),  NewAccumulator is Accumulator + NHEAD,
 sum(Tail, NewAccumulator, Result). 
 %Copy one List to another 
 copyList( COPIEDLIST,RESULTLIST) :- copyList(COPIEDLIST,RESULTLIST,TMPRESULTLIST).
 copyList([H|T],RESULTLIST,TMPRESULTLIST) :- addEndList(H,TMPRESULTLIST,NEWTMP), copyList(T,RESULTLIST,NEWTMP).
 copyList([],RESULTLIST,TMPRESULTLIST) :-  var(TMPRESULTLIST) -> RESULTLIST = []; RESULTLIST = TMPRESULTLIST.
 %addEndList(X,L,L1)
 %adds element X to the end of the list L and returns L1
 addEndList(X,[],[X]).
 addEndList(X,[A|L],[A|L1]):- 
 addEndList(X,L,L1). 
 mynumber(INPUT, OUTPUT):- atom(INPUT)-> ( num_atom(NINPUT,INPUT), OUTPUT = NINPUT); OUTPUT = INPUT. 
 count(List, Count) :- 
 		count(List, 0, Count). 
 count([], Accumulator, Accumulator). 
 count([Head|Tail], Accumulator, Result) :- 
    NewAccumulator is Accumulator + 1, 
 count(Tail, NewAccumulator, Result). 
  minus([H|T1],L2,[H|L3]):- 
     not(member(H,L2)), 
     minus(T1,L2,L3). 
 minus([H|T1],L2,L3):- 
     member(H,L2), 
     minus(T1,L2,L3). 
 minus([],_,[]). 
 boolean(VARIN,BOOLOUT) :- nonvar(VARIN) -> BOOLOUT = true ; BOOLOUT = false. 
 not(VARIN,BOOLOUT) :- nonvar(VARIN) -> BOOLOUT = false ; (BOOLOUT = true). 
 quick_sort([X|Xs],Ys) :- 
 partition(Xs,X,Left,Right), 
   quick_sort(Left,Ls), 
   quick_sort(Right,Rs), 
   append(Ls,[X|Rs],Ys). 
 quick_sort([],[]). 
 partition([X|Xs],Y,[X|Ls],Rs) :- nonvar(X),nonvar(Y),X =< Y, partition(Xs,Y,Ls,Rs). 
 partition([X|Xs],Y,Ls,[X|Rs]) :- nonvar(X),nonvar(Y), 
   X > Y, partition(Xs,Y,Ls,Rs). 
 partition([],Y,[],[]). 
 append([],Ys,Ys). 
 append([X|Xs],Ys,[X|Zs]) :- append(Xs,Ys,Zs). 
 printnl(VAR):- print(VAR),print('\n'). 
 nlprint(VAR):- print('\n'),print(VAR). 
 listOfList([[H|_]|_]). 
 first_listOflist([],_). 
 first_listOflist([[H|_]|[]],[H]):- !. 
 first_listOflist([[H|_]|T],[H|T1]):- first_listOflist(T,T1). 
 following(LISTIN,LIST) :- listOfList(LISTIN) -> (first_listOflist(LISTIN,LIST));first_list(LISTIN,LIST). 
 first_list([Y|Tail],[Y]). 
 first_list([X],[X]). 
 last_listOflist([],_). 
 last_listOflist([[_|T]|[]],[H]):- last_list(T,H),!. 
 last_listOflist([[_|T]|T1],[H|T2]):- last_list(T,H),last_listOflist(T1,T2). 
 preceding(LISTIN,LIST) :- listOfList(LISTIN) -> (last_listOflist(LISTIN,LIST));last_list(LISTIN,X),LIST = [X]. 
 last_list([Y|Tail],LISTIN):-last_list(Tail,LISTIN). 
 last_list([X],X). 
