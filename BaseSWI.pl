 print_site(IDTAG) :- site(IDTAG), write('<site'),print_site_childs(IDTAG).
 print_site_childs(IDTAG):-write('>');site(IDTAG), findall(IDCHILD,(
regions(IDTAG,IDCHILD);categories(IDTAG,IDCHILD);catgraph(IDTAG,IDCHILD);people(IDTAG,IDCHILD);open_auctions(IDTAG,IDCHILD);closed_auctions(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_regions(IDTAG,IDCHILDSORTED);print_categories(IDTAG,IDCHILDSORTED);print_catgraph(IDTAG,IDCHILDSORTED);print_people(IDTAG,IDCHILDSORTED);print_open_auctions(IDTAG,IDCHILDSORTED);print_closed_auctions(IDTAG,IDCHILDSORTED));write('</site>'),printnl('').
 print_wild_card_site(IDTAG) :- print_site(IDTAG); site(IDTAG), print_wild_card_site_childs(IDTAG).
 print_wild_card_site_childs(IDTAG):-site(IDTAG), findall(IDCHILD,(
regions(IDTAG,IDCHILD);categories(IDTAG,IDCHILD);catgraph(IDTAG,IDCHILD);people(IDTAG,IDCHILD);open_auctions(IDTAG,IDCHILD);closed_auctions(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_regions(IDTAG,IDWILDCHILDSORTED);print_wild_card_categories(IDTAG,IDWILDCHILDSORTED);print_wild_card_catgraph(IDTAG,IDWILDCHILDSORTED);print_wild_card_people(IDTAG,IDWILDCHILDSORTED);print_wild_card_open_auctions(IDTAG,IDWILDCHILDSORTED);print_wild_card_closed_auctions(IDTAG,IDWILDCHILDSORTED)).
 print_regions(IDPARENT,IDTAG) :- regions(IDPARENT,IDTAG), write('<regions'),print_regions_childs(IDTAG).
 print_regions_childs(IDTAG):-write('>');regions(_, IDTAG), findall(IDCHILD,(
africa(IDTAG,IDCHILD);asia(IDTAG,IDCHILD);australia(IDTAG,IDCHILD);europe(IDTAG,IDCHILD);namerica(IDTAG,IDCHILD);samerica(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_africa(IDTAG,IDCHILDSORTED);print_asia(IDTAG,IDCHILDSORTED);print_australia(IDTAG,IDCHILDSORTED);print_europe(IDTAG,IDCHILDSORTED);print_namerica(IDTAG,IDCHILDSORTED);print_samerica(IDTAG,IDCHILDSORTED));write('</regions>'),printnl('').
 print_wild_card_regions(IDPARENT,IDTAG) :- print_regions(IDPARENT,IDTAG);regions(IDPARENT,IDTAG), print_wild_card_regions_childs(IDTAG).
 print_wild_card_regions_childs(IDTAG):-regions(_, IDTAG), findall(IDCHILD,(
africa(IDTAG,IDCHILD);asia(IDTAG,IDCHILD);australia(IDTAG,IDCHILD);europe(IDTAG,IDCHILD);namerica(IDTAG,IDCHILD);samerica(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_africa(IDTAG,IDWILDCHILDSORTED);print_wild_card_asia(IDTAG,IDWILDCHILDSORTED);print_wild_card_australia(IDTAG,IDWILDCHILDSORTED);print_wild_card_europe(IDTAG,IDWILDCHILDSORTED);print_wild_card_namerica(IDTAG,IDWILDCHILDSORTED);print_wild_card_samerica(IDTAG,IDWILDCHILDSORTED)).
 print_africa(IDPARENT,IDTAG) :- africa(IDPARENT,IDTAG), write('<africa'),print_africa_childs(IDTAG).
 print_africa_childs(IDTAG):-write('>');africa(_, IDTAG), findall(IDCHILD,(
item(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_item(IDTAG,IDCHILDSORTED));write('</africa>'),printnl('').
 print_wild_card_africa(IDPARENT,IDTAG) :- print_africa(IDPARENT,IDTAG);africa(IDPARENT,IDTAG), print_wild_card_africa_childs(IDTAG).
 print_wild_card_africa_childs(IDTAG):-africa(_, IDTAG), findall(IDCHILD,(
item(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_item(IDTAG,IDWILDCHILDSORTED)).
print_item_attribute_featured(IDPARENT,IDATTRIBUTE):-item_attribute_featured(IDPARENT,IDATTRIBUTE,VALUE),write(' featured="') , write(VALUE),write('" ').
print_item_attribute_id(IDPARENT,IDATTRIBUTE):-item_attribute_id(IDPARENT,IDATTRIBUTE,VALUE),write(' id="') , write(VALUE),write('" ').
 print_item(IDPARENT,IDTAG) :- item(IDPARENT,IDTAG), write('<item'),print_item_childs(IDTAG).
 print_item_childs(IDTAG):-item(_, IDTAG), findall(IDCHILD,(
item_attribute_featured(IDTAG,IDCHILD,_);item_attribute_id(IDTAG,IDCHILD,_) ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(
print_item_attribute_featured(IDTAG,IDATTRIBUTECHILDSORTED);print_item_attribute_id(IDTAG,IDATTRIBUTECHILDSORTED));write('>');item(_, IDTAG), findall(IDCHILD,(
location(IDTAG,IDCHILD,_);quantity(IDTAG,IDCHILD,_);name(IDTAG,IDCHILD,_);payment(IDTAG,IDCHILD,_);description(IDTAG,IDCHILD);shipping(IDTAG,IDCHILD,_);incategory(IDTAG,IDCHILD);mailbox(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_location(IDTAG,IDCHILDSORTED);print_quantity(IDTAG,IDCHILDSORTED);print_name(IDTAG,IDCHILDSORTED);print_payment(IDTAG,IDCHILDSORTED);print_description(IDTAG,IDCHILDSORTED);print_shipping(IDTAG,IDCHILDSORTED);print_incategory(IDTAG,IDCHILDSORTED);print_mailbox(IDTAG,IDCHILDSORTED));write('</item>'),printnl('').
 print_wild_card_item(IDPARENT,IDTAG) :- print_item(IDPARENT,IDTAG);item(IDPARENT,IDTAG), print_wild_card_item_childs(IDTAG).
 print_wild_card_item_childs(IDTAG):-item(_, IDTAG), findall(IDCHILD,(
location(IDTAG,IDCHILD,_);quantity(IDTAG,IDCHILD,_);name(IDTAG,IDCHILD,_);payment(IDTAG,IDCHILD,_);description(IDTAG,IDCHILD);shipping(IDTAG,IDCHILD,_);incategory(IDTAG,IDCHILD);mailbox(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_location(IDTAG,IDWILDCHILDSORTED);print_wild_card_quantity(IDTAG,IDWILDCHILDSORTED);print_wild_card_name(IDTAG,IDWILDCHILDSORTED);print_wild_card_payment(IDTAG,IDWILDCHILDSORTED);print_wild_card_description(IDTAG,IDWILDCHILDSORTED);print_wild_card_shipping(IDTAG,IDWILDCHILDSORTED);print_wild_card_incategory(IDTAG,IDWILDCHILDSORTED);print_wild_card_mailbox(IDTAG,IDWILDCHILDSORTED)).
print_location(IDPARENT,IDTAG):-location(_,IDTAG,VALUE),write('<location>') , write(VALUE),
write('</location>'),printnl('').
print_wild_card_location(IDPARENT,IDTAG):- nonvar(IDTAG), print_location(IDPARENT,IDTAG).
print_quantity(IDPARENT,IDTAG):-quantity(_,IDTAG,VALUE),write('<quantity>') , write(VALUE),
write('</quantity>'),printnl('').
print_wild_card_quantity(IDPARENT,IDTAG):- nonvar(IDTAG), print_quantity(IDPARENT,IDTAG).
print_name(IDPARENT,IDTAG):-name(_,IDTAG,VALUE),write('<name>') , write(VALUE),
write('</name>'),printnl('').
print_wild_card_name(IDPARENT,IDTAG):- nonvar(IDTAG), print_name(IDPARENT,IDTAG).
print_payment(IDPARENT,IDTAG):-payment(_,IDTAG,VALUE),write('<payment>') , write(VALUE),
write('</payment>'),printnl('').
print_wild_card_payment(IDPARENT,IDTAG):- nonvar(IDTAG), print_payment(IDPARENT,IDTAG).
 print_description(IDPARENT,IDTAG) :- description(IDPARENT,IDTAG), write('<description'),print_description_childs(IDTAG).
 print_description_childs(IDTAG):-write('>');description(_, IDTAG), findall(IDCHILD,(
parlist(IDTAG,IDCHILD);(text(IDTAG,IDCHILD); text(IDTAG,IDCHILD,_) ) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_parlist(IDTAG,IDCHILDSORTED);print_text(IDTAG,IDCHILDSORTED));write('</description>'),printnl('').
 print_wild_card_description(IDPARENT,IDTAG) :- print_description(IDPARENT,IDTAG);description(IDPARENT,IDTAG), print_wild_card_description_childs(IDTAG).
 print_wild_card_description_childs(IDTAG):-description(_, IDTAG), findall(IDCHILD,(
parlist(IDTAG,IDCHILD);(text(IDTAG,IDCHILD); text(IDTAG,IDCHILD,_) ) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_parlist(IDTAG,IDWILDCHILDSORTED);print_wild_card_text(IDTAG,IDWILDCHILDSORTED)).
 print_parlist(IDPARENT,IDTAG) :- parlist(IDPARENT,IDTAG), write('<parlist'),print_parlist_childs(IDTAG).
 print_parlist_childs(IDTAG):-write('>');parlist(_, IDTAG), findall(IDCHILD,(
listitem(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_listitem(IDTAG,IDCHILDSORTED));write('</parlist>'),printnl('').
 print_wild_card_parlist(IDPARENT,IDTAG) :- print_parlist(IDPARENT,IDTAG);parlist(IDPARENT,IDTAG), print_wild_card_parlist_childs(IDTAG).
 print_wild_card_parlist_childs(IDTAG):-parlist(_, IDTAG), findall(IDCHILD,(
listitem(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_listitem(IDTAG,IDWILDCHILDSORTED)).
 print_listitem(IDPARENT,IDTAG) :- listitem(IDPARENT,IDTAG), write('<listitem'),print_listitem_childs(IDTAG).
 print_listitem_childs(IDTAG):-write('>');listitem(_, IDTAG), findall(IDCHILD,(
parlist(IDTAG,IDCHILD);(text(IDTAG,IDCHILD); text(IDTAG,IDCHILD,_) ) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_parlist(IDTAG,IDCHILDSORTED);print_text(IDTAG,IDCHILDSORTED));write('</listitem>'),printnl('').
 print_wild_card_listitem(IDPARENT,IDTAG) :- print_listitem(IDPARENT,IDTAG);listitem(IDPARENT,IDTAG), print_wild_card_listitem_childs(IDTAG).
 print_wild_card_listitem_childs(IDTAG):-listitem(_, IDTAG), findall(IDCHILD,(
parlist(IDTAG,IDCHILD);(text(IDTAG,IDCHILD); text(IDTAG,IDCHILD,_) ) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_parlist(IDTAG,IDWILDCHILDSORTED);print_wild_card_text(IDTAG,IDWILDCHILDSORTED)).
print_text(IDPARENT,IDTAG):- var(IDTAG),(findall(IDORDER,(text(IDPARENT,IDORDER);text(IDPARENT,IDORDER,_)),LIST)
 ,quick_sort(LIST,LISTSORTED),member(IDSORTED,LISTSORTED),
(text(IDPARENT,IDSORTED);text(IDPARENT,IDSORTED,_)), write('<text'), 
 print_text_childs(IDSORTED));nonvar(IDTAG),(text(IDPARENT,IDTAG);text(IDPARENT,IDTAG,_)),
 write('<text'),print_text_childs(IDTAG).
 print_text_childs(IDTAG) :- write('>');(text(_,IDTAG)) , findall(IDCHILD,( 
(bold(IDTAG,IDCHILD); bold(IDTAG,IDCHILD,_) );(emph(IDTAG,IDCHILD); emph(IDTAG,IDCHILD,_) );(keyword(IDTAG,IDCHILD); keyword(IDTAG,IDCHILD,_) ) ;xmlMixedElement(IDTAG,IDCHILD,_) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED), (print_bold(IDTAG,IDCHILDSORTED);print_emph(IDTAG,IDCHILDSORTED);print_keyword(IDTAG,IDCHILDSORTED);print_xmlMixedElement(IDCHILDSORTED));(text(_,IDTAG,VALUE),write(VALUE));write('</text>'),printnl('').
print_wild_card_text(IDPARENT,IDTAG):- print_text(IDPARENT,IDTAG) ; var(IDTAG),(findall(IDORDER,(text(IDPARENT,IDORDER);text(IDPARENT,IDORDER,_)),LIST)
 ,quick_sort(LIST,LISTSORTED),member(IDSORTED,LISTSORTED),
(text(IDPARENT,IDSORTED);text(IDPARENT,IDSORTED,_)),  print_wild_card_text_childs(IDSORTED));nonvar(IDTAG),(text(IDPARENT,IDTAG);text(IDPARENT,IDTAG,_)),
print_wild_card_text_childs(IDTAG).
 print_wild_card_text_childs(IDTAG) :- (text(_,IDTAG)) , findall(IDCHILD,( 
(bold(IDTAG,IDCHILD); bold(IDTAG,IDCHILD,_) );(emph(IDTAG,IDCHILD); emph(IDTAG,IDCHILD,_) );(keyword(IDTAG,IDCHILD); keyword(IDTAG,IDCHILD,_) ) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED), (print_bold(IDTAG,IDCHILDSORTED);print_emph(IDTAG,IDCHILDSORTED);print_keyword(IDTAG,IDCHILDSORTED)); findall(IDCHILD,( 
(bold(IDTAG,IDCHILD); bold(IDTAG,IDCHILD,_) );(emph(IDTAG,IDCHILD); emph(IDTAG,IDCHILD,_) );(keyword(IDTAG,IDCHILD); keyword(IDTAG,IDCHILD,_) ) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED), (print_wild_card_bold(IDTAG,IDWILDCHILDSORTED);print_wild_card_emph(IDTAG,IDWILDCHILDSORTED);print_wild_card_keyword(IDTAG,IDWILDCHILDSORTED)).
print_bold(IDPARENT,IDTAG):- var(IDTAG),(findall(IDORDER,(bold(IDPARENT,IDORDER);bold(IDPARENT,IDORDER,_)),LIST)
 ,quick_sort(LIST,LISTSORTED),member(IDSORTED,LISTSORTED),
(bold(IDPARENT,IDSORTED);bold(IDPARENT,IDSORTED,_)), write('<bold'), 
 print_bold_childs(IDSORTED));nonvar(IDTAG),(bold(IDPARENT,IDTAG);bold(IDPARENT,IDTAG,_)),
 write('<bold'),print_bold_childs(IDTAG).
 print_bold_childs(IDTAG) :- write('>');(bold(_,IDTAG)) , findall(IDCHILD,( 
(emph(IDTAG,IDCHILD); emph(IDTAG,IDCHILD,_) );(keyword(IDTAG,IDCHILD); keyword(IDTAG,IDCHILD,_) ) ;xmlMixedElement(IDTAG,IDCHILD,_) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED), (print_emph(IDTAG,IDCHILDSORTED);print_keyword(IDTAG,IDCHILDSORTED);print_xmlMixedElement(IDCHILDSORTED));(bold(_,IDTAG,VALUE),write(VALUE));write('</bold>'),printnl('').
print_wild_card_bold(IDPARENT,IDTAG):- print_bold(IDPARENT,IDTAG) ; var(IDTAG),(findall(IDORDER,(bold(IDPARENT,IDORDER);bold(IDPARENT,IDORDER,_)),LIST)
 ,quick_sort(LIST,LISTSORTED),member(IDSORTED,LISTSORTED),
(bold(IDPARENT,IDSORTED);bold(IDPARENT,IDSORTED,_)),  print_wild_card_bold_childs(IDSORTED));nonvar(IDTAG),(bold(IDPARENT,IDTAG);bold(IDPARENT,IDTAG,_)),
print_wild_card_bold_childs(IDTAG).
 print_wild_card_bold_childs(IDTAG) :- (bold(_,IDTAG)) , findall(IDCHILD,( 
(emph(IDTAG,IDCHILD); emph(IDTAG,IDCHILD,_) );(keyword(IDTAG,IDCHILD); keyword(IDTAG,IDCHILD,_) ) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED), (print_emph(IDTAG,IDCHILDSORTED);print_keyword(IDTAG,IDCHILDSORTED)); findall(IDCHILD,( 
(emph(IDTAG,IDCHILD); emph(IDTAG,IDCHILD,_) );(keyword(IDTAG,IDCHILD); keyword(IDTAG,IDCHILD,_) ) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED), (print_wild_card_emph(IDTAG,IDWILDCHILDSORTED);print_wild_card_keyword(IDTAG,IDWILDCHILDSORTED)).
print_emph(IDPARENT,IDTAG):- var(IDTAG),(findall(IDORDER,(emph(IDPARENT,IDORDER);emph(IDPARENT,IDORDER,_)),LIST)
 ,quick_sort(LIST,LISTSORTED),member(IDSORTED,LISTSORTED),
(emph(IDPARENT,IDSORTED);emph(IDPARENT,IDSORTED,_)), write('<emph'), 
 print_emph_childs(IDSORTED));nonvar(IDTAG),(emph(IDPARENT,IDTAG);emph(IDPARENT,IDTAG,_)),
 write('<emph'),print_emph_childs(IDTAG).
 print_emph_childs(IDTAG) :- write('>');(emph(_,IDTAG)) , findall(IDCHILD,( 
(bold(IDTAG,IDCHILD); bold(IDTAG,IDCHILD,_) );(keyword(IDTAG,IDCHILD); keyword(IDTAG,IDCHILD,_) ) ;xmlMixedElement(IDTAG,IDCHILD,_) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED), (print_bold(IDTAG,IDCHILDSORTED);print_keyword(IDTAG,IDCHILDSORTED);print_xmlMixedElement(IDCHILDSORTED));(emph(_,IDTAG,VALUE),write(VALUE));write('</emph>'),printnl('').
print_wild_card_emph(IDPARENT,IDTAG):- print_emph(IDPARENT,IDTAG) ; var(IDTAG),(findall(IDORDER,(emph(IDPARENT,IDORDER);emph(IDPARENT,IDORDER,_)),LIST)
 ,quick_sort(LIST,LISTSORTED),member(IDSORTED,LISTSORTED),
(emph(IDPARENT,IDSORTED);emph(IDPARENT,IDSORTED,_)),  print_wild_card_emph_childs(IDSORTED));nonvar(IDTAG),(emph(IDPARENT,IDTAG);emph(IDPARENT,IDTAG,_)),
print_wild_card_emph_childs(IDTAG).
 print_wild_card_emph_childs(IDTAG) :- (emph(_,IDTAG)) , findall(IDCHILD,( 
(bold(IDTAG,IDCHILD); bold(IDTAG,IDCHILD,_) );(keyword(IDTAG,IDCHILD); keyword(IDTAG,IDCHILD,_) ) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED), (print_bold(IDTAG,IDCHILDSORTED);print_keyword(IDTAG,IDCHILDSORTED)); findall(IDCHILD,( 
(bold(IDTAG,IDCHILD); bold(IDTAG,IDCHILD,_) );(keyword(IDTAG,IDCHILD); keyword(IDTAG,IDCHILD,_) ) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED), (print_wild_card_bold(IDTAG,IDWILDCHILDSORTED);print_wild_card_keyword(IDTAG,IDWILDCHILDSORTED)).
print_keyword(IDPARENT,IDTAG):- var(IDTAG),(findall(IDORDER,(keyword(IDPARENT,IDORDER);keyword(IDPARENT,IDORDER,_)),LIST)
 ,quick_sort(LIST,LISTSORTED),member(IDSORTED,LISTSORTED),
(keyword(IDPARENT,IDSORTED);keyword(IDPARENT,IDSORTED,_)), write('<keyword'), 
 print_keyword_childs(IDSORTED));nonvar(IDTAG),(keyword(IDPARENT,IDTAG);keyword(IDPARENT,IDTAG,_)),
 write('<keyword'),print_keyword_childs(IDTAG).
 print_keyword_childs(IDTAG) :- write('>');(keyword(_,IDTAG)) , findall(IDCHILD,( 
(bold(IDTAG,IDCHILD); bold(IDTAG,IDCHILD,_) );(emph(IDTAG,IDCHILD); emph(IDTAG,IDCHILD,_) ) ;xmlMixedElement(IDTAG,IDCHILD,_) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED), (print_bold(IDTAG,IDCHILDSORTED);print_emph(IDTAG,IDCHILDSORTED);print_xmlMixedElement(IDCHILDSORTED));(keyword(_,IDTAG,VALUE),write(VALUE));write('</keyword>'),printnl('').
print_wild_card_keyword(IDPARENT,IDTAG):- print_keyword(IDPARENT,IDTAG) ; var(IDTAG),(findall(IDORDER,(keyword(IDPARENT,IDORDER);keyword(IDPARENT,IDORDER,_)),LIST)
 ,quick_sort(LIST,LISTSORTED),member(IDSORTED,LISTSORTED),
(keyword(IDPARENT,IDSORTED);keyword(IDPARENT,IDSORTED,_)),  print_wild_card_keyword_childs(IDSORTED));nonvar(IDTAG),(keyword(IDPARENT,IDTAG);keyword(IDPARENT,IDTAG,_)),
print_wild_card_keyword_childs(IDTAG).
 print_wild_card_keyword_childs(IDTAG) :- (keyword(_,IDTAG)) , findall(IDCHILD,( 
(bold(IDTAG,IDCHILD); bold(IDTAG,IDCHILD,_) );(emph(IDTAG,IDCHILD); emph(IDTAG,IDCHILD,_) ) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED), (print_bold(IDTAG,IDCHILDSORTED);print_emph(IDTAG,IDCHILDSORTED)); findall(IDCHILD,( 
(bold(IDTAG,IDCHILD); bold(IDTAG,IDCHILD,_) );(emph(IDTAG,IDCHILD); emph(IDTAG,IDCHILD,_) ) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED), (print_wild_card_bold(IDTAG,IDWILDCHILDSORTED);print_wild_card_emph(IDTAG,IDWILDCHILDSORTED)).
print_shipping(IDPARENT,IDTAG):-shipping(_,IDTAG,VALUE),write('<shipping>') , write(VALUE),
write('</shipping>'),printnl('').
print_wild_card_shipping(IDPARENT,IDTAG):- nonvar(IDTAG), print_shipping(IDPARENT,IDTAG).
print_incategory_attribute_category(IDPARENT,IDATTRIBUTE):-incategory_attribute_category(IDPARENT,IDATTRIBUTE,VALUE),write(' category="') , write(VALUE),write('" ').
 print_incategory(IDPARENT,IDTAG) :- incategory(IDPARENT,IDTAG), write('<incategory'),print_incategory_childs(IDTAG).
 print_incategory_childs(IDTAG):-incategory(_, IDTAG), findall(IDCHILD,(
incategory_attribute_category(IDTAG,IDCHILD,_) ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(
print_incategory_attribute_category(IDTAG,IDATTRIBUTECHILDSORTED));write('>');write('</incategory>'),printnl('').
 print_wild_card_incategory(IDPARENT,IDTAG) :- print_incategory(IDPARENT,IDTAG);incategory(IDPARENT,IDTAG), print_wild_card_incategory_childs(IDTAG).
 print_wild_card_incategory_childs(IDTAG):-incategory(_, IDTAG).
 print_mailbox(IDPARENT,IDTAG) :- mailbox(IDPARENT,IDTAG), write('<mailbox'),print_mailbox_childs(IDTAG).
 print_mailbox_childs(IDTAG):-write('>');mailbox(_, IDTAG), findall(IDCHILD,(
mail(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_mail(IDTAG,IDCHILDSORTED));write('</mailbox>'),printnl('').
 print_wild_card_mailbox(IDPARENT,IDTAG) :- print_mailbox(IDPARENT,IDTAG);mailbox(IDPARENT,IDTAG), print_wild_card_mailbox_childs(IDTAG).
 print_wild_card_mailbox_childs(IDTAG):-mailbox(_, IDTAG), findall(IDCHILD,(
mail(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_mail(IDTAG,IDWILDCHILDSORTED)).
 print_mail(IDPARENT,IDTAG) :- mail(IDPARENT,IDTAG), write('<mail'),print_mail_childs(IDTAG).
 print_mail_childs(IDTAG):-write('>');mail(_, IDTAG), findall(IDCHILD,(
from(IDTAG,IDCHILD,_);to(IDTAG,IDCHILD,_);date(IDTAG,IDCHILD,_);(text(IDTAG,IDCHILD); text(IDTAG,IDCHILD,_) ) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_from(IDTAG,IDCHILDSORTED);print_to(IDTAG,IDCHILDSORTED);print_date(IDTAG,IDCHILDSORTED);print_text(IDTAG,IDCHILDSORTED));write('</mail>'),printnl('').
 print_wild_card_mail(IDPARENT,IDTAG) :- print_mail(IDPARENT,IDTAG);mail(IDPARENT,IDTAG), print_wild_card_mail_childs(IDTAG).
 print_wild_card_mail_childs(IDTAG):-mail(_, IDTAG), findall(IDCHILD,(
from(IDTAG,IDCHILD,_);to(IDTAG,IDCHILD,_);date(IDTAG,IDCHILD,_);(text(IDTAG,IDCHILD); text(IDTAG,IDCHILD,_) ) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_from(IDTAG,IDWILDCHILDSORTED);print_wild_card_to(IDTAG,IDWILDCHILDSORTED);print_wild_card_date(IDTAG,IDWILDCHILDSORTED);print_wild_card_text(IDTAG,IDWILDCHILDSORTED)).
print_from(IDPARENT,IDTAG):-from(_,IDTAG,VALUE),write('<from>') , write(VALUE),
write('</from>'),printnl('').
print_wild_card_from(IDPARENT,IDTAG):- nonvar(IDTAG), print_from(IDPARENT,IDTAG).
print_to(IDPARENT,IDTAG):-to(_,IDTAG,VALUE),write('<to>') , write(VALUE),
write('</to>'),printnl('').
print_wild_card_to(IDPARENT,IDTAG):- nonvar(IDTAG), print_to(IDPARENT,IDTAG).
print_date(IDPARENT,IDTAG):-date(_,IDTAG,VALUE),write('<date>') , write(VALUE),
write('</date>'),printnl('').
print_wild_card_date(IDPARENT,IDTAG):- nonvar(IDTAG), print_date(IDPARENT,IDTAG).
 print_asia(IDPARENT,IDTAG) :- asia(IDPARENT,IDTAG), write('<asia'),print_asia_childs(IDTAG).
 print_asia_childs(IDTAG):-write('>');asia(_, IDTAG), findall(IDCHILD,(
item(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_item(IDTAG,IDCHILDSORTED));write('</asia>'),printnl('').
 print_wild_card_asia(IDPARENT,IDTAG) :- print_asia(IDPARENT,IDTAG);asia(IDPARENT,IDTAG), print_wild_card_asia_childs(IDTAG).
 print_wild_card_asia_childs(IDTAG):-asia(_, IDTAG), findall(IDCHILD,(
item(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_item(IDTAG,IDWILDCHILDSORTED)).
 print_australia(IDPARENT,IDTAG) :- australia(IDPARENT,IDTAG), write('<australia'),print_australia_childs(IDTAG).
 print_australia_childs(IDTAG):-write('>');australia(_, IDTAG), findall(IDCHILD,(
item(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_item(IDTAG,IDCHILDSORTED));write('</australia>'),printnl('').
 print_wild_card_australia(IDPARENT,IDTAG) :- print_australia(IDPARENT,IDTAG);australia(IDPARENT,IDTAG), print_wild_card_australia_childs(IDTAG).
 print_wild_card_australia_childs(IDTAG):-australia(_, IDTAG), findall(IDCHILD,(
item(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_item(IDTAG,IDWILDCHILDSORTED)).
 print_europe(IDPARENT,IDTAG) :- europe(IDPARENT,IDTAG), write('<europe'),print_europe_childs(IDTAG).
 print_europe_childs(IDTAG):-write('>');europe(_, IDTAG), findall(IDCHILD,(
item(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_item(IDTAG,IDCHILDSORTED));write('</europe>'),printnl('').
 print_wild_card_europe(IDPARENT,IDTAG) :- print_europe(IDPARENT,IDTAG);europe(IDPARENT,IDTAG), print_wild_card_europe_childs(IDTAG).
 print_wild_card_europe_childs(IDTAG):-europe(_, IDTAG), findall(IDCHILD,(
item(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_item(IDTAG,IDWILDCHILDSORTED)).
 print_namerica(IDPARENT,IDTAG) :- namerica(IDPARENT,IDTAG), write('<namerica'),print_namerica_childs(IDTAG).
 print_namerica_childs(IDTAG):-write('>');namerica(_, IDTAG), findall(IDCHILD,(
item(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_item(IDTAG,IDCHILDSORTED));write('</namerica>'),printnl('').
 print_wild_card_namerica(IDPARENT,IDTAG) :- print_namerica(IDPARENT,IDTAG);namerica(IDPARENT,IDTAG), print_wild_card_namerica_childs(IDTAG).
 print_wild_card_namerica_childs(IDTAG):-namerica(_, IDTAG), findall(IDCHILD,(
item(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_item(IDTAG,IDWILDCHILDSORTED)).
 print_samerica(IDPARENT,IDTAG) :- samerica(IDPARENT,IDTAG), write('<samerica'),print_samerica_childs(IDTAG).
 print_samerica_childs(IDTAG):-write('>');samerica(_, IDTAG), findall(IDCHILD,(
item(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_item(IDTAG,IDCHILDSORTED));write('</samerica>'),printnl('').
 print_wild_card_samerica(IDPARENT,IDTAG) :- print_samerica(IDPARENT,IDTAG);samerica(IDPARENT,IDTAG), print_wild_card_samerica_childs(IDTAG).
 print_wild_card_samerica_childs(IDTAG):-samerica(_, IDTAG), findall(IDCHILD,(
item(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_item(IDTAG,IDWILDCHILDSORTED)).
 print_categories(IDPARENT,IDTAG) :- categories(IDPARENT,IDTAG), write('<categories'),print_categories_childs(IDTAG).
 print_categories_childs(IDTAG):-write('>');categories(_, IDTAG), findall(IDCHILD,(
category(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_category(IDTAG,IDCHILDSORTED));write('</categories>'),printnl('').
 print_wild_card_categories(IDPARENT,IDTAG) :- print_categories(IDPARENT,IDTAG);categories(IDPARENT,IDTAG), print_wild_card_categories_childs(IDTAG).
 print_wild_card_categories_childs(IDTAG):-categories(_, IDTAG), findall(IDCHILD,(
category(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_category(IDTAG,IDWILDCHILDSORTED)).
print_category_attribute_id(IDPARENT,IDATTRIBUTE):-category_attribute_id(IDPARENT,IDATTRIBUTE,VALUE),write(' id="') , write(VALUE),write('" ').
 print_category(IDPARENT,IDTAG) :- category(IDPARENT,IDTAG), write('<category'),print_category_childs(IDTAG).
 print_category_childs(IDTAG):-category(_, IDTAG), findall(IDCHILD,(
category_attribute_id(IDTAG,IDCHILD,_) ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(
print_category_attribute_id(IDTAG,IDATTRIBUTECHILDSORTED));write('>');category(_, IDTAG), findall(IDCHILD,(
name(IDTAG,IDCHILD,_);description(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_name(IDTAG,IDCHILDSORTED);print_description(IDTAG,IDCHILDSORTED));write('</category>'),printnl('').
 print_wild_card_category(IDPARENT,IDTAG) :- print_category(IDPARENT,IDTAG);category(IDPARENT,IDTAG), print_wild_card_category_childs(IDTAG).
 print_wild_card_category_childs(IDTAG):-category(_, IDTAG), findall(IDCHILD,(
name(IDTAG,IDCHILD,_);description(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_name(IDTAG,IDWILDCHILDSORTED);print_wild_card_description(IDTAG,IDWILDCHILDSORTED)).
 print_catgraph(IDPARENT,IDTAG) :- catgraph(IDPARENT,IDTAG), write('<catgraph'),print_catgraph_childs(IDTAG).
 print_catgraph_childs(IDTAG):-write('>');catgraph(_, IDTAG), findall(IDCHILD,(
edge(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_edge(IDTAG,IDCHILDSORTED));write('</catgraph>'),printnl('').
 print_wild_card_catgraph(IDPARENT,IDTAG) :- print_catgraph(IDPARENT,IDTAG);catgraph(IDPARENT,IDTAG), print_wild_card_catgraph_childs(IDTAG).
 print_wild_card_catgraph_childs(IDTAG):-catgraph(_, IDTAG), findall(IDCHILD,(
edge(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_edge(IDTAG,IDWILDCHILDSORTED)).
print_edge_attribute_from(IDPARENT,IDATTRIBUTE):-edge_attribute_from(IDPARENT,IDATTRIBUTE,VALUE),write(' from="') , write(VALUE),write('" ').
print_edge_attribute_to(IDPARENT,IDATTRIBUTE):-edge_attribute_to(IDPARENT,IDATTRIBUTE,VALUE),write(' to="') , write(VALUE),write('" ').
 print_edge(IDPARENT,IDTAG) :- edge(IDPARENT,IDTAG), write('<edge'),print_edge_childs(IDTAG).
 print_edge_childs(IDTAG):-edge(_, IDTAG), findall(IDCHILD,(
edge_attribute_from(IDTAG,IDCHILD,_);edge_attribute_to(IDTAG,IDCHILD,_) ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(
print_edge_attribute_from(IDTAG,IDATTRIBUTECHILDSORTED);print_edge_attribute_to(IDTAG,IDATTRIBUTECHILDSORTED));write('>');write('</edge>'),printnl('').
 print_wild_card_edge(IDPARENT,IDTAG) :- print_edge(IDPARENT,IDTAG);edge(IDPARENT,IDTAG), print_wild_card_edge_childs(IDTAG).
 print_wild_card_edge_childs(IDTAG):-edge(_, IDTAG).
 print_people(IDPARENT,IDTAG) :- people(IDPARENT,IDTAG), write('<people'),print_people_childs(IDTAG).
 print_people_childs(IDTAG):-write('>');people(_, IDTAG), findall(IDCHILD,(
person(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_person(IDTAG,IDCHILDSORTED));write('</people>'),printnl('').
 print_wild_card_people(IDPARENT,IDTAG) :- print_people(IDPARENT,IDTAG);people(IDPARENT,IDTAG), print_wild_card_people_childs(IDTAG).
 print_wild_card_people_childs(IDTAG):-people(_, IDTAG), findall(IDCHILD,(
person(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_person(IDTAG,IDWILDCHILDSORTED)).
print_person_attribute_id(IDPARENT,IDATTRIBUTE):-person_attribute_id(IDPARENT,IDATTRIBUTE,VALUE),write(' id="') , write(VALUE),write('" ').
 print_person(IDPARENT,IDTAG) :- person(IDPARENT,IDTAG), write('<person'),print_person_childs(IDTAG).
 print_person_childs(IDTAG):-person(_, IDTAG), findall(IDCHILD,(
person_attribute_id(IDTAG,IDCHILD,_) ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(
print_person_attribute_id(IDTAG,IDATTRIBUTECHILDSORTED));write('>');person(_, IDTAG), findall(IDCHILD,(
name(IDTAG,IDCHILD,_);emailaddress(IDTAG,IDCHILD,_);phone(IDTAG,IDCHILD,_);address(IDTAG,IDCHILD);homepage(IDTAG,IDCHILD,_);creditcard(IDTAG,IDCHILD,_);profile(IDTAG,IDCHILD);watches(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_name(IDTAG,IDCHILDSORTED);print_emailaddress(IDTAG,IDCHILDSORTED);print_phone(IDTAG,IDCHILDSORTED);print_address(IDTAG,IDCHILDSORTED);print_homepage(IDTAG,IDCHILDSORTED);print_creditcard(IDTAG,IDCHILDSORTED);print_profile(IDTAG,IDCHILDSORTED);print_watches(IDTAG,IDCHILDSORTED));write('</person>'),printnl('').
 print_wild_card_person(IDPARENT,IDTAG) :- print_person(IDPARENT,IDTAG);person(IDPARENT,IDTAG), print_wild_card_person_childs(IDTAG).
 print_wild_card_person_childs(IDTAG):-person(_, IDTAG), findall(IDCHILD,(
name(IDTAG,IDCHILD,_);emailaddress(IDTAG,IDCHILD,_);phone(IDTAG,IDCHILD,_);address(IDTAG,IDCHILD);homepage(IDTAG,IDCHILD,_);creditcard(IDTAG,IDCHILD,_);profile(IDTAG,IDCHILD);watches(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_name(IDTAG,IDWILDCHILDSORTED);print_wild_card_emailaddress(IDTAG,IDWILDCHILDSORTED);print_wild_card_phone(IDTAG,IDWILDCHILDSORTED);print_wild_card_address(IDTAG,IDWILDCHILDSORTED);print_wild_card_homepage(IDTAG,IDWILDCHILDSORTED);print_wild_card_creditcard(IDTAG,IDWILDCHILDSORTED);print_wild_card_profile(IDTAG,IDWILDCHILDSORTED);print_wild_card_watches(IDTAG,IDWILDCHILDSORTED)).
print_emailaddress(IDPARENT,IDTAG):-emailaddress(_,IDTAG,VALUE),write('<emailaddress>') , write(VALUE),
write('</emailaddress>'),printnl('').
print_wild_card_emailaddress(IDPARENT,IDTAG):- nonvar(IDTAG), print_emailaddress(IDPARENT,IDTAG).
print_phone(IDPARENT,IDTAG):-phone(_,IDTAG,VALUE),write('<phone>') , write(VALUE),
write('</phone>'),printnl('').
print_wild_card_phone(IDPARENT,IDTAG):- nonvar(IDTAG), print_phone(IDPARENT,IDTAG).
 print_address(IDPARENT,IDTAG) :- address(IDPARENT,IDTAG), write('<address'),print_address_childs(IDTAG).
 print_address_childs(IDTAG):-write('>');address(_, IDTAG), findall(IDCHILD,(
street(IDTAG,IDCHILD,_);city(IDTAG,IDCHILD,_);country(IDTAG,IDCHILD,_);province(IDTAG,IDCHILD,_);zipcode(IDTAG,IDCHILD,_) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_street(IDTAG,IDCHILDSORTED);print_city(IDTAG,IDCHILDSORTED);print_country(IDTAG,IDCHILDSORTED);print_province(IDTAG,IDCHILDSORTED);print_zipcode(IDTAG,IDCHILDSORTED));write('</address>'),printnl('').
 print_wild_card_address(IDPARENT,IDTAG) :- print_address(IDPARENT,IDTAG);address(IDPARENT,IDTAG), print_wild_card_address_childs(IDTAG).
 print_wild_card_address_childs(IDTAG):-address(_, IDTAG), findall(IDCHILD,(
street(IDTAG,IDCHILD,_);city(IDTAG,IDCHILD,_);country(IDTAG,IDCHILD,_);province(IDTAG,IDCHILD,_);zipcode(IDTAG,IDCHILD,_) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_street(IDTAG,IDWILDCHILDSORTED);print_wild_card_city(IDTAG,IDWILDCHILDSORTED);print_wild_card_country(IDTAG,IDWILDCHILDSORTED);print_wild_card_province(IDTAG,IDWILDCHILDSORTED);print_wild_card_zipcode(IDTAG,IDWILDCHILDSORTED)).
print_street(IDPARENT,IDTAG):-street(_,IDTAG,VALUE),write('<street>') , write(VALUE),
write('</street>'),printnl('').
print_wild_card_street(IDPARENT,IDTAG):- nonvar(IDTAG), print_street(IDPARENT,IDTAG).
print_city(IDPARENT,IDTAG):-city(_,IDTAG,VALUE),write('<city>') , write(VALUE),
write('</city>'),printnl('').
print_wild_card_city(IDPARENT,IDTAG):- nonvar(IDTAG), print_city(IDPARENT,IDTAG).
print_country(IDPARENT,IDTAG):-country(_,IDTAG,VALUE),write('<country>') , write(VALUE),
write('</country>'),printnl('').
print_wild_card_country(IDPARENT,IDTAG):- nonvar(IDTAG), print_country(IDPARENT,IDTAG).
print_province(IDPARENT,IDTAG):-province(_,IDTAG,VALUE),write('<province>') , write(VALUE),
write('</province>'),printnl('').
print_wild_card_province(IDPARENT,IDTAG):- nonvar(IDTAG), print_province(IDPARENT,IDTAG).
print_zipcode(IDPARENT,IDTAG):-zipcode(_,IDTAG,VALUE),write('<zipcode>') , write(VALUE),
write('</zipcode>'),printnl('').
print_wild_card_zipcode(IDPARENT,IDTAG):- nonvar(IDTAG), print_zipcode(IDPARENT,IDTAG).
print_homepage(IDPARENT,IDTAG):-homepage(_,IDTAG,VALUE),write('<homepage>') , write(VALUE),
write('</homepage>'),printnl('').
print_wild_card_homepage(IDPARENT,IDTAG):- nonvar(IDTAG), print_homepage(IDPARENT,IDTAG).
print_creditcard(IDPARENT,IDTAG):-creditcard(_,IDTAG,VALUE),write('<creditcard>') , write(VALUE),
write('</creditcard>'),printnl('').
print_wild_card_creditcard(IDPARENT,IDTAG):- nonvar(IDTAG), print_creditcard(IDPARENT,IDTAG).
print_profile_attribute_income(IDPARENT,IDATTRIBUTE):-profile_attribute_income(IDPARENT,IDATTRIBUTE,VALUE),write(' income="') , write(VALUE),write('" ').
 print_profile(IDPARENT,IDTAG) :- profile(IDPARENT,IDTAG), write('<profile'),print_profile_childs(IDTAG).
 print_profile_childs(IDTAG):-profile(_, IDTAG), findall(IDCHILD,(
profile_attribute_income(IDTAG,IDCHILD,_) ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(
print_profile_attribute_income(IDTAG,IDATTRIBUTECHILDSORTED));write('>');profile(_, IDTAG), findall(IDCHILD,(
interest(IDTAG,IDCHILD);education(IDTAG,IDCHILD,_);gender(IDTAG,IDCHILD,_);business(IDTAG,IDCHILD,_);age(IDTAG,IDCHILD,_) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_interest(IDTAG,IDCHILDSORTED);print_education(IDTAG,IDCHILDSORTED);print_gender(IDTAG,IDCHILDSORTED);print_business(IDTAG,IDCHILDSORTED);print_age(IDTAG,IDCHILDSORTED));write('</profile>'),printnl('').
 print_wild_card_profile(IDPARENT,IDTAG) :- print_profile(IDPARENT,IDTAG);profile(IDPARENT,IDTAG), print_wild_card_profile_childs(IDTAG).
 print_wild_card_profile_childs(IDTAG):-profile(_, IDTAG), findall(IDCHILD,(
interest(IDTAG,IDCHILD);education(IDTAG,IDCHILD,_);gender(IDTAG,IDCHILD,_);business(IDTAG,IDCHILD,_);age(IDTAG,IDCHILD,_) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_interest(IDTAG,IDWILDCHILDSORTED);print_wild_card_education(IDTAG,IDWILDCHILDSORTED);print_wild_card_gender(IDTAG,IDWILDCHILDSORTED);print_wild_card_business(IDTAG,IDWILDCHILDSORTED);print_wild_card_age(IDTAG,IDWILDCHILDSORTED)).
print_interest_attribute_category(IDPARENT,IDATTRIBUTE):-interest_attribute_category(IDPARENT,IDATTRIBUTE,VALUE),write(' category="') , write(VALUE),write('" ').
 print_interest(IDPARENT,IDTAG) :- interest(IDPARENT,IDTAG), write('<interest'),print_interest_childs(IDTAG).
 print_interest_childs(IDTAG):-interest(_, IDTAG), findall(IDCHILD,(
interest_attribute_category(IDTAG,IDCHILD,_) ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(
print_interest_attribute_category(IDTAG,IDATTRIBUTECHILDSORTED));write('>');write('</interest>'),printnl('').
 print_wild_card_interest(IDPARENT,IDTAG) :- print_interest(IDPARENT,IDTAG);interest(IDPARENT,IDTAG), print_wild_card_interest_childs(IDTAG).
 print_wild_card_interest_childs(IDTAG):-interest(_, IDTAG).
print_education(IDPARENT,IDTAG):-education(_,IDTAG,VALUE),write('<education>') , write(VALUE),
write('</education>'),printnl('').
print_wild_card_education(IDPARENT,IDTAG):- nonvar(IDTAG), print_education(IDPARENT,IDTAG).
print_gender(IDPARENT,IDTAG):-gender(_,IDTAG,VALUE),write('<gender>') , write(VALUE),
write('</gender>'),printnl('').
print_wild_card_gender(IDPARENT,IDTAG):- nonvar(IDTAG), print_gender(IDPARENT,IDTAG).
print_business(IDPARENT,IDTAG):-business(_,IDTAG,VALUE),write('<business>') , write(VALUE),
write('</business>'),printnl('').
print_wild_card_business(IDPARENT,IDTAG):- nonvar(IDTAG), print_business(IDPARENT,IDTAG).
print_age(IDPARENT,IDTAG):-age(_,IDTAG,VALUE),write('<age>') , write(VALUE),
write('</age>'),printnl('').
print_wild_card_age(IDPARENT,IDTAG):- nonvar(IDTAG), print_age(IDPARENT,IDTAG).
 print_watches(IDPARENT,IDTAG) :- watches(IDPARENT,IDTAG), write('<watches'),print_watches_childs(IDTAG).
 print_watches_childs(IDTAG):-write('>');watches(_, IDTAG), findall(IDCHILD,(
watch(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_watch(IDTAG,IDCHILDSORTED));write('</watches>'),printnl('').
 print_wild_card_watches(IDPARENT,IDTAG) :- print_watches(IDPARENT,IDTAG);watches(IDPARENT,IDTAG), print_wild_card_watches_childs(IDTAG).
 print_wild_card_watches_childs(IDTAG):-watches(_, IDTAG), findall(IDCHILD,(
watch(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_watch(IDTAG,IDWILDCHILDSORTED)).
print_watch_attribute_open_auction(IDPARENT,IDATTRIBUTE):-watch_attribute_open_auction(IDPARENT,IDATTRIBUTE,VALUE),write(' open:auction="') , write(VALUE),write('" ').
 print_watch(IDPARENT,IDTAG) :- watch(IDPARENT,IDTAG), write('<watch'),print_watch_childs(IDTAG).
 print_watch_childs(IDTAG):-watch(_, IDTAG), findall(IDCHILD,(
watch_attribute_open_auction(IDTAG,IDCHILD,_) ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(
print_watch_attribute_open_auction(IDTAG,IDATTRIBUTECHILDSORTED));write('>');write('</watch>'),printnl('').
 print_wild_card_watch(IDPARENT,IDTAG) :- print_watch(IDPARENT,IDTAG);watch(IDPARENT,IDTAG), print_wild_card_watch_childs(IDTAG).
 print_wild_card_watch_childs(IDTAG):-watch(_, IDTAG).
 print_open_auctions(IDPARENT,IDTAG) :- open_auctions(IDPARENT,IDTAG), write('<open_auctions'),print_open_auctions_childs(IDTAG).
 print_open_auctions_childs(IDTAG):-write('>');open_auctions(_, IDTAG), findall(IDCHILD,(
open_auction(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_open_auction(IDTAG,IDCHILDSORTED));write('</open_auctions>'),printnl('').
 print_wild_card_open_auctions(IDPARENT,IDTAG) :- print_open_auctions(IDPARENT,IDTAG);open_auctions(IDPARENT,IDTAG), print_wild_card_open_auctions_childs(IDTAG).
 print_wild_card_open_auctions_childs(IDTAG):-open_auctions(_, IDTAG), findall(IDCHILD,(
open_auction(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_open_auction(IDTAG,IDWILDCHILDSORTED)).
print_open_auction_attribute_id(IDPARENT,IDATTRIBUTE):-open_auction_attribute_id(IDPARENT,IDATTRIBUTE,VALUE),write(' id="') , write(VALUE),write('" ').
 print_open_auction(IDPARENT,IDTAG) :- open_auction(IDPARENT,IDTAG), write('<open_auction'),print_open_auction_childs(IDTAG).
 print_open_auction_childs(IDTAG):-open_auction(_, IDTAG), findall(IDCHILD,(
open_auction_attribute_id(IDTAG,IDCHILD,_) ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(
print_open_auction_attribute_id(IDTAG,IDATTRIBUTECHILDSORTED));write('>');open_auction(_, IDTAG), findall(IDCHILD,(
initial(IDTAG,IDCHILD,_);reserve(IDTAG,IDCHILD,_);bidder(IDTAG,IDCHILD);current(IDTAG,IDCHILD,_);privacy(IDTAG,IDCHILD,_);itemref(IDTAG,IDCHILD);seller(IDTAG,IDCHILD);annotation(IDTAG,IDCHILD);quantity(IDTAG,IDCHILD,_);type(IDTAG,IDCHILD,_);interval(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_initial(IDTAG,IDCHILDSORTED);print_reserve(IDTAG,IDCHILDSORTED);print_bidder(IDTAG,IDCHILDSORTED);print_current(IDTAG,IDCHILDSORTED);print_privacy(IDTAG,IDCHILDSORTED);print_itemref(IDTAG,IDCHILDSORTED);print_seller(IDTAG,IDCHILDSORTED);print_annotation(IDTAG,IDCHILDSORTED);print_quantity(IDTAG,IDCHILDSORTED);print_type(IDTAG,IDCHILDSORTED);print_interval(IDTAG,IDCHILDSORTED));write('</open_auction>'),printnl('').
 print_wild_card_open_auction(IDPARENT,IDTAG) :- print_open_auction(IDPARENT,IDTAG);open_auction(IDPARENT,IDTAG), print_wild_card_open_auction_childs(IDTAG).
 print_wild_card_open_auction_childs(IDTAG):-open_auction(_, IDTAG), findall(IDCHILD,(
initial(IDTAG,IDCHILD,_);reserve(IDTAG,IDCHILD,_);bidder(IDTAG,IDCHILD);current(IDTAG,IDCHILD,_);privacy(IDTAG,IDCHILD,_);itemref(IDTAG,IDCHILD);seller(IDTAG,IDCHILD);annotation(IDTAG,IDCHILD);quantity(IDTAG,IDCHILD,_);type(IDTAG,IDCHILD,_);interval(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_initial(IDTAG,IDWILDCHILDSORTED);print_wild_card_reserve(IDTAG,IDWILDCHILDSORTED);print_wild_card_bidder(IDTAG,IDWILDCHILDSORTED);print_wild_card_current(IDTAG,IDWILDCHILDSORTED);print_wild_card_privacy(IDTAG,IDWILDCHILDSORTED);print_wild_card_itemref(IDTAG,IDWILDCHILDSORTED);print_wild_card_seller(IDTAG,IDWILDCHILDSORTED);print_wild_card_annotation(IDTAG,IDWILDCHILDSORTED);print_wild_card_quantity(IDTAG,IDWILDCHILDSORTED);print_wild_card_type(IDTAG,IDWILDCHILDSORTED);print_wild_card_interval(IDTAG,IDWILDCHILDSORTED)).
print_initial(IDPARENT,IDTAG):-initial(_,IDTAG,VALUE),write('<initial>') , write(VALUE),
write('</initial>'),printnl('').
print_wild_card_initial(IDPARENT,IDTAG):- nonvar(IDTAG), print_initial(IDPARENT,IDTAG).
print_reserve(IDPARENT,IDTAG):-reserve(_,IDTAG,VALUE),write('<reserve>') , write(VALUE),
write('</reserve>'),printnl('').
print_wild_card_reserve(IDPARENT,IDTAG):- nonvar(IDTAG), print_reserve(IDPARENT,IDTAG).
 print_bidder(IDPARENT,IDTAG) :- bidder(IDPARENT,IDTAG), write('<bidder'),print_bidder_childs(IDTAG).
 print_bidder_childs(IDTAG):-write('>');bidder(_, IDTAG), findall(IDCHILD,(
date(IDTAG,IDCHILD,_);time(IDTAG,IDCHILD,_);personref(IDTAG,IDCHILD);increase(IDTAG,IDCHILD,_) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_date(IDTAG,IDCHILDSORTED);print_time(IDTAG,IDCHILDSORTED);print_personref(IDTAG,IDCHILDSORTED);print_increase(IDTAG,IDCHILDSORTED));write('</bidder>'),printnl('').
 print_wild_card_bidder(IDPARENT,IDTAG) :- print_bidder(IDPARENT,IDTAG);bidder(IDPARENT,IDTAG), print_wild_card_bidder_childs(IDTAG).
 print_wild_card_bidder_childs(IDTAG):-bidder(_, IDTAG), findall(IDCHILD,(
date(IDTAG,IDCHILD,_);time(IDTAG,IDCHILD,_);personref(IDTAG,IDCHILD);increase(IDTAG,IDCHILD,_) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_date(IDTAG,IDWILDCHILDSORTED);print_wild_card_time(IDTAG,IDWILDCHILDSORTED);print_wild_card_personref(IDTAG,IDWILDCHILDSORTED);print_wild_card_increase(IDTAG,IDWILDCHILDSORTED)).
print_time(IDPARENT,IDTAG):-time(_,IDTAG,VALUE),write('<time>') , write(VALUE),
write('</time>'),printnl('').
print_wild_card_time(IDPARENT,IDTAG):- nonvar(IDTAG), print_time(IDPARENT,IDTAG).
print_personref_attribute_person(IDPARENT,IDATTRIBUTE):-personref_attribute_person(IDPARENT,IDATTRIBUTE,VALUE),write(' person="') , write(VALUE),write('" ').
 print_personref(IDPARENT,IDTAG) :- personref(IDPARENT,IDTAG), write('<personref'),print_personref_childs(IDTAG).
 print_personref_childs(IDTAG):-personref(_, IDTAG), findall(IDCHILD,(
personref_attribute_person(IDTAG,IDCHILD,_) ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(
print_personref_attribute_person(IDTAG,IDATTRIBUTECHILDSORTED));write('>');write('</personref>'),printnl('').
 print_wild_card_personref(IDPARENT,IDTAG) :- print_personref(IDPARENT,IDTAG);personref(IDPARENT,IDTAG), print_wild_card_personref_childs(IDTAG).
 print_wild_card_personref_childs(IDTAG):-personref(_, IDTAG).
print_increase(IDPARENT,IDTAG):-increase(_,IDTAG,VALUE),write('<increase>') , write(VALUE),
write('</increase>'),printnl('').
print_wild_card_increase(IDPARENT,IDTAG):- nonvar(IDTAG), print_increase(IDPARENT,IDTAG).
print_current(IDPARENT,IDTAG):-current(_,IDTAG,VALUE),write('<current>') , write(VALUE),
write('</current>'),printnl('').
print_wild_card_current(IDPARENT,IDTAG):- nonvar(IDTAG), print_current(IDPARENT,IDTAG).
print_privacy(IDPARENT,IDTAG):-privacy(_,IDTAG,VALUE),write('<privacy>') , write(VALUE),
write('</privacy>'),printnl('').
print_wild_card_privacy(IDPARENT,IDTAG):- nonvar(IDTAG), print_privacy(IDPARENT,IDTAG).
print_itemref_attribute_item(IDPARENT,IDATTRIBUTE):-itemref_attribute_item(IDPARENT,IDATTRIBUTE,VALUE),write(' item="') , write(VALUE),write('" ').
 print_itemref(IDPARENT,IDTAG) :- itemref(IDPARENT,IDTAG), write('<itemref'),print_itemref_childs(IDTAG).
 print_itemref_childs(IDTAG):-itemref(_, IDTAG), findall(IDCHILD,(
itemref_attribute_item(IDTAG,IDCHILD,_) ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(
print_itemref_attribute_item(IDTAG,IDATTRIBUTECHILDSORTED));write('>');write('</itemref>'),printnl('').
 print_wild_card_itemref(IDPARENT,IDTAG) :- print_itemref(IDPARENT,IDTAG);itemref(IDPARENT,IDTAG), print_wild_card_itemref_childs(IDTAG).
 print_wild_card_itemref_childs(IDTAG):-itemref(_, IDTAG).
print_seller_attribute_person(IDPARENT,IDATTRIBUTE):-seller_attribute_person(IDPARENT,IDATTRIBUTE,VALUE),write(' person="') , write(VALUE),write('" ').
 print_seller(IDPARENT,IDTAG) :- seller(IDPARENT,IDTAG), write('<seller'),print_seller_childs(IDTAG).
 print_seller_childs(IDTAG):-seller(_, IDTAG), findall(IDCHILD,(
seller_attribute_person(IDTAG,IDCHILD,_) ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(
print_seller_attribute_person(IDTAG,IDATTRIBUTECHILDSORTED));write('>');write('</seller>'),printnl('').
 print_wild_card_seller(IDPARENT,IDTAG) :- print_seller(IDPARENT,IDTAG);seller(IDPARENT,IDTAG), print_wild_card_seller_childs(IDTAG).
 print_wild_card_seller_childs(IDTAG):-seller(_, IDTAG).
 print_annotation(IDPARENT,IDTAG) :- annotation(IDPARENT,IDTAG), write('<annotation'),print_annotation_childs(IDTAG).
 print_annotation_childs(IDTAG):-write('>');annotation(_, IDTAG), findall(IDCHILD,(
author(IDTAG,IDCHILD);description(IDTAG,IDCHILD);happiness(IDTAG,IDCHILD,_) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_author(IDTAG,IDCHILDSORTED);print_description(IDTAG,IDCHILDSORTED);print_happiness(IDTAG,IDCHILDSORTED));write('</annotation>'),printnl('').
 print_wild_card_annotation(IDPARENT,IDTAG) :- print_annotation(IDPARENT,IDTAG);annotation(IDPARENT,IDTAG), print_wild_card_annotation_childs(IDTAG).
 print_wild_card_annotation_childs(IDTAG):-annotation(_, IDTAG), findall(IDCHILD,(
author(IDTAG,IDCHILD);description(IDTAG,IDCHILD);happiness(IDTAG,IDCHILD,_) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_author(IDTAG,IDWILDCHILDSORTED);print_wild_card_description(IDTAG,IDWILDCHILDSORTED);print_wild_card_happiness(IDTAG,IDWILDCHILDSORTED)).
print_author_attribute_person(IDPARENT,IDATTRIBUTE):-author_attribute_person(IDPARENT,IDATTRIBUTE,VALUE),write(' person="') , write(VALUE),write('" ').
 print_author(IDPARENT,IDTAG) :- author(IDPARENT,IDTAG), write('<author'),print_author_childs(IDTAG).
 print_author_childs(IDTAG):-author(_, IDTAG), findall(IDCHILD,(
author_attribute_person(IDTAG,IDCHILD,_) ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(
print_author_attribute_person(IDTAG,IDATTRIBUTECHILDSORTED));write('>');write('</author>'),printnl('').
 print_wild_card_author(IDPARENT,IDTAG) :- print_author(IDPARENT,IDTAG);author(IDPARENT,IDTAG), print_wild_card_author_childs(IDTAG).
 print_wild_card_author_childs(IDTAG):-author(_, IDTAG).
print_happiness(IDPARENT,IDTAG):-happiness(_,IDTAG,VALUE),write('<happiness>') , write(VALUE),
write('</happiness>'),printnl('').
print_wild_card_happiness(IDPARENT,IDTAG):- nonvar(IDTAG), print_happiness(IDPARENT,IDTAG).
print_type(IDPARENT,IDTAG):-type(_,IDTAG,VALUE),write('<type>') , write(VALUE),
write('</type>'),printnl('').
print_wild_card_type(IDPARENT,IDTAG):- nonvar(IDTAG), print_type(IDPARENT,IDTAG).
 print_interval(IDPARENT,IDTAG) :- interval(IDPARENT,IDTAG), write('<interval'),print_interval_childs(IDTAG).
 print_interval_childs(IDTAG):-write('>');interval(_, IDTAG), findall(IDCHILD,(
start(IDTAG,IDCHILD,_);end(IDTAG,IDCHILD,_) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_start(IDTAG,IDCHILDSORTED);print_end(IDTAG,IDCHILDSORTED));write('</interval>'),printnl('').
 print_wild_card_interval(IDPARENT,IDTAG) :- print_interval(IDPARENT,IDTAG);interval(IDPARENT,IDTAG), print_wild_card_interval_childs(IDTAG).
 print_wild_card_interval_childs(IDTAG):-interval(_, IDTAG), findall(IDCHILD,(
start(IDTAG,IDCHILD,_);end(IDTAG,IDCHILD,_) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_start(IDTAG,IDWILDCHILDSORTED);print_wild_card_end(IDTAG,IDWILDCHILDSORTED)).
print_start(IDPARENT,IDTAG):-start(_,IDTAG,VALUE),write('<start>') , write(VALUE),
write('</start>'),printnl('').
print_wild_card_start(IDPARENT,IDTAG):- nonvar(IDTAG), print_start(IDPARENT,IDTAG).
print_end(IDPARENT,IDTAG):-end(_,IDTAG,VALUE),write('<end>') , write(VALUE),
write('</end>'),printnl('').
print_wild_card_end(IDPARENT,IDTAG):- nonvar(IDTAG), print_end(IDPARENT,IDTAG).
 print_closed_auctions(IDPARENT,IDTAG) :- closed_auctions(IDPARENT,IDTAG), write('<closed_auctions'),print_closed_auctions_childs(IDTAG).
 print_closed_auctions_childs(IDTAG):-write('>');closed_auctions(_, IDTAG), findall(IDCHILD,(
closed_auction(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_closed_auction(IDTAG,IDCHILDSORTED));write('</closed_auctions>'),printnl('').
 print_wild_card_closed_auctions(IDPARENT,IDTAG) :- print_closed_auctions(IDPARENT,IDTAG);closed_auctions(IDPARENT,IDTAG), print_wild_card_closed_auctions_childs(IDTAG).
 print_wild_card_closed_auctions_childs(IDTAG):-closed_auctions(_, IDTAG), findall(IDCHILD,(
closed_auction(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_closed_auction(IDTAG,IDWILDCHILDSORTED)).
 print_closed_auction(IDPARENT,IDTAG) :- closed_auction(IDPARENT,IDTAG), write('<closed_auction'),print_closed_auction_childs(IDTAG).
 print_closed_auction_childs(IDTAG):-write('>');closed_auction(_, IDTAG), findall(IDCHILD,(
seller(IDTAG,IDCHILD);buyer(IDTAG,IDCHILD);itemname(IDTAG,IDCHILD,_);price(IDTAG,IDCHILD,_);date(IDTAG,IDCHILD,_);quantity(IDTAG,IDCHILD,_);type(IDTAG,IDCHILD,_);annotation(IDTAG,IDCHILD) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(
print_seller(IDTAG,IDCHILDSORTED);print_buyer(IDTAG,IDCHILDSORTED);print_itemname(IDTAG,IDCHILDSORTED);print_price(IDTAG,IDCHILDSORTED);print_date(IDTAG,IDCHILDSORTED);print_quantity(IDTAG,IDCHILDSORTED);print_type(IDTAG,IDCHILDSORTED);print_annotation(IDTAG,IDCHILDSORTED));write('</closed_auction>'),printnl('').
 print_wild_card_closed_auction(IDPARENT,IDTAG) :- print_closed_auction(IDPARENT,IDTAG);closed_auction(IDPARENT,IDTAG), print_wild_card_closed_auction_childs(IDTAG).
 print_wild_card_closed_auction_childs(IDTAG):-closed_auction(_, IDTAG), findall(IDCHILD,(
seller(IDTAG,IDCHILD);buyer(IDTAG,IDCHILD);itemname(IDTAG,IDCHILD,_);price(IDTAG,IDCHILD,_);date(IDTAG,IDCHILD,_);quantity(IDTAG,IDCHILD,_);type(IDTAG,IDCHILD,_);annotation(IDTAG,IDCHILD) ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(
print_wild_card_seller(IDTAG,IDWILDCHILDSORTED);print_wild_card_buyer(IDTAG,IDWILDCHILDSORTED);print_wild_card_itemname(IDTAG,IDWILDCHILDSORTED);print_wild_card_price(IDTAG,IDWILDCHILDSORTED);print_wild_card_date(IDTAG,IDWILDCHILDSORTED);print_wild_card_quantity(IDTAG,IDWILDCHILDSORTED);print_wild_card_type(IDTAG,IDWILDCHILDSORTED);print_wild_card_annotation(IDTAG,IDWILDCHILDSORTED)).
print_buyer_attribute_person(IDPARENT,IDATTRIBUTE):-buyer_attribute_person(IDPARENT,IDATTRIBUTE,VALUE),write(' person="') , write(VALUE),write('" ').
 print_buyer(IDPARENT,IDTAG) :- buyer(IDPARENT,IDTAG), write('<buyer'),print_buyer_childs(IDTAG).
 print_buyer_childs(IDTAG):-buyer(_, IDTAG), findall(IDCHILD,(
buyer_attribute_person(IDTAG,IDCHILD,_) ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(
print_buyer_attribute_person(IDTAG,IDATTRIBUTECHILDSORTED));write('>');write('</buyer>'),printnl('').
 print_wild_card_buyer(IDPARENT,IDTAG) :- print_buyer(IDPARENT,IDTAG);buyer(IDPARENT,IDTAG), print_wild_card_buyer_childs(IDTAG).
 print_wild_card_buyer_childs(IDTAG):-buyer(_, IDTAG).
print_itemname(IDPARENT,IDTAG):-itemname(_,IDTAG,VALUE),write('<itemname>') , write(VALUE),
write('</itemname>'),printnl('').
print_wild_card_itemname(IDPARENT,IDTAG):- nonvar(IDTAG), print_itemname(IDPARENT,IDTAG).
print_price(IDPARENT,IDTAG):-price(_,IDTAG,VALUE),write('<price>') , write(VALUE),
write('</price>'),printnl('').
print_wild_card_price(IDPARENT,IDTAG):- nonvar(IDTAG), print_price(IDPARENT,IDTAG).
print_xmlMixedElement(IDTAG) :- xmlMixedElement(_,IDTAG,VALUE), write(VALUE).
site(1).
regions(1, 2).
africa(2, 3).
item(3, 4).
item_attribute_id(4, 5, 'item0').
location(4, 7, 'United States').
quantity(4, 9, '1').
name(4, 11, 'duteous nine eighteen ').
payment(4, 13, 'Creditcard').
description(4, 15).
parlist(15, 16).
listitem(16, 17).
text(17, 18).
xmlMixedElement(18, 19, 'page rous lady idle authority capt professes stabs monster petition heave humbly removes rescue runs shady peace most piteous worser oak assembly holes patience but malice whoreson mirrors master tenants smocks yielded ').
keyword(18, 20, ' officer embrace such fears distinction attires ').
listitem(16, 22).
text(22, 23, 'shepherd noble supposed dotage humble servilius bitch theirs venus dismal wounds gum merely raise red breaks earth god folds closet captain dying reek ').
shipping(4, 25, 'Will ship internationally, See description for charges').
incategory(4, 27).
incategory_attribute_category(27, 28, 'category0').
incategory(4, 30).
incategory_attribute_category(30, 31, 'category0').
incategory(4, 33).
incategory_attribute_category(33, 34, 'category0').
incategory(4, 36).
incategory_attribute_category(36, 37, 'category0').
incategory(4, 39).
incategory_attribute_category(39, 40, 'category0').
mailbox(4, 42).
mail(42, 43).
from(43, 44, 'Dominic Takano mailto:Takano@yahoo.com').
to(43, 46, 'Mechthild Renear mailto:Renear@acm.org').
date(43, 48, '10/12/1999').
text(43, 50).
xmlMixedElement(50, 51, 'asses scruple learned crowns preventions half whisper logotype weapons doors factious already pestilent sacks dram atwain girdles deserts flood park lest graves discomfort sinful conceiv therewithal motion stained preventions greatly suit observe sinews enforcement ').
emph(50, 52, ' armed ').
xmlMixedElement(50, 54, ' gold gazing set almost catesby turned servilius cook doublet preventions shrunk ').
asia(2, 55).
item(55, 56).
item_attribute_id(56, 57, 'item1').
location(56, 59, 'United States').
quantity(56, 61, '1').
name(56, 63, 'great ').
payment(56, 65, 'Money order, Cash').
description(56, 67).
text(67, 68).
xmlMixedElement(68, 69, 'print deceit arming ros apes unjustly oregon spring hamlet containing leaves italian turn ').
bold(68, 70, ' spirit model favour disposition ').
xmlMixedElement(68, 72, ' approach charg gold promotions despair flow assured terror assembly marry concluded author debase get bourn openly gonzago wisest bane continue cries ').
shipping(56, 73, 'Will ship internationally').
incategory(56, 75).
incategory_attribute_category(75, 76, 'category0').
incategory(56, 78).
incategory_attribute_category(78, 79, 'category0').
incategory(56, 81).
incategory_attribute_category(81, 82, 'category0').
incategory(56, 84).
incategory_attribute_category(84, 85, 'category0').
incategory(56, 87).
incategory_attribute_category(87, 88, 'category0').
incategory(56, 90).
incategory_attribute_category(90, 91, 'category0').
mailbox(56, 93).
mail(93, 94).
from(94, 95, 'Fumitaka Cenzer mailto:Cenzer@savera.com').
to(94, 97, 'Lanju Takano mailto:Takano@itc.it').
date(94, 99, '02/24/2000').
text(94, 101).
xmlMixedElement(101, 102, 'entreaty hath fowl prescience bounds roof fiend intellect boughs caught add jests feelingly doubt trojans wisdom greatness tune worship doors fields reads canst france pay progeny wisdom stir mov impious promis clothes hangman trebonius choose men fits preparation ').
keyword(101, 103, ' benefit since eclipse gates ').
mail(93, 105).
from(105, 106, 'Papa Godskesen mailto:Godskesen@uwindsor.ca').
to(105, 108, 'Ioana Blumberg mailto:Blumberg@conclusivestrategies.com').
date(105, 110, '08/02/2001').
text(105, 112).
xmlMixedElement(112, 113, 'jealousy back greg folded gauntlets conduct hardness across sickness peter enough royal herb embrace piteous die servilius avoid ').
keyword(112, 114, ' laying chance dungeons pleasant thyself fellow purse steward heaven ambassador terrible doubtfully ').
xmlMixedElement(112, 116, ' milk sky clouds unbraced put sacrifices seas childish longer flout heavy pitch rosalind orderly music delivery appease ').
australia(2, 117).
item(117, 118).
item_attribute_id(118, 119, 'item2').
location(118, 121, 'United States').
quantity(118, 123, '1').
name(118, 125, 'scarce brook ').
payment(118, 127, '').
description(118, 129).
parlist(129, 130).
listitem(130, 131).
text(131, 132).
xmlMixedElement(132, 133, 'senses concave valiant star further instruments bankrupts countrymen horrid costard youth necessity tend curiously waken witness navy there honest interest perceive defendant chief traffic where nuptial descent travel prepare agreed voices swears remember peerless doing ').
keyword(132, 134, ' preparation rejoice ').
listitem(130, 136).
text(136, 137).
xmlMixedElement(137, 138, 'swear canker barbarian parching coxcomb excess conspiring nobles sounded consider sayings fishified prime may spirit ').
emph(137, 139, ' untruths misgives choughs mew here garments tenfold ').
xmlMixedElement(137, 141, ' error discontent hung beatrice straight muse shame deep twice mann maecenas any conveyance fingers whereupon child case ').
keyword(137, 142, ' season presently victory women beating ').
xmlMixedElement(137, 144, ' deprive almost wed dreams slew reveal ').
listitem(130, 145).
text(145, 146).
xmlMixedElement(146, 147, 'spotted attend burden camillo field enlarge stead corporal ground tormenting ').
bold(146, 148, ' naturally sanctuary riddle exile coming awake senseless chance famous albans ').
xmlMixedElement(146, 150, ' service cricket limb from clouds amongst shore penker defend quantity dumb churlish uncover swung eros figur sulphur sky birth stare negligent unction shield instance ambition gate injury fort put infants find slavish hugh see afterwards slanders chides eyes minds alb loved endure combating voyage ').
listitem(130, 151).
parlist(151, 152).
listitem(152, 153).
text(153, 154, 'maintained peril rivall suddenly finds studies weary truth indulgence anatomy assisted imminent may excepted yonder aches regal ').
listitem(152, 156).
bold(157, 158, ' friar prophetess ').
text(156, 157).
xmlMixedElement(157, 160, ' spirits delays turning cassio finding unpractis steel sweets promises credulity err nym complete star greatly mope sorry experience virtues been offending bed drives faction learnt hurl eleven huge ').
listitem(152, 161).
text(161, 162).
xmlMixedElement(162, 163, 'piece hours cruelly april league winged ').
keyword(162, 164, ' tract element sails course placed fouler four plac joint ').
xmlMixedElement(162, 166, ' words blessing fortified loving forfeit doctor valiant crying wife county planet charge haughty precious alexander longboat bells lewd kingdoms knife giver frantic raz commend sit sovereignty engaged perceive its art alliance forge bestow perforce complete roof fie confident raging possible cassio teen crave park reign lords sounded our requite fourth confidence high ').
listitem(130, 167).
parlist(167, 168).
listitem(168, 169).
text(169, 170).
xmlMixedElement(170, 171, 'sent fled bids oswald help answer artillery jealous hugh fingers gladly mows our craving ').
emph(170, 172, ' preventions spurr edmund drunk how faction quickly bolingbroke painfully ').
xmlMixedElement(170, 174, ' valorous line clasp cheek patchery encompassed honest after auspicious home engaged prompt mortimer bird dread jephthah prithee unfold deeds fifty goose either herald temperance coctus took sought fail each ado checking funeral thinks linger advantage bag ridiculous along accomplishment flower glittering school disguis portia beloved crown sheets garish rather forestall vaults doublet embassy ecstasy crimson rheum befall sin devout pedro little exquisite mote messenger lancaster hideous object arrows smites gently skins bora parting desdemona longing third throng character hat sov quit mounts true house field nearest lucrece tidings fought logotype eaten commanding treason censur ripe praises windsor temperate jealous made sleeve scorn throats fits uncape tended science preventions preventions high pipes reprieves ').
bold(170, 175, ' sold ').
xmlMixedElement(170, 177, ' marriage sampson safety distrust witch christianlike plague doubling visited with bleed offenders catching attendants ').
emph(170, 178, ' cars livery stand ').
xmlMixedElement(170, 180, ' denay ').
keyword(170, 181, ' cimber paper admittance tread character ').
xmlMixedElement(170, 183, ' battlements seen dun irish throw redeem afflicts suspicion ').
listitem(168, 184).
text(184, 185).
xmlMixedElement(185, 186, 'traduc barks twenty secure pursuit believing necessities longs mental lack further observancy uncleanly understanding vault athens lucius sleeps nor safety evidence repay whensoever senses proudest restraint love mouths slaves water athenian willingly hot grieves delphos pavilion sword indeed lepidus taking disguised proffer salt before educational streets things osw rey stern lap studies finger doomsday pots bounty famous manhood observe hopes unless languish ').
keyword(185, 187, ' transformed nourish breeds north ').
shipping(118, 189, 'Will ship internationally').
incategory(118, 191).
incategory_attribute_category(191, 192, 'category0').
incategory(118, 194).
incategory_attribute_category(194, 195, 'category0').
mailbox(118, 197).
mail(197, 198).
from(198, 199, 'Aspi L`Ecuyer mailto:L`Ecuyer@intersys.com').
to(198, 201, 'Lesley Jeris mailto:Jeris@zambeel.com').
date(198, 203, '10/09/1998').
text(198, 205, 'necessities chains rosencrantz house heed course lawn diest unvirtuous supposed sees chough swor numbers game roman soundest wrestler sky lodovico beast shivers desolate norfolk forgot paulina wars george while beggar sheath thursday capable presently his protector father orchard enemies believe drains tokens prison charge cloud stab york mild scene true devotion confidence hundred those guiltless pricks sort himself mutiny officers directive wholesome edge acts dion ride draw brings custom chapless beside sex dowry casca goods priam blasphemy prick octavia brain curer thinkest idiot inward missing conspiracy tents scab inundation caesar officer dramatis ').
europe(2, 207).
item(207, 208).
item_attribute_id(208, 209, 'item3').
location(208, 211, 'Uzbekistan').
quantity(208, 213, '1').
name(208, 215, 'abhorr execution beckon rue ').
payment(208, 217, 'Money order, Creditcard, Cash').
description(208, 219).
parlist(219, 220).
listitem(220, 221).
keyword(222, 223, ' perjur kills insanie unfortunate conjuration deeper confounded belied first guard ').
text(221, 222).
xmlMixedElement(222, 225, ' pale profits height desir ashore france strength kept entrench poisons worth fought ignorance moody poniards speaks jack egg offspring victory food double emperor round jewel abbey apparel untainted lass protest start wings acquit lake lady battles further low thief try brook cake mounted officers dean shrunk lowness dew sandy prologue armies suspicion eighty advance thankfulness albany ended experience halt doubted wert kingdom fiend directed pair perhaps ').
listitem(220, 226).
text(226, 227).
xmlMixedElement(227, 228, 'prayer odds rend condemn conrade swearing dispos losses boar little from thought different couch respected human robe dictynna later pays edward babe distemper bards damned mayst sustain while self alcibiades listen weak soil ').
keyword(227, 229, ' view presume loggets feed ').
xmlMixedElement(227, 231, ' afoot yields erection balthasar fathers datchet thankless lear cause evil cheerfully instance tarried because cough ancient testimony tarquin cousin reported porter beastly jade bark sex slack lear devil devoured amiable mason moss shoulders labour meanest feign eggs encount forbid enobarbus halters nam emilia fiends bearing food inheritor wiser ').
emph(227, 232, ' hedge ').
xmlMixedElement(227, 234, ' functions there capital greasy dark crush your sequest between devout thou strikes demand dost reverent conference least told ado modena jealousy nunnery mistrust nightly worthy closes tall proudly fierce receive nearness safer jacks shut dire mates wind unfortunate monsieur parcels sauced extremities throat dog empty treasury etc detested stand taxations edges mourner sue knavery unlook perseus diadem heartily peer tut compounded art reconcile study thought cockatrice money pity intend thing claud edmund throws torments ropes contrive story slain advise lecher ardea relics keeping treads buckingham defences lag neighbour ourself marshal disordered moderate venus afeard article rot hazards craft crowns ').
emph(227, 235, ' plainness patient ').
xmlMixedElement(227, 237, ' lying knowledge diseases meritorious medicine instead lid happy without them bands answer ').
shipping(208, 238, 'Will ship only within country').
incategory(208, 240).
incategory_attribute_category(240, 241, 'category0').
incategory(208, 243).
incategory_attribute_category(243, 244, 'category0').
incategory(208, 246).
incategory_attribute_category(246, 247, 'category0').
incategory(208, 249).
incategory_attribute_category(249, 250, 'category0').
incategory(208, 252).
incategory_attribute_category(252, 253, 'category0').
incategory(208, 255).
incategory_attribute_category(255, 256, 'category0').
incategory(208, 258).
incategory_attribute_category(258, 259, 'category0').
incategory(208, 261).
incategory_attribute_category(261, 262, 'category0').
mailbox(208, 264, '').
item(207, 266).
item_attribute_id(266, 267, 'item4').
location(266, 269, 'United States').
quantity(266, 271, '1').
name(266, 273, 'lived unsur ').
payment(266, 275, 'Money order, Creditcard, Personal Check').
description(266, 277).
text(277, 278, 'resolve pursue colour body you ourself month writing beside unadvised tent splits through favours following populous garden henceforth shoots function fourscore mangled favorably slain secretly vice distinguish bardolph content hence boy worse bring usurers stew beard longed creep hid pursuivant beholders senators ').
shipping(266, 280, '').
incategory(266, 282).
incategory_attribute_category(282, 283, 'category0').
mailbox(266, 285).
mail(285, 286).
from(286, 287, 'Spyrose Marchegay mailto:Marchegay@rutgers.edu').
to(286, 289, 'Hiu Steckler mailto:Steckler@memphis.edu').
date(286, 291, '02/02/2001').
text(286, 293).
xmlMixedElement(293, 294, 'causes remove adding tear often rounds underbearing tree purer kibes endless women benefit throw ').
emph(293, 295).
xmlMixedElement(295, 296, ' claim firmness ').
keyword(295, 297, ' arrived sees wrestled multitude repent preventions infamy reproof shalt hearted prais knave doubtless ').
xmlMixedElement(295, 299, ' deny ').
xmlMixedElement(293, 300, ' merely grave voluble late loath digest horn slave hunger stronger amazed salt killing ross cry dry tongue kiss yields auspicious quietness perpetual ways ').
keyword(293, 301, ' began leg running unjust court mean returning brook creatures appointed paunches henry sights west prunes flutes regiment seems bed ').
xmlMixedElement(293, 303, ' musicians slumber post ').
item(207, 304).
item_attribute_id(304, 305, 'item5').
location(304, 307, 'Liberia').
quantity(304, 309, '1').
name(304, 311, 'wine prevention ').
payment(304, 313, 'Money order, Creditcard').
description(304, 315).
text(315, 316, 'holly walk inform moods stol castle woo deck bulk begin ').
shipping(304, 318, '').
incategory(304, 320).
incategory_attribute_category(320, 321, 'category0').
incategory(304, 323).
incategory_attribute_category(323, 324, 'category0').
mailbox(304, 326).
mail(326, 327).
from(327, 328, 'Ulf Tiskin mailto:Tiskin@uic.edu').
to(327, 330, 'Rasiah Ranai mailto:Ranai@broadquest.com').
date(327, 332, '12/03/1998').
text(327, 334).
xmlMixedElement(334, 335, 'halts advancing kernel hoppedance perfection weight sultry resign scarf whining safe english rod featur gone ground sick ilion christian mine dine yon debate may longing bestow dispense visitation strangely mab spirit forgot panting haply detest doctors hereby their walk hope learned preventions doubtful scene disposition substance prick afterwards seemeth temples illegitimate prostrate enforcement nakedness down suddenly emptier coventry entreat music treble letting pinion breaking thrifty kissing design airy office ').
keyword(334, 336, ' mad withdraw mother beastly worthiest twice girl indifferent suit ').
xmlMixedElement(334, 338, ' trick overcome unthrifty ').
emph(334, 339).
xmlMixedElement(339, 340, ' fell othello ').
bold(339, 341, ' wolf entreat audaciously down sands sports pilgrimage duellist league holiday cheek that tables merrily knot selves ionia impure ').
xmlMixedElement(339, 343, ' prophet draw throwing solemn yonder ').
xmlMixedElement(334, 344, ' rightful foam worthless polack veronesa antony beget thereby carry untread hales elbow passing yielding kept dotard holofernes onions din audrey says waterdrops carrion tax prithee crowned troubled naked ').
namerica(2, 345).
item(345, 346).
item_attribute_id(346, 347, 'item6').
location(346, 349, 'United States').
quantity(346, 351, '1').
name(346, 353, 'recount waters derive sans ').
payment(346, 355, 'Creditcard, Personal Check').
description(346, 357).
text(357, 358).
xmlMixedElement(358, 359, 'arthur thrive womb wound baseness joy preventions obey vow bawds myrtle said shallow ').
bold(358, 360, ' neglect montague ').
xmlMixedElement(358, 362, ' souls commended ').
emph(358, 363, ' labour ').
xmlMixedElement(358, 365, ' roderigo persuade alter villain wore thunder congeal pawned alack customary deny faithful top office spoken please neighbour office afternoon drum embowell touch sue lifeless leapt called weary congregation yield check falling wives challenge mental fatal hard ancient stands cor dishes therein gramercy discipline farewell dire tricks protest cut horatio brother speech sleeping adultress pitch cave liv nurse drink state plants combating desired requir rebellion afraid repented tree scald stopp wine advise undermine norfolk vilely whet scars companions hanging foolish scene musty fruitful unburthen teacher ').
shipping(346, 366, 'Will ship only within country, Will ship internationally, Buyer pays fixed shipping charges, See description for charges').
incategory(346, 368).
incategory_attribute_category(368, 369, 'category0').
incategory(346, 371).
incategory_attribute_category(371, 372, 'category0').
incategory(346, 374).
incategory_attribute_category(374, 375, 'category0').
mailbox(346, 377, '').
item(345, 379).
item_attribute_id(379, 380, 'item7').
location(379, 382, 'United States').
quantity(379, 384, '1').
name(379, 386, 'refractory gouty beauty hire ').
payment(379, 388, 'Money order, Creditcard, Personal Check, Cash').
description(379, 390).
text(390, 391).
xmlMixedElement(391, 392, 'shook laertes afflictions rouse vast happy news humanity buck destroy military lucius lap ').
keyword(391, 393, ' considered forc mourning verona ').
xmlMixedElement(391, 395, ' waters triumphing officer hastily ').
emph(391, 396, ' resign subject figure hay thwart written signs gout bred distance period glove players change folly ').
xmlMixedElement(391, 398, ' going wat lost song hautboys pick business crocodile leading cave twice frenzy sprightly dislike invite forbids morn devour ambassador seldom speak tickling rejoice triumphant ascanius forward capable disguise compare buys english shame vulcan farther generation for hearts canst devils furrow promise lusty ').
shipping(379, 399, 'Will ship only within country').
incategory(379, 401).
incategory_attribute_category(401, 402, 'category0').
incategory(379, 404).
incategory_attribute_category(404, 405, 'category0').
mailbox(379, 407).
mail(407, 408).
from(408, 409, 'Youjian Siochi mailto:Siochi@uwaterloo.ca').
to(408, 411, 'Nanning Koshiba mailto:Koshiba@savera.com').
date(408, 413, '08/15/1999').
text(408, 415).
xmlMixedElement(415, 416, 'smell bids repeat roaring expense sensible kneel broke england plac seem villains garments therefore produce done hereford redemption princely smil fields plague hearts precepts laboured gentleman joint borrow lay believe rogue silken break suffer desire paper ').
keyword(415, 417).
xmlMixedElement(417, 418, ' main cressid ').
emph(417, 419, ' person whate lily pilgrim flaying therefore meantime similes base ').
xmlMixedElement(417, 421, ' dowry delivering curan press debtor alexandria sugar battle orbed embrac supremacy answering ').
xmlMixedElement(415, 422, ' cradle shoulder corpse canons domain night forsake yea satisfy between ').
bold(415, 423).
xmlMixedElement(423, 424, ' senators browsing monsters ear players moreover ').
emph(423, 425, ' sir hor shape suspicious taffeta ').
xmlMixedElement(423, 427, ' banquet ').
xmlMixedElement(415, 428, ' forbear unshown frail journey loves swearing proceeds detain eighteen petter stone battle breathless kindness prophesy entomb over wishing conquer provoke his forehead persuaded places needy balth others school feasted rivers tomb honor garland worser wounding brook stoops brooch plucks level samp tent windsor rubs whereof beam signior built suff heavy dull husbands roman favour urge spear gone ').
item(345, 429).
item_attribute_id(429, 430, 'item8').
location(429, 432, 'United States').
quantity(429, 434, '1').
name(429, 436, 'cheeks ').
payment(429, 438, 'Money order').
description(429, 440).
parlist(440, 441).
listitem(441, 442).
text(442, 443).
xmlMixedElement(443, 444, 'here barnardine assault trade friar taking pheasant sentenc scarf corrections brothers charge spur ass agamemnon truepenny saves roots practis impatient diest didest starv seeing beneath interpose gods home black forgot snuff dress dozen napkins ').
emph(443, 445, ' countess northumberland headlong needless angry pleading ').
xmlMixedElement(443, 447, ' better joy ').
emph(443, 448, ' meagre ').
xmlMixedElement(443, 450, ' reap enquire crab wales died violent rear past liberty ').
emph(443, 451, ' braggart armour infer bankrupt winds teeth ').
xmlMixedElement(443, 453, ' case wore pouch crows cognition ').
listitem(441, 454).
text(454, 455).
xmlMixedElement(455, 456, 'odd expedition free chief cressida hearsed shapes supposes silent wealth off friendship congregation soon farm doct ross susan ready empty dedicate shilling whole soul foot beseech higher lifeless hay postmaster distress disposition ').
bold(455, 457, ' inherits ').
xmlMixedElement(455, 459, ' marcus betters pitch betray beam corse player quality ros conduct thersites greediness boast pilgrims startles contented belch hung thus captain early blood par brook jul gain needs above ensign grapes revelling glean thank seeing tenth succession lief wall bands enterprise flat preventions knave wine shield prey key ').
shipping(429, 460, 'Will ship only within country, Will ship internationally').
incategory(429, 462).
incategory_attribute_category(462, 463, 'category0').
incategory(429, 465).
incategory_attribute_category(465, 466, 'category0').
incategory(429, 468).
incategory_attribute_category(468, 469, 'category0').
incategory(429, 471).
incategory_attribute_category(471, 472, 'category0').
incategory(429, 474).
incategory_attribute_category(474, 475, 'category0').
incategory(429, 477).
incategory_attribute_category(477, 478, 'category0').
incategory(429, 480).
incategory_attribute_category(480, 481, 'category0').
incategory(429, 483).
incategory_attribute_category(483, 484, 'category0').
incategory(429, 486).
incategory_attribute_category(486, 487, 'category0').
mailbox(429, 489).
mail(489, 490).
from(490, 491, 'Margus Narahari mailto:Narahari@earthlink.net').
to(490, 493, 'Zhaoqian Krivanek mailto:Krivanek@rice.edu').
date(490, 495, '02/28/2000').
text(490, 497).
xmlMixedElement(497, 498, 'peers necessity ungently advised worst visions whistle serving ratcliff ').
bold(497, 499, ' green horribly vizard intends ').
xmlMixedElement(497, 501, ' corrupted moral help dunghill trembles kingdom true worse pill reap office early secure desires hated garland carriage impatient deserts feel challenger evil ').
bold(497, 502, ' editions depart laur hereford richer ').
xmlMixedElement(497, 504, ' prithee lust shortly approve rey should spectacles fiery perfect worshipp foul quod yes ').
mail(489, 505).
from(505, 506, 'Zahira Bisiani mailto:Bisiani@arizona.edu').
to(505, 508, 'Hae Coste mailto:Coste@ncr.com').
date(505, 510, '06/19/2000').
text(505, 512, 'throng grandam awak helpless ventidius tread defeat teem durst wonderful attaint chaste sees fulfill mortality arme expedient attendants themselves performed leading sing villain skill store mischief see consciences sail text speed sons spleen die oft girl atomies commodity honor fall stopp they ').
item(345, 514).
item_attribute_id(514, 515, 'item9').
item_attribute_featured(514, 517, 'yes').
location(514, 519, 'United States').
quantity(514, 521, '1').
name(514, 523, 'greedy ensues pays spilling ').
payment(514, 525, 'Money order, Personal Check').
description(514, 527).
text(527, 528, 'can whom youth soldiers for time vere record penury herself reasons merits villainous whereupon wrote penny mar preventions followed best eternity bestow blots rocks barnardine torn cassio tailor fame forfeit triumphant conceived deem cowardly merciful topgallant flint purgation whosoever ventidius befits forever bankrupt choughs stains certain violated burgundy shadows possesseth men repent predominant burns revelry swore prodigious next tyrant oath noses apart balth trade feasting field importunity expect experience kingly ').
shipping(514, 530, 'See description for charges').
incategory(514, 532).
incategory_attribute_category(532, 533, 'category0').
mailbox(514, 535).
mail(535, 536).
from(536, 537, 'Mehrdad Crescenzo mailto:Crescenzo@ac.at').
to(536, 539, 'Shunichiro Usas mailto:Usas@ucsd.edu').
date(536, 541, '01/17/1998').
text(536, 543).
xmlMixedElement(543, 544, 'slowness fast princes their tender softly herod messengers horseman corrosive just make countries quirks shut thence beware jewels sland preventions further royal streets has sells daughters influences leontes priest maggot lays dishes display caught navarre durst weight seat ').
emph(543, 545).
xmlMixedElement(545, 546, ' assigns flesh made his third ').
keyword(545, 547, ' seemeth ').
xmlMixedElement(545, 549, ' peril gain they stroke forsworn scape full determin professes commons ').
xmlMixedElement(543, 550, ' lordship clear operation practice pyrrhus earnest broke devil posterity company text misbegotten oregon ').
item(345, 551).
item_attribute_id(551, 552, 'item10').
location(551, 554, 'Iraq').
quantity(551, 556, '1').
name(551, 558, 'cross ').
payment(551, 560, 'Money order, Creditcard, Personal Check, Cash').
description(551, 562).
text(562, 563).
xmlMixedElement(563, 564, 'use ugly serves presentation aweless comparing thereon secretly gallows preventions horridly purposes frailty shrift slack lieutenant hers stop clown amends throw pomp pretty wildly wake expectation sacrament point marr painted seat fords divided delicate mocking active bills filth pledge latin done statue moved converse goot claw show edmundsbury torment tarquin pyrrhus vanities heathen betray lordship forget enforce gods fills overcame burns leg overthrown institutions adverse brought strives occasion event ready troyan shoulders matters sinews liquid ashy gentlewomen authority assay hole selves living near doting modest wiltshire mocker eton profess forgeries butt wade lawful maccabaeus wert forced succeeding becomes wayward got thief obedience wretches yoke run destroy hole frighting enemies permission vowed swinstead body oph crave consorted requite forfeit speed possess peremptory fraughtage confin rules hatred case art knife bruit wiser engross hero restraint bolingbroke run crimes dominions prey egg conduct ').
bold(563, 565).
xmlMixedElement(565, 566, ' abandon slay diomed apprehend ').
emph(565, 567, ' advantage studied stained entrails bone shoulder ').
shipping(551, 569, 'Buyer pays fixed shipping charges').
incategory(551, 571).
incategory_attribute_category(571, 572, 'category0').
incategory(551, 574).
incategory_attribute_category(574, 575, 'category0').
incategory(551, 577).
incategory_attribute_category(577, 578, 'category0').
incategory(551, 580).
incategory_attribute_category(580, 581, 'category0').
mailbox(551, 583, '').
samerica(2, 585).
item(585, 586).
item_attribute_id(586, 587, 'item11').
location(586, 589, 'United States').
quantity(586, 591, '2').
name(586, 593, 'proof traitor ').
payment(586, 595, 'Money order, Cash').
description(586, 597).
text(597, 598).
xmlMixedElement(598, 599, 'filthy divers fault apparell worthiness supposition parchment restitution rings rages remains lass dependent pelican contrive paradoxes unmask desdemona weak pleases shame wisely cheek poison avoid ulysses exeunt answer smoothing punishment much anointed bloody shook here armado supply four digestion unresisted consummate glou ding figure made unwrung worst repute envious meanest read nan stake shriek tower nights armed drinking instant scruple citizens rightful nonino shame hills dismal other fasting attends judge aspire hand putting repeal grounds bestrid commission crave mess tarries sport view freely lame done intend cast shun kills presented body landed question hem same burdens plenty esteem weak sigh sunday body preventions revenge horses cleomenes thrust what albeit foolishly mirror gently mock allow index evils should consider deeds suit damsons willoughby thousand number morn banish barricado unfolding perhaps gently stalk degree oblivion wars monsieur companies swords shifted clay strives frozen jour ').
emph(598, 600, ' ajax states mark parcels advertised utterly virtue flatter sleeping ope ').
xmlMixedElement(598, 602, ' lucilius tybalt glow killed account obdurate kindly ').
bold(598, 603, ' heart light bosom garden cog yet daughters tott ').
xmlMixedElement(598, 605, ' lifted offer bail navy ').
bold(598, 606, ' next ').
shipping(586, 608, 'Will ship only within country, Will ship internationally').
incategory(586, 610).
incategory_attribute_category(610, 611, 'category0').
mailbox(586, 613).
mail(613, 614).
from(614, 615, 'Alty Pollacia mailto:Pollacia@ntua.gr').
to(614, 617, 'Isidro Rozas mailto:Rozas@neu.edu').
date(614, 619, '09/04/1999').
bold(621, 622, ' hie ').
text(614, 621).
xmlMixedElement(621, 624, ' quake return hand murther surpris toward wicked fort uncle lucrece past nightgown hated sister lend smell ').
bold(621, 625, ' find ').
xmlMixedElement(621, 627, ' motley treasure decline supposed puddle dinner womanhood ').
keyword(621, 628, ' horns tenderness lessens promise guilt confess gentlewomen souls ').
xmlMixedElement(621, 630, ' preventions false voke colour need division conjoin preventions their apemantus pol plague ink incite doctrine sugar purity suddenly find lusts sin near conquerors over pays thief whoso manent where despite not freetown instigated moralize sequel noble music recompense choke massacre hear greatest afford commended troy stomach christian piece fare gate bar her pupil peep gives longest couldst draw emulate feast church ornaments madcap pales sometime tutor stern magician nine george lightning singing pearl frederick creditors dart cousin beneath yourself dishes expects pander near finely juno nell foundations noble digg fixed way ross preventions city expectation traitorously lake rose fine guilty lear surety chain depriv renascence flower kindled crows forgive husband vantage ').
categories(1, 631).
category(631, 632).
category_attribute_id(632, 633, 'category0').
name(632, 635, 'doing drag troop diomed ').
description(632, 637).
parlist(637, 638).
listitem(638, 639).
bold(640, 641, ' confession greet heaven longing remainder ').
text(639, 640).
xmlMixedElement(640, 643, ' could month take executioner mistress contrive guilt big fail follower shrift change writing therein fool could prize drift control picked unless desirous crash fate divide hyperboles traitors bourn notes limited passeth inflame child work barr damned tops poetry manners ram savage medicine deny edmundsbury rather supremacy manners answers possession turkish opposed burns asleep awkward stiffly swords chanson adam pent certain goodness dogberry ones brains precious motley line borrow seduced touching throw blots tyrannous demands fathers creatures chamberlain courage attir university titinius see stumble turkish henry patch ').
emph(640, 644, ' lightly conrade passing easily ').
xmlMixedElement(640, 646, ' gap gay ravin beauty thaw yourself grace loud gear falstaff dearest prick amen hope preventions speak strike use kisses desires spy hies potent ').
emph(640, 647, ' idle begin call body shroud tears dark misery satiety bare from newness can loveliness bereft fulvia ').
xmlMixedElement(640, 649, ' wooing earnest dismiss resemble fairy troyan business convenient front emperor whoremaster breeding duty dance ').
bold(640, 650).
xmlMixedElement(650, 651, ' venetian ').
keyword(650, 652, ' displeasure sow law foolish strongly grieve head presently ').
listitem(638, 654).
text(654, 655).
xmlMixedElement(655, 656, 'pleasant have loved sheep decay legions clock brought congregation honorable kerns necklace verge humbly better distance slaves balls thyself foot passing ').
emph(655, 657, ' comfort ').
xmlMixedElement(655, 659, ' beds virtuously frets holy dumbness loose sea lusty victory wounds holds nest bosoms lord swells scratch won neighbour pedro octavia taught subjects synod grave fed unarm nicer one close territories ply uncles doubtful till devis discover trick ships goneril heavens anger ').
emph(655, 660, ' castles ').
xmlMixedElement(655, 662, ' lights spok low beggarly keeps mercy devil sword irrevocable holding succeeding lending pompey shalt uncle looks perchance egypt dearly pursuit estimation vill unbuckle suspense sixth holding stand better key enjoin gaunt two beseech plac ').
keyword(655, 663, ' obedient ').
xmlMixedElement(655, 665, ' rot mistake roderigo shore knee adder native jove blanch affords succour call since warm wears angiers pleased functions tom burnt pit painter refuse hatfield corruption faint bad shuns faulconbridge after ').
bold(655, 666, ' hail antic ').
xmlMixedElement(655, 668, ' tendance lain huswife remember laughter spread revenges accurs hearer couched has labours requite wrongs report continue word griev sweep suspected flight conditions refuse shifts home attire dropping misery goddess attired printing walk tricks consider awake anything collatine basin preventions instruments understand pick down take stock hour judg grudge durance directly knaves seven approof thereon rings credit strength sends messenger orlando youngest murder brainford coward say bee bolingbroke reports liberty zed they airy question naught hastily falconers seems grass entrance benedick fights submit eternal embassy society through entertainment that nightly dove king far plutus pole fate ploughmen proceeding goddess boast shore counsel rais boy watchmen decay conference calling steals fall clink mean now alone fault tyrant phoebus contagion crept not commoners sequence mar thoughts money silence boist besort henry mortality something caesar ').
emph(655, 669, ' whate fine ').
xmlMixedElement(655, 671, ' wrested ').
bold(655, 672, ' blemishes burns provok whom catastrophe poictiers soon graces march wild willingly walls following applied satisfied expect lancaster measure jauncing uses thetis utterly ').
xmlMixedElement(655, 674, ' scruple self report towards madness touching constables chapel south rank vizarded serves french yonder alb dramatis best mistrust paulina remedies prodigal gods proclaim lewis preventions etc definement sorrow preparation question sullen receive perceive fearfull engraven heed engag alms heavens base add eleanor fell were urg drops bright anchor worth arrive courageous unmanly superfluous benedick there compounds charm fumbles cashier his bowl leprosy pow amorous perceive follow murders midst above shoes unfold rich viol here marquis safety ').
listitem(638, 675).
text(675, 676).
xmlMixedElement(676, 677, 'crush seat either blast get humane quaint please agate implore sins remov character petition followers comments dancing dar careful afternoon ').
emph(676, 678, ' unquietness round scandal bring calf conjure honester ').
xmlMixedElement(676, 680, ' touch childish base cinna guilty valiant edward duty ').
emph(676, 681, ' devis creatures mangled mistake twigs swearing ').
xmlMixedElement(676, 683, ' shelter mouth camillo cost throne hum perpetual turned english say tents dearly lion difference stern cure dejected hateful nowhere didst craves good plate gall round bait disturb effect ambitious shalt want joyful bound shall travel mud sleepy revenue ').
emph(676, 684, ' bonfires teem royalty shamed ').
xmlMixedElement(676, 686, ' bird pursue claim hies silk tables bravely whip violet estates counterfeited slander they bernardo hath check march flood tongues enter cassius aspiring throne these fashion change deck lead history fellowship health modern mechanical vainly wives university counterfeit grossly correction shedding jests compact paper shroud mortality head chill preventions bear theirs ').
emph(676, 687, ' trebonius ').
xmlMixedElement(676, 689, ' lance fainted nice dead make parolles thickest wight vain there couple gathered lost counsels vulcan rags thing whiles discreet toryne bolster musing waggling hap case proper indictment mistaking requital quickly showers untimely pol ends serious thorns maidenheads cockatrice beast impossible mowbray remedies doctors intellect cup deathbed armado drives reach growing oration methought passions juliet ').
emph(676, 690, ' veil credulous endite embrace fetch alehouse ').
xmlMixedElement(676, 692, ' were weeping yourselves allegiance rogue ladies chastity cow rape hated jealousy element ').
catgraph(1, 693).
edge(693, 694).
edge_attribute_from(694, 695, 'category0').
edge_attribute_to(694, 697, 'category0').
people(1, 699).
person(699, 700).
person_attribute_id(700, 701, 'person0').
name(700, 703, 'Edwige Rotger').
emailaddress(700, 705, 'mailto:Rotger@unical.it').
phone(700, 707, '+0 (563) 40749141').
creditcard(700, 709, '3555 7127 6716 8072').
person(699, 711).
person_attribute_id(711, 712, 'person1').
name(711, 714, 'Bingning Tweedie').
emailaddress(711, 716, 'mailto:Tweedie@temple.edu').
homepage(711, 718, 'http://www.temple.edu/~Tweedie').
watches(711, 720).
watch(720, 721).
watch_attribute_open_auction(721, 722, 'open_auction2').
watch(720, 724).
watch_attribute_open_auction(724, 725, 'open_auction0').
watch(720, 727).
watch_attribute_open_auction(727, 728, 'open_auction4').
person(699, 730).
person_attribute_id(730, 731, 'person2').
name(730, 733, 'Rutger Merel').
emailaddress(730, 735, 'mailto:Merel@msn.com').
phone(730, 737, '+0 (903) 40326671').
address(730, 739).
street(739, 740, '83 Keeffe St').
city(739, 742, 'Long').
country(739, 744, 'United States').
zipcode(739, 746, '20').
profile(730, 748).
profile_attribute_income(748, 749, '69682.40').
interest(748, 751).
interest_attribute_category(751, 752, 'category0').
education(748, 754, 'College').
gender(748, 756, 'female').
business(748, 758, 'Yes').
person(699, 760).
person_attribute_id(760, 761, 'person3').
name(760, 763, 'Baldomir Melton').
emailaddress(760, 765, 'mailto:Melton@versata.com').
creditcard(760, 767, '4396 8149 5210 4179').
watches(760, 769).
watch(769, 770).
watch_attribute_open_auction(770, 771, 'open_auction3').
person(699, 773).
person_attribute_id(773, 774, 'person4').
name(773, 776, 'Mitch Koyama').
emailaddress(773, 778, 'mailto:Koyama@imag.fr').
homepage(773, 780, 'http://www.imag.fr/~Koyama').
creditcard(773, 782, '2742 7237 7761 6914').
person(699, 784).
person_attribute_id(784, 785, 'person5').
name(784, 787, 'Alassane Hogan').
emailaddress(784, 789, 'mailto:Hogan@unl.edu').
phone(784, 791, '+0 (762) 44078852').
homepage(784, 793, 'http://www.unl.edu/~Hogan').
watches(784, 795).
watch(795, 796).
watch_attribute_open_auction(796, 797, 'open_auction4').
person(699, 799).
person_attribute_id(799, 800, 'person6').
name(799, 802, 'Dietrich Maquelin').
emailaddress(799, 804, 'mailto:Maquelin@cas.cz').
phone(799, 806, '+0 (416) 69304967').
address(799, 808).
street(808, 809, '76 Tasistro St').
city(808, 811, 'Tokyo').
country(808, 813, 'United States').
province(808, 815, 'Utah').
zipcode(808, 817, '5').
creditcard(799, 819, '2684 4857 8392 9585').
profile(799, 821).
profile_attribute_income(821, 822, '59534.23').
interest(821, 824).
interest_attribute_category(824, 825, 'category0').
interest(821, 827).
interest_attribute_category(827, 828, 'category0').
interest(821, 830).
interest_attribute_category(830, 831, 'category0').
interest(821, 833).
interest_attribute_category(833, 834, 'category0').
interest(821, 836).
interest_attribute_category(836, 837, 'category0').
gender(821, 839, 'female').
business(821, 841, 'No').
person(699, 843).
person_attribute_id(843, 844, 'person7').
name(843, 846, 'Vasanth Gaudioso').
emailaddress(843, 848, 'mailto:Gaudioso@newpaltz.edu').
phone(843, 850, '+0 (756) 51213177').
address(843, 852).
street(852, 853, '11 Roccetti St').
city(852, 855, 'Vancouver').
country(852, 857, 'United States').
zipcode(852, 859, '7').
homepage(843, 861, 'http://www.newpaltz.edu/~Gaudioso').
profile(843, 863).
profile_attribute_income(863, 864, '21300.50').
interest(863, 866).
interest_attribute_category(866, 867, 'category0').
interest(863, 869).
interest_attribute_category(869, 870, 'category0').
interest(863, 872).
interest_attribute_category(872, 873, 'category0').
business(863, 875, 'No').
person(699, 877).
person_attribute_id(877, 878, 'person8').
name(877, 880, 'Yeshayahu Soriano').
emailaddress(877, 882, 'mailto:Soriano@att.com').
phone(877, 884, '+0 (724) 84384015').
address(877, 886).
street(886, 887, '58 Salveter St').
city(886, 889, 'Las').
country(886, 891, 'United States').
province(886, 893, 'New Hampshire').
zipcode(886, 895, '19').
homepage(877, 897, 'http://www.att.com/~Soriano').
profile(877, 899).
profile_attribute_income(899, 900, '24520.94').
interest(899, 902).
interest_attribute_category(902, 903, 'category0').
business(899, 905, 'Yes').
person(699, 907).
person_attribute_id(907, 908, 'person9').
name(907, 910, 'Svatopluk Quinlan').
emailaddress(907, 912, 'mailto:Quinlan@smu.edu').
phone(907, 914, '+0 (532) 3727767').
address(907, 916).
street(916, 917, '2 Simaioforidis St').
city(916, 919, 'Stockholm').
country(916, 921, 'United States').
zipcode(916, 923, '32').
creditcard(907, 925, '5862 5383 6967 8859').
profile(907, 927).
profile_attribute_income(927, 928, '83400.71').
interest(927, 930).
interest_attribute_category(930, 931, 'category0').
interest(927, 933).
interest_attribute_category(933, 934, 'category0').
education(927, 936, 'Graduate School').
gender(927, 938, 'female').
business(927, 940, 'Yes').
person(699, 942).
person_attribute_id(942, 943, 'person10').
name(942, 945, 'Jacinto Hacken').
emailaddress(942, 947, 'mailto:Hacken@forwiss.de').
phone(942, 949, '+0 (533) 13164950').
creditcard(942, 951, '5087 4652 1604 1420').
profile(942, 953).
profile_attribute_income(953, 954, '68022.05').
interest(953, 956).
interest_attribute_category(956, 957, 'category0').
interest(953, 959).
interest_attribute_category(959, 960, 'category0').
interest(953, 962).
interest_attribute_category(962, 963, 'category0').
interest(953, 965).
interest_attribute_category(965, 966, 'category0').
education(953, 968, 'Other').
gender(953, 970, 'male').
business(953, 972, 'No').
age(953, 974, '18').
person(699, 976).
person_attribute_id(976, 977, 'person11').
name(976, 979, 'Leo Zamperoni').
emailaddress(976, 981, 'mailto:Zamperoni@stanford.edu').
homepage(976, 983, 'http://www.stanford.edu/~Zamperoni').
profile(976, 985).
profile_attribute_income(985, 986, '16398.88').
interest(985, 988).
interest_attribute_category(988, 989, 'category0').
interest(985, 991).
interest_attribute_category(991, 992, 'category0').
interest(985, 994).
interest_attribute_category(994, 995, 'category0').
education(985, 997, 'High School').
gender(985, 999, 'female').
business(985, 1001, 'No').
open_auctions(1, 1003).
open_auction(1003, 1004).
open_auction_attribute_id(1004, 1005, 'open_auction0').
initial(1004, 1007, '6.12').
bidder(1004, 1009).
date(1009, 1010, '02/17/2000').
time(1009, 1012, '01:31:57').
personref(1009, 1014).
personref_attribute_person(1014, 1015, 'person1').
increase(1009, 1017, '4.50').
bidder(1004, 1019).
date(1019, 1020, '11/07/2000').
time(1019, 1022, '05:34:03').
personref(1019, 1024).
personref_attribute_person(1024, 1025, 'person6').
increase(1019, 1027, '16.50').
bidder(1004, 1029).
date(1029, 1030, '07/27/2001').
time(1029, 1032, '12:45:05').
personref(1029, 1034).
personref_attribute_person(1034, 1035, 'person3').
increase(1029, 1037, '3.00').
bidder(1004, 1039).
date(1039, 1040, '12/08/1999').
time(1039, 1042, '11:07:14').
personref(1039, 1044).
personref_attribute_person(1044, 1045, 'person10').
increase(1039, 1047, '10.50').
bidder(1004, 1049).
date(1049, 1050, '06/02/1998').
time(1049, 1052, '16:55:37').
personref(1049, 1054).
personref_attribute_person(1054, 1055, 'person0').
increase(1049, 1057, '3.00').
bidder(1004, 1059).
date(1059, 1060, '04/15/2000').
time(1059, 1062, '05:54:06').
personref(1059, 1064).
personref_attribute_person(1064, 1065, 'person10').
increase(1059, 1067, '12.00').
bidder(1004, 1069).
date(1069, 1070, '02/13/2001').
time(1069, 1072, '22:29:47').
personref(1069, 1074).
personref_attribute_person(1074, 1075, 'person10').
increase(1069, 1077, '6.00').
bidder(1004, 1079).
date(1079, 1080, '02/10/2000').
time(1079, 1082, '13:48:46').
personref(1079, 1084).
personref_attribute_person(1084, 1085, 'person1').
increase(1079, 1087, '15.00').
current(1004, 1089, '76.62').
privacy(1004, 1091, 'Yes').
itemref(1004, 1093).
itemref_attribute_item(1093, 1094, 'item0').
seller(1004, 1096).
seller_attribute_person(1096, 1097, 'person4').
annotation(1004, 1099).
author(1099, 1100).
author_attribute_person(1100, 1101, 'person7').
description(1099, 1103).
parlist(1103, 1104).
listitem(1104, 1105).
text(1105, 1106, 'jointure line caper dreadful now fish embrace horn brought eat morn polixenes norfolk your honourable chorus fitted hook steel pride proper five hue nearest sighs reform must carry incomparable them realm heaviness ').
listitem(1104, 1108).
text(1108, 1109, 'maids parley limit forever cade gav baser spite fills tender grown heard prodigal railing pound ribbon ').
listitem(1104, 1111).
text(1111, 1112).
xmlMixedElement(1112, 1113, 'execut cheeks counsellors pollution flying lecher three knife bar venge tallow merrier disdain climbing conceit possible ').
bold(1112, 1114).
xmlMixedElement(1114, 1115, ' midnight pedro unloose ').
emph(1114, 1116, ' hate spark ').
xmlMixedElement(1114, 1118, ' tucket laertes believ pick timon taste unworthy strive octavius seals happiness allegiance sooner jul heading cackling applause going feeble merit devotion consort use strew encorporal fortunes unhappy drink alone yours pedro judgment sense near owes creeps taking stretch reverence meeting certainty collected lightness possess metal ready latches laer ').
xmlMixedElement(1112, 1119, ' successively them file hollowly dislike arm conqueror express gold simular firm society driven difference dover advance blocks degenerate whole tremble humbleness monday seizure unfelt sicilia beggar doth pleas asleep pleas climb beheld happy sign moved exact companion gondolier same cow compliment liberal through ').
bold(1112, 1120, ' women forbid rank misadventur push ').
xmlMixedElement(1112, 1122, ' great oath slender seas fled tempests offence rosemary none thief walk appeach varro folks needless throws ').
happiness(1099, 1123, '10').
quantity(1004, 1125, '1').
type(1004, 1127, 'Regular').
interval(1004, 1129).
start(1129, 1130, '06/14/1999').
end(1129, 1132, '04/05/1998').
open_auction(1003, 1134).
open_auction_attribute_id(1134, 1135, 'open_auction1').
initial(1134, 1137, '33.09').
reserve(1134, 1139, '83.71').
bidder(1134, 1141).
date(1141, 1142, '11/25/2000').
time(1141, 1144, '20:38:35').
personref(1141, 1146).
personref_attribute_person(1146, 1147, 'person3').
increase(1141, 1149, '6.00').
bidder(1134, 1151).
date(1151, 1152, '01/05/1998').
time(1151, 1154, '18:26:39').
personref(1151, 1156).
personref_attribute_person(1156, 1157, 'person6').
increase(1151, 1159, '7.50').
bidder(1134, 1161).
date(1161, 1162, '05/01/1999').
time(1161, 1164, '22:39:49').
personref(1161, 1166).
personref_attribute_person(1166, 1167, 'person4').
increase(1161, 1169, '43.50').
current(1134, 1171, '90.09').
itemref(1134, 1173).
itemref_attribute_item(1173, 1174, 'item2').
seller(1134, 1176).
seller_attribute_person(1176, 1177, 'person4').
annotation(1134, 1179).
author(1179, 1180).
author_attribute_person(1180, 1181, 'person1').
description(1179, 1183).
text(1183, 1184).
xmlMixedElement(1184, 1185, 'crystal contempt gives goodwin retire copy grant tragic quickly fain highness patient injuries yields prove alliance cost progress misgives ').
bold(1184, 1186, ' drunk study ').
xmlMixedElement(1184, 1188, ' followed sort devotion member fist mote julius hazard mantua nearest wrong ignorant pleas wretched hair shouldst upward bora belly hammering datchet polonius robbers preventions avaunt ingratitude gad marcellus cimber addicted wits wat clog kill fix stained queen beguiled censure practices child ').
keyword(1184, 1189, ' dotes ').
xmlMixedElement(1184, 1191, ' gall unlocked instrument choice permit extend ').
happiness(1179, 1192, '1').
quantity(1134, 1194, '1').
type(1134, 1196, 'Featured').
interval(1134, 1198).
start(1198, 1199, '10/02/2001').
end(1198, 1201, '06/15/1999').
open_auction(1003, 1203).
open_auction_attribute_id(1203, 1204, 'open_auction2').
initial(1203, 1206, '23.40').
reserve(1203, 1208, '29.36').
current(1203, 1210, '23.40').
privacy(1203, 1212, 'Yes').
itemref(1203, 1214).
itemref_attribute_item(1214, 1215, 'item3').
seller(1203, 1217).
seller_attribute_person(1217, 1218, 'person3').
annotation(1203, 1220).
author(1220, 1221).
author_attribute_person(1221, 1222, 'person6').
description(1220, 1224).
parlist(1224, 1225).
listitem(1225, 1226).
text(1226, 1227).
xmlMixedElement(1227, 1228, 'reputed doubt moor among prayers long hereby carries any rung religious divorc deputy rests motions fardel enmity dash ').
bold(1227, 1229, ' web roses theft wherein broach fights ').
xmlMixedElement(1227, 1231, ' practice space commune women bench hare wives telling yielding torture exit quip locks garish trespasses briefly holds posture controlled written maids attempt stomachs gaols misprizing somerset sight dangerous enfranchise contraries turn hour shut woes lip patents ail ').
listitem(1225, 1232).
keyword(1233, 1234).
xmlMixedElement(1234, 1235, ' indignation tarquin frail florence hard graze virtuous ').
bold(1234, 1236, ' giving stood stagger ').
xmlMixedElement(1234, 1238, ' courtesy footing restrain achilles gain ').
text(1232, 1233).
xmlMixedElement(1233, 1239, ' comment rail mules betwixt doubt strike young wheat attention troilus tame captain sap guilt ').
listitem(1225, 1240).
text(1240, 1241, 'immaculate direct follies full heavily chastely spilling boundless chief mothers sent wholesome coventry favor ').
listitem(1225, 1243).
text(1243, 1244).
xmlMixedElement(1244, 1245, 'cleomenes thou forestall rescal mother preventions hearsed charge idolatry pale neither joy hermione apprehension overture falls troyans slight who merit story perhaps probable remembrance helm measure surveyest loath absence strive though commodity excellent partly discover extracting advertise bully leaves henceforth case dark corn month caesar pestilence king counsels liege hook yon leon eve porch lepidus ducdame gates purse hairs aloof owe crowns kentish other directly wonders malice weep physician prevent condemn rising shortens sport suffered dulcet needs almsman charity most thirty yet tempted ').
keyword(1244, 1246, ' sounded instance times quarter deserv preparation ').
xmlMixedElement(1244, 1248, ' whiles gained deadly pirates cease spoke wars endure pedro foh awak thence hamlet ').
keyword(1244, 1249, ' lusty humours ').
xmlMixedElement(1244, 1251, ' towers savage sigh turning cull spouting mistress convenient show exclaims borrowing four fin husband bestow drown herring may loud fashion ireland riches sugar horned yesterday cage such tonight neighbour villain tune disgrac hence when bethink lets centre ').
bold(1244, 1252).
xmlMixedElement(1252, 1253, ' scruple ease request ').
emph(1252, 1254, ' dost lost toward corners worcester ').
xmlMixedElement(1252, 1256, ' commonweal carlisle glove nay athens greatness preventions blind scald industry loyalty bounce people deanery bray hid honey ').
xmlMixedElement(1244, 1257, ' myself scarce inclin forwardness policy ability inveigled honest miracle minds return throats water gift parson sure heavy whereof duly britaine naked wiser northumberland hollow integrity err mak rock assistant hush ask order discover mere accuse enmity dandle eye commended hadst part cordelia four klll trot kind many cheer fran moral dream fled brabantio broke ').
bold(1244, 1258, ' brabantio ').
xmlMixedElement(1244, 1260, ' twain ladyship state cinna daughter note bell given conjured fails dust verity town whipt been vanity wronged redoubted third wag sad thrives accused torment feeding arn open living damnable dissolve discord edmund shows baby highness burgonet flesh throws prompts again horns guest other whereto she disdained closet woe ram finger embrace vouch quips draws lodowick brains disputed thunders often seas foaming collateral after quoth galleys behind reverend dragon preventions mute trim sol determination valiant famous cornwall merits succours mould each ').
bold(1244, 1261, ' suff person champaign stronger swallowed vulgar difficulties prays concealing octavius defiance manly mild tyrannous lunes slanderous ').
xmlMixedElement(1244, 1263, ' instruments wrathfully ').
bold(1244, 1264, ' submits ').
listitem(1225, 1266).
bold(1267, 1268, ' wheel them suggest capital lust ').
text(1266, 1267).
xmlMixedElement(1267, 1270, ' pleasing generation surgeon ').
happiness(1220, 1271, '5').
quantity(1203, 1273, '1').
type(1203, 1275, 'Regular').
interval(1203, 1277).
start(1277, 1278, '10/09/1998').
end(1277, 1280, '11/16/1998').
open_auction(1003, 1282).
open_auction_attribute_id(1282, 1283, 'open_auction3').
initial(1282, 1285, '74.02').
reserve(1282, 1287, '660.17').
bidder(1282, 1289).
date(1289, 1290, '06/27/2000').
time(1289, 1292, '05:48:28').
personref(1289, 1294).
personref_attribute_person(1294, 1295, 'person4').
increase(1289, 1297, '18.00').
bidder(1282, 1299).
date(1299, 1300, '03/13/1999').
time(1299, 1302, '13:32:15').
personref(1299, 1304).
personref_attribute_person(1304, 1305, 'person7').
increase(1299, 1307, '3.00').
bidder(1282, 1309).
date(1309, 1310, '06/22/1999').
time(1309, 1312, '00:26:13').
personref(1309, 1314).
personref_attribute_person(1314, 1315, 'person1').
increase(1309, 1317, '13.50').
current(1282, 1319, '108.52').
itemref(1282, 1321).
itemref_attribute_item(1321, 1322, 'item5').
seller(1282, 1324).
seller_attribute_person(1324, 1325, 'person7').
annotation(1282, 1327).
author(1327, 1328).
author_attribute_person(1328, 1329, 'person1').
description(1327, 1331).
text(1331, 1332).
xmlMixedElement(1332, 1333, 'rough ').
emph(1332, 1334, ' heaven consecrated grace thews ').
xmlMixedElement(1332, 1336, ' toil oblivion bottom fellows posture approve kisses fare attending nouns pregnant paphlagonia ').
keyword(1332, 1337, ' fortune ').
xmlMixedElement(1332, 1339, ' moods thank pot table hail soothsayer chamberlain again content catching knave laws decreed dispose list shakes neglected timeless itself misery increasing villain lov makes multiplying after deposing root preventions governor salisbury checks shifted heavenly pride profess italian difference pains alone sans plough faults weakness siege fix proper consumption parley harbor obeys reading seldom clouds incestuous peevish handsome doe lucius left forester divine forsworn furr trumpets shut question perge mamillius nothing groans evil unvarnish phoebus roses creep song drown simple animal pocket giving ').
bold(1332, 1340, ' fires weapon revenue ').
xmlMixedElement(1332, 1342, ' ragozine swain this look allottery painted ').
happiness(1327, 1343, '5').
quantity(1282, 1345, '1').
type(1282, 1347, 'Regular').
interval(1282, 1349).
start(1349, 1350, '06/04/2001').
end(1349, 1352, '03/26/1998').
open_auction(1003, 1354).
open_auction_attribute_id(1354, 1355, 'open_auction4').
initial(1354, 1357, '32.86').
current(1354, 1359, '32.86').
itemref(1354, 1361).
itemref_attribute_item(1361, 1362, 'item7').
seller(1354, 1364).
seller_attribute_person(1364, 1365, 'person4').
annotation(1354, 1367).
author(1367, 1368).
author_attribute_person(1368, 1369, 'person4').
description(1367, 1371).
text(1371, 1372).
xmlMixedElement(1372, 1373, 'rest impudent granted sceptre space hand count hates civil opens veins wast device cords something parliament attorney thought stones eternity dull lieutenant requite consent dance languishment die armourer instrument proudest mended river rude rogues bind palmers equivocal athens observance low phrase confess higher brooch sun spotted shuns old conqueror greet hurt give acting surge runs since juliet stumbled victorious finely dead greeting carve retire song shock tennis armour othello chair engine currents dies event peremptory helenus straight unbonneted nights honestly looking vouchsafe hovel pain prithee planets whites smiling found blench vain suits awak berowne peace churchyard spot air ague dotage discerning throne vouchsafe teach ministers urg bastards ground meddle impasted polack throat forehead vast preferr adelaide remov rage packs fix meg met apprehensive omitted foams helenus beams takes subjects must merry actors dog witchcraft destinies thaw alice savage pox deathsman bridal sometime sting gone executioner shipwright afeard boys partner composition since overearnest valiant cheek weighty smart come rescue faults catch preventions harry turban sweetly once surpris places pursued mistresses begg backward adulterate aspic spring fate rebellious censure lament liegemen delight hem stuck sad outrage salvation covert therefore preventions abhor contend advancement whisper misery throats character dwells dreams store guiltless leave pedro dogs sailor powerful evil language awhile importeth cross audience opinions thumb fortuna import moreover plot lap children defend rain want humility wag wast kind nonprofit villany resolv quality sluic levying showing plucks saw friendly admiral pitch limping difference juice mov succession field ').
bold(1372, 1374, ' disguised oxford ').
happiness(1367, 1376, '2').
quantity(1354, 1378, '1').
type(1354, 1380, 'Featured').
interval(1354, 1382).
start(1382, 1383, '04/03/2001').
end(1382, 1385, '02/11/1998').
open_auction(1003, 1387).
open_auction_attribute_id(1387, 1388, 'open_auction5').
initial(1387, 1390, '259.22').
bidder(1387, 1392).
date(1392, 1393, '03/17/2000').
time(1392, 1395, '10:07:48').
personref(1392, 1397).
personref_attribute_person(1397, 1398, 'person9').
increase(1392, 1400, '27.00').
current(1387, 1402, '286.22').
privacy(1387, 1404, 'No').
itemref(1387, 1406).
itemref_attribute_item(1406, 1407, 'item9').
seller(1387, 1409).
seller_attribute_person(1409, 1410, 'person7').
annotation(1387, 1412).
author(1412, 1413).
author_attribute_person(1413, 1414, 'person5').
description(1412, 1416).
keyword(1417, 1418, ' challeng scope cupbearer bocchus ').
text(1416, 1417).
xmlMixedElement(1417, 1420, ' till ').
happiness(1412, 1421, '6').
quantity(1387, 1423, '1').
type(1387, 1425, 'Featured').
interval(1387, 1427).
start(1427, 1428, '01/19/1998').
end(1427, 1430, '02/23/2000').
closed_auctions(1, 1432).
closed_auction(1432, 1433).
seller(1433, 1434).
seller_attribute_person(1434, 1435, 'person5').
buyer(1433, 1437).
buyer_attribute_person(1437, 1438, 'person4').
itemref(1433, 1440).
itemref_attribute_item(1440, 1441, 'item1').
price(1433, 1443, '157.36').
date(1433, 1445, '03/25/1999').
quantity(1433, 1447, '1').
type(1433, 1449, 'Featured').
annotation(1433, 1451).
author(1451, 1452).
author_attribute_person(1452, 1453, 'person8').
description(1451, 1455).
parlist(1455, 1456).
listitem(1456, 1457).
text(1457, 1458).
xmlMixedElement(1458, 1459, 'grief afternoon miscarried retires goats discontented why belie plague prosper taking months antick scars glib envious thank note bugle borachio proved caught diadem bank whilst shakespeare bearing tawny loyal ').
keyword(1458, 1460, ' neck farewell childish throat twenty meantime making cozen enforcement ').
xmlMixedElement(1458, 1462, ' dawning lacks harry studied losers oblivion thrust ').
listitem(1456, 1463).
text(1463, 1464).
xmlMixedElement(1464, 1465, 'lids whilst pour wholesome oblique gait leonato deadly tyrrel office francis passion above sullen accoutrement bear lamented remove shake circle stand know crept suit discourse staying caesarion marrow hatred that and honest suffic intolerable jest polyxena sees going exercise interrogatories plasterer follies mothers leon lordship flower politician acquit deliver present frown shall compel stood beaten dat lift swine since circumscrib firebrands faithful chance lecher sadly particular graces commanders answers craves lute eye since kissing ').
keyword(1464, 1466, ' kinsman victor ').
xmlMixedElement(1464, 1468, ' darkly clamours prophesied win ignorant adjacent then quote monkeys tenants obedient wrought wherefore usurps sorry ensuing erewhile circumstance counsel hale beast voice hence clothes ruler spake exeunt cloister reins edgar buy forbear save seeming appaid steeps study profess laertes harm walk tapers christ spilling ').
emph(1464, 1469, ' direction delivered horatio heart ').
xmlMixedElement(1464, 1471, ' laughter oxen stables thought huge salt preventions sour clitus troubles mocker tutors heart insolent spoke boys apemantus forgive english seventh keeper wanted knack suffers women jupiter alb odds hastings preventions foes holofernes appointed approach remember insinuate supposed lest nibbling proculeius unworthy stronger darlings nether hurl tough useful hast attraction steward break need strumpet fifty liv signal catesby advancement grounds usurp roaring seventeen privy sauce direction apparition seizes bastard partly imprison warlike please immediately christmas timorous wear ladies defence pirates sick posterns walk dimpled need desdemona dangerous suspicion prain committing yes slaves too punish breach baggage always large not cynic button hired stealeth mer mind babe watch charge contempt sorry master scarf summer gentle surly mercy juliet bethink about theme boist veins mother bagot purity house hector thetis awake forget scarce preventions bare chop marble dignity how light break evil crows tapster armado absence mean rat suddenly showing ant line unworthy county quarrelling suffolk stole thief even asleep reckless bull warm inquire villages break whereupon winds entertain chance possible fast shoes ground conceiv hunger distracted third apparent know boots edmund preventions mayst mer priests canonized piece thief ear dress drink welcome heal takes break ').
bold(1464, 1472, ' bills surest fond fortinbras oppose goodly suspect great ear palmers got cassius shun ').
listitem(1456, 1474).
text(1474, 1475).
xmlMixedElement(1475, 1476, 'necessity sweetheart eleven tightly varlet not banishment butt formerly juice knee treacherous speech acts seel although took misenum little conclusion malice confident shut incur pride years same spotted youngest off trample expedition noted names anything word blocks cur editions daughters gesture advised nevils trust descry humbled glittering choose cassio scruple doing thou pieces fated teeth winter wealth slay lives instruction malefactors mistrust usurp methinks promis grace bruise grievously hand majesty octavia maiden kites south cressid brief war meek utter urg ').
keyword(1475, 1477, ' antonius ').
xmlMixedElement(1475, 1479, ' unseal forgot requires enforced ').
bold(1475, 1480, ' signal villain mood ').
xmlMixedElement(1475, 1482, ' discovering create root serve thee cover gear cornwall naked trouble ventur run monument impediment thick strangely wishes base county chastity capulet harm companion plautus halt field remembrance pol fright ').
emph(1475, 1483, ' foul record ').
xmlMixedElement(1475, 1485, ' thyself good waking capt wiltshire faults wounds pierce forfeit stealing page mew second fox qualify rook kneels least ').
listitem(1456, 1486).
text(1486, 1487).
xmlMixedElement(1487, 1488, 'single heavenly berowne abortives distinction disaster prefers witness testament impatient ilion unacquainted god troublous watchful tak feet glad bodies trot week fishes attorney stooping aquilon fouler temptation bide about happiness letter shield arabian suggestions mortal display preventions follow vain woful prophet conclusions whit gave capitol tenth forsook tent restraint cable trade vexed juliet nestor excellent lack affairs mortality children mutton suck desire negligence twice wildest howl cyprus say daisies force unking foolishly dramatis hundred further enjoy neglected upward sole names wanton cor paper harness finish ground meg realm vaughan slower slave where lag bethink soon descend wandering rosencrantz whence knock despite lance eye sieve grew boil springe tailor chaste mourning file athwart remedy mer couple sides merrily libya mother ').
bold(1487, 1489, ' counsel beadles ').
xmlMixedElement(1487, 1491, ' moons his spiders known outlawry beginning breeches sweet way horse apothecary reechy possesses mowbray yes ').
happiness(1451, 1492, '10').
closed_auction(1432, 1494).
seller(1494, 1495).
seller_attribute_person(1495, 1496, 'person4').
buyer(1494, 1498).
buyer_attribute_person(1498, 1499, 'person2').
itemref(1494, 1501).
itemref_attribute_item(1501, 1502, 'item4').
price(1494, 1504, '168.81').
date(1494, 1506, '09/23/2001').
quantity(1494, 1508, '2').
type(1494, 1510, 'Featured, Dutch').
annotation(1494, 1512).
author(1512, 1513).
author_attribute_person(1513, 1514, 'person0').
description(1512, 1516).
text(1516, 1517).
xmlMixedElement(1517, 1518, 'friendly welshmen castles view ').
emph(1517, 1519, ' contains saves singer fantastic ').
xmlMixedElement(1517, 1521, ' again rear spacious mistresses collection moved slay anjou unpossess knows thanks shown found ease meed dreadful setting traverse tax presentation therefore jumps portia tickling tried teen bids esteem knife villains ').
keyword(1517, 1522, ' would serv salve edward justices ').
xmlMixedElement(1517, 1524, ' marching envy exit speciously could true wrapp birds asking belief unlook reprobate foul rub gloucester ligarius right nice noise ridiculous ').
emph(1517, 1525, ' hurt outward sex thankful starting dim drawing props ').
xmlMixedElement(1517, 1527, ' tucket sure ').
keyword(1517, 1528, ' surely thief kin everything aid derive ventidius briber lips inheritance thronged discontented chaste sallets brace meet vein wealth evermore ').
xmlMixedElement(1517, 1530, ' books disgrace comely monstrous linen dismay ').
happiness(1512, 1531, '10').
closed_auction(1432, 1533).
seller(1533, 1534).
seller_attribute_person(1534, 1535, 'person5').
buyer(1533, 1537).
buyer_attribute_person(1537, 1538, 'person4').
itemref(1533, 1540).
itemref_attribute_item(1540, 1541, 'item6').
price(1533, 1543, '152.52').
date(1533, 1545, '05/21/2001').
quantity(1533, 1547, '1').
type(1533, 1549, 'Regular').
annotation(1533, 1551).
author(1551, 1552).
author_attribute_person(1552, 1553, 'person2').
description(1551, 1555).
text(1555, 1556).
xmlMixedElement(1556, 1557, 'book obeys proud prince heaven walk dane works adieu bleed sorrows more those foolish parish prove poet find ').
emph(1556, 1558, ' sustain foreward spain exit war rhyme ').
xmlMixedElement(1556, 1560, ' otherwise belov seeming dates expressly hourly waiting elements snowy persever wolves beating slip maiden cannon drave heard accursed eleanor cull turks bitter masterly evil pandarus fall dear banished her ').
emph(1556, 1561, ' dance sought rent out fond flow eight ').
xmlMixedElement(1556, 1563, ' capricious added bury lay zeal awake dare jerusalem extremes nearer allottery accus copyright slack confound stir ').
emph(1556, 1564, ' ilium anguish ridiculous knighted stranger dropping stealing amaz beatrice die replies proclaim ').
xmlMixedElement(1556, 1566, ' ache faint therefore courtesy stomach sustain lend bans derby beggar wars writ ').
keyword(1556, 1567, ' regan livery whit provoked ').
xmlMixedElement(1556, 1569, ' willoughby talks mother sins alack sceptres seeking rout ').
emph(1556, 1570, ' wanton pregnant relent parting beguile privilege reckoning sport ').
happiness(1551, 1572, '1').
closed_auction(1432, 1574).
seller(1574, 1575).
seller_attribute_person(1575, 1576, 'person4').
buyer(1574, 1578).
buyer_attribute_person(1578, 1579, 'person6').
itemref(1574, 1581).
itemref_attribute_item(1581, 1582, 'item8').
price(1574, 1584, '12.65').
date(1574, 1586, '11/11/1999').
quantity(1574, 1588, '1').
type(1574, 1590, 'Featured').
annotation(1574, 1592).
author(1592, 1593).
author_attribute_person(1593, 1594, 'person7').
description(1592, 1596).
text(1596, 1597).
xmlMixedElement(1597, 1598, 'troilus harp paintings huddling french write gossamer whips color keeper husbands bite lieutenant learnt entreaty attempt ').
keyword(1597, 1599, ' man ').
xmlMixedElement(1597, 1601, ' bianca loud receiv infinite ').
emph(1597, 1602, ' began counterfeit likeness fairies preventions flats caesar check looks regard negligence ').
xmlMixedElement(1597, 1604, ' storm already laur moe greece fevers catesby feels from dagger logs coward part pauca delay seas fight youthful leads bitterness horses meet smells tabor jest avoid sequent when given hunt corrections ').
keyword(1597, 1605, ' lays ').
xmlMixedElement(1597, 1607, ' virtuously anjou name battles mirror cripple made infant noted quarter ').
keyword(1597, 1608, ' colder heavily strangle violence apprehends gear ').
xmlMixedElement(1597, 1610, ' brave ').
emph(1597, 1611, ' dare clothes onset congregation forgot counsel enmity mire stubborn posts overcame youngest right ').
xmlMixedElement(1597, 1613, ' earl delights pillage else rapier clears sake cornelius paulina checks boast knees bestowed already sovereignty hunting behold frozen separated air hid preventions kill over delight spotted decay rascally creatures merry push hears subscrib cowards gain ben traffic belongs oracles tire ').
keyword(1597, 1614).
xmlMixedElement(1614, 1615, ' rousillon picked ').
emph(1614, 1616, ' abroad limits hit personae imperfect vaughan ridges keeps offer pleads pawn turn blust whate priest fist marcheth run pen ').
xmlMixedElement(1614, 1618, ' morton revive taking proper excuse reigns once infidels subdued sight tybalt betide ').
xmlMixedElement(1597, 1619, ' stirs ago stars region rich preventions cares power cruel brought shallow richer engirt ').
happiness(1592, 1620, '6').
closed_auction(1432, 1622).
seller(1622, 1623).
seller_attribute_person(1623, 1624, 'person7').
buyer(1622, 1626).
buyer_attribute_person(1626, 1627, 'person7').
itemref(1622, 1629).
itemref_attribute_item(1629, 1630, 'item10').
price(1622, 1632, '85.33').
date(1622, 1634, '12/14/2001').
quantity(1622, 1636, '1').
type(1622, 1638, 'Regular').
annotation(1622, 1640).
author(1640, 1641).
author_attribute_person(1641, 1642, 'person2').
description(1640, 1644).
text(1644, 1645).
xmlMixedElement(1645, 1646, 'circumscription coz acknowledge doubt miseries comedy debts whored canker assure middle powers stare epithet ').
bold(1645, 1647, ' pluto about living offal sir resolute weigh ').
xmlMixedElement(1645, 1649, ' city proverb slackness disposition who virgin imaginations addle resign bawdry contracted parlors hereford ').
keyword(1645, 1650).
xmlMixedElement(1650, 1651, ' abate ').
bold(1650, 1652, ' cell rivers flesh loyal pith ').
xmlMixedElement(1650, 1654, ' virtuous jerkin beg ').
xmlMixedElement(1645, 1655, ' desert ambitious parties weakly blow liege france hollow festinately lists dean acquainted near insinuate deck afeard glorious commission charges ').
keyword(1645, 1656, ' philadelphos faint attach delicate fourscore very killed wisdom nod disobedient set sphere dorset ').
xmlMixedElement(1645, 1658, ' turbulent enjoyed opposite prosperity does escalus nearest shoes favour trial ').
happiness(1640, 1659, '8').
closed_auction(1432, 1661).
seller(1661, 1662).
seller_attribute_person(1662, 1663, 'person4').
buyer(1661, 1665).
buyer_attribute_person(1665, 1666, 'person4').
itemref(1661, 1668).
itemref_attribute_item(1668, 1669, 'item11').
price(1661, 1671, '98.31').
date(1661, 1673, '01/08/2001').
quantity(1661, 1675, '1').
type(1661, 1677, 'Regular').
annotation(1661, 1679).
author(1679, 1680).
author_attribute_person(1680, 1681, 'person2').
description(1679, 1683).
text(1683, 1684, 'sinon hideous rarely examined merchants jack articles abhor goose transformation aurora daggers demonstrate weed escape brand lion remembrance arise copy yare security shave vulgar mystery justice loses great shameful imposition hot dearest lawful moved affection whereon pyrrhus chase uttered big death very put bills secrets athenian flourishes dictynna furnish took controversy poverty scraps ').
happiness(1679, 1686, '2').
indexOf([Element|_], Element, 1):- !. 
indexOf([_|Tail], Element, Index):- 
indexOf(Tail, Element, Index1),!, 
Index is Index1+1. 
  member1(X,[H|_]) :- X==H,!. 
  member1(X,[_|T]) :- member1(X,T). 
  distinct([],[]). 
  distinct([H|T],C) :- member1(H,T),!, distinct(T,C). 
  distinct([H|T],[H|C]) :- distinct(T,C). 
  remv([], []).
  remv([H|T], N) :- var(H), !, remv(T, N).
  remv([H|T], [H|N]) :- remv(T, N).
  cleanList(LISTA, LISTB) :- nonvar(LISTA),(remv(LISTA,LISTC),distinct(LISTC,LISTB));true.
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
 substringBeforeList([H|T], [H1|T1],STRINGRESULT,STRINGRESULTAUX):- H==H1 , ( (var(STRINGRESULTAUX), STRINGRESULT = ''; atom_chars(STRINGRESULT,STRINGRESULTAUX)),!); addEndList(H,STRINGRESULTAUX,STRINGRESULTTEMP),substringBeforeList(T,[H1|T1],STRINGRESULT,STRINGRESULTTEMP),!.
 substringAfter(STRING1, STRING2, STRINGRESULT) :- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2),
 substringAfterList(STR1,STR2,STRINGRESULT).
 substringAfterList([],_,STRINGRESULT):-  STRINGRESULT = ''.
 substringAfterList([H|T], [H1|T1],STRINGRESULT):- H==H1 , (copyList(T,STRINGRESULTLIST),atom_chars(STRINGRESULT,STRINGRESULTLIST),!);substringAfterList(T,[H1|T1],STRINGRESULT),!.
 normalizeSpace(TEXT,STRINGRESULT) :- atom_chars(TEXT,STR),
 normalizeSpaceList(STR,STRINGRESULT).
 normalizeSpaceList(STR,STRINGRESULT) :- normalizeSpaceList(STR,STRINGRESULT,TMPSTRINGRESULT), write(STRINGRESULT), atom_chars(TMPSTRINGRESULT,STRINGRESULT),!.
 normalizeSpaceList([H|T],STRINGRESULT,TMPSTRINGRESULT) :- \+ H=' ' , (addEndList(H,TMPSTRINGRESULT,NEWTMP),normalizeSpaceList(T,STRINGRESULT,NEWTMP),!); normalizeSpaceList(T,STRINGRESULT,TMPSTRINGRESULT).
 normalizeSpaceList([],STRINGRESULT,TMPRESULTLIST).%var(TMPRESULTLIST) -> STRINGRESULT = []; STRINGRESULT = TMPRESULTLIST.
 contains(STRINGA, STRINGB) :- atom_chars(STRINGA,X), atom_chars(STRINGB,Y),
 containsListOrder(X,Y).
 containsListOrder([],_) :- false.
 containsListOrder([H|T], [H1|T1]) :- H==H1 , (compare(T,T1),!);containsListOrder(T,[H1|T1]).
 startsWith(STRING1, STRING2) :- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2),
 startsWithList(STR1,STR2).
 startsWithList([],_):-  false,!.
 startsWithList(_,[]):-  true,!. 
 startsWithList([H|T], [H1|T1]):- H==H1 , (startsWithList(T,T1)); false.
 endsWith(STRING1, STRING2) :- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2),
 endsWithList(STR1,STR2).
 endsWithList(_,[]):-  false,!.
 endsWithList([],_):-  false,!.
 endsWithList([H|T], [H1|T1]):- H==H1 , ( compareList(T,T1),!);endsWithList(T,[H1|T1]).
 concat(STRINGINPUT,RESULT) :- tokenize(STRINGINPUT,',',TOKENIZERESULT),concatList(TOKENIZERESULT,TMPRESULT,RESULT).
  concatList([],TMPRESULT,RESULT) :- RESULT = TMPRESULT.
  concatList([H|T],TMPRESULT,RESULT):-  (nonvar(TMPRESULT), atom_concat(TMPRESULT,H,NEWTMPRESULT);NEWTMPRESULT = H),concatList(T,NEWTMPRESULT,RESULT),!.
 tokenize(STRING,TOKEN,RESULT) :- atom_chars(STRING,STR1),tokenizeList(STR1,TOKEN,TMPLIST,TMPRESULT,RESULTLIST),
   transformCharList(RESULTLIST, RESULTCHAR, RESULT).
 transformCharList([],RESULTCHAR,RESULT) :- RESULT = RESULTCHAR.
 transformCharList([H|T],RESULTCHAR,RESULT) :- atom_chars(STRING,H),addEndList(STRING,RESULTCHAR,NEWRESULTCHAR), transformCharList(T,NEWRESULTCHAR,RESULT),!.
 tokenizeList([],TOKEN,TMPLIST,TMPRESULT,RESULT):- addEndList(TMPLIST,TMPRESULT,NEWRESULTTMP),RESULT = NEWRESULTTMP,!.
 tokenizeList([H|T],TOKEN,TMPLIST,TMPRESULT,RESULT) :- H == TOKEN , (addEndList(TMPLIST,TMPRESULT,NEWRESULTTMP),tokenizeList(T,TOKEN,NEWTMPLIST,NEWRESULTTMP,RESULT),!) ;addEndList(H,TMPLIST,NEWTMPLIST), tokenizeList(T,TOKEN,NEWTMPLIST,TMPRESULT, RESULT),!.
 tokenize(STRING,TOKEN,RESULT) :- atom_chars(STRING,STR1),tokenizeList(STR1,TOKEN,TMPLIST,TMPRESULT,RESULTLIST), 
 transformCharList(RESULTLIST, RESULTCHAR, RESULT).
 stringLength(STRING,LENGTH) :- atom_chars(STRING,STR1),listSize(STR1,LENGTH).
 listSize([H|T],LENGTH) :- listSize([H|T],LENGTH,0).
 listSize([H|T],LENGTH,TMPLENGTH) :- NEWTMPLENGTH is TMPLENGTH +1, listSize(T,LENGTH,NEWTMPLENGTH).
 listSize([],LENGTH,TMPLENGTH) :-  LENGTH = TMPLENGTH,!.
 compareNumber(STRING1,STRING2,RESULT):- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2),compareNumberList(STR1,STR2,RESULT).
 compareNumberList([], [],NUMBER):- NUMBER = 0.
 compareNumberList([H|T], [H1|T1],NUMBER) :- H==H1 ,(compareNumberList(T,T1,NUMBER),!); (H@>H1->NUMBER = 1; NUMBER = -1).
 substring(STRING1,START,END,RESULT) :- atom_chars(STRING1,STR1),substringList(STR1,START,END,2,RESULTLIST),atom_chars(RESULT,RESULTLIST).
 substringList([I|L],START,END,COUNT,RESULT):- START ==COUNT,take(END,L,RESULT). 
 substringList([I|L],START,END,COUNT,RESULT):- COUNT < START,NCOUNT is COUNT +1, substringList(L,START,END,NCOUNT,RESULT). 
 take(N, _, Xs) :- N =< 0, !, N =:= 0, Xs = []. 
 take(_, [], []). 
 take(N, [X|Xs], [X|Ys]) :- M is N-1, take(M, Xs, Ys). 
 copyNList( COPIEDLIST,RESULTLIST, SIZE) :- copyNList(COPIEDLIST,RESULTLIST,SIZE,0,TMPRESULTLIST).
 copyNList([H|T],RESULTLIST,SIZE,ACTUALSIZE,TMPRESULTLIST) :- SIZE == ACTUALSIZE , (var(TMPRESULTLIST) , RESULTLIST = []; RESULTLIST = TMPRESULTLIST); addEndList(H,TMPRESULTLIST,NEWTMP),TMPACTUALSIZE is ACTUALSIZE +1, copyNList(T,RESULTLIST,SIZE,TMPACTUALSIZE,NEWTMP).
 %copyNList([H|T],RESULTLIST,TMPRESULTLIST) :- addEndList(H,TMPRESULTLIST,NEWTMP), copyList(T,RESULTLIST,NEWTMP).
 copyNList([],RESULTLIST,SIZE,ACTUALSIZE,TMPRESULTLIST) :-  var(TMPRESULTLIST) , RESULTLIST = []; RESULTLIST = TMPRESULTLIST.
 contains(STRING1, STRING2) :- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2),
 containsList(STR1,STR2). 
 containsList(_,[]) :- false.
 containsList([],_) :- false.
 containsList([H|T], [H1|T1]) :- H==H1,(compareList(T,T1),!);containsList(T, [H1|T1]). 
 compareList(_, []):- true.
 compareList([H|T], [H1|T1]) :- H==H1 ,(compareList(T,T1),!);false.
 compareList([],[]):- true,!.
 compareList([H|T], [H1|T1]):- H==H1 ,(compareList(T,T1));false.
 compare(_, []):- true.
 compare([], _):- false.
 compare([H|T], [H1|T1]) :- H==H1 ,(compare(T,T1)).
 myfloor(INPUT, OUTPUT):- TMPOUTPUT is floor(INPUT), OUTPUT = TMPOUTPUT.
 myceiling(INPUT, OUTPUT):-   mynumber(INPUT,NINPUT), TMPOUTPUT is ceiling(NINPUT), OUTPUT = TMPOUTPUT.
 myround(INPUT, OUTPUT):-   OUTPUT is round(INPUT).
 sum(List, Sum) :-
 		    sum(List, 0, Sum).
 sum([], Accumulator, Accumulator).
 sum([Head|Tail], Accumulator, Result) :-
 	  mynumber(Head,NHEAD),  NewAccumulator is Accumulator + NHEAD,
 sum(Tail, NewAccumulator, Result). 
 %Copy one List to another 
 copyList( COPIEDLIST,RESULTLIST) :- copyList(COPIEDLIST,RESULTLIST,TMPRESULTLIST).
 copyList([H|T],RESULTLIST,TMPRESULTLIST) :- addEndList(H,TMPRESULTLIST,NEWTMP), copyList(T,RESULTLIST,NEWTMP).
 copyList([],RESULTLIST,TMPRESULTLIST) :-  var(TMPRESULTLIST) , RESULTLIST = []; RESULTLIST = TMPRESULTLIST.
 %addEndList(X,L,L1)
 %adds element X to the end of the list L and returns L1
 addEndList(X,[],[X]).
 addEndList(X,[A|L],[A|L1]):- 
 addEndList(X,L,L1). 
 mynumber(INPUT, OUTPUT):-  number(INPUT),OUTPUT = INPUT,!.
 mynumber(INPUT, OUTPUT):- num_atom(OUTPUT,INPUT); atom_chars(INPUT,TMP), number_chars(OUTPUT,TMP). 
 num_atom(INPUT, OUTPUT):- false. 
 count(List, Count) :- 
 		count(List, 0, Count). 
 count([], Accumulator, Accumulator). 
 count([Head|Tail], Accumulator, Result) :- 
    NewAccumulator is Accumulator + 1, 
 count(Tail, NewAccumulator, Result). 
 div(N1,N2,OUT) :-   N2>0,OUT is N1/N2.%mynumber(N1,NN1), mynumber(N2,NN2), (NN2==0,OUT=0.0,!; OUT is NN1/NN2 ). 
 div(_,0,0). 
  minus([H|T1],L2,[H|L3]):- 
     not(member(H,L2)), 
     minus(T1,L2,L3). 
 minus([H|T1],L2,L3):- 
     member(H,L2), 
     minus(T1,L2,L3). 
 minus([],_,[]). 
 boolean(VARIN,BOOLOUT) :- nonvar(VARIN) , BOOLOUT = true ; BOOLOUT = false. 
 not(VARIN,BOOLOUT) :- nonvar(VARIN) , BOOLOUT = false ; (BOOLOUT = true). 
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
 printnl(VAR):- write('\n'). %print(VAR),print('\n'). 
 nlprint(VAR):- print('\n'),print(VAR). 
 translate(IN,REP,REPOUT,OUT) :- atom_chars(IN,NIN),atom_chars(REP,NREP),atom_chars(REPOUT,NREPOUT) 
, replaceAll(NIN,NREP,NREPOUT,NOUT)
,atom_chars(OUT,NOUT).   
 replaceAll([],_Pattern,_Replace,[]):-  
   !. 
 replaceAll(OldString,Pattern,Replace,NewString):- 
  startsWith2(OldString,Pattern,Rest), 
  !, 
  replaceAll(Rest,Pattern,Replace,TailNewString), 
   append(Replace,TailNewString,NewString). 
 replaceAll([H|TailOldString],Pattern,Replace,[H|TailNewString]):- 
  replaceAll(TailOldString,Pattern,Replace,TailNewString). 
 startsWith2(OldString,[],OldString):-  
  !. 
 startsWith2([H|TOldString],[H|T],Rest):-  
  !, 
  startsWith2(TOldString,T,Rest). 
 string_concat(STR1,STR2,OUT):- atom_chars(STR1,STR1L), atom_chars(STR2,STR2L) 
 ,append(STR1L,STR2L,OUTL), atom_chars(OUT,OUTL).
 listOfList([[H|_]|_]). 
 first_listOflist([],_). 
 first_listOflist([[H|_]|[]],[H]):- !. 
 first_listOflist([[H|_]|T],[H|T1]):- first_listOflist(T,T1). 
 following(LISTIN,LIST) :- listOfList(LISTIN) , (first_listOflist(LISTIN,LIST));first_list(LISTIN,LIST). 
 first_list([Y|Tail],[Y]). 
 first_list([X],[X]). 
 last_listOflist([],_). 
 last_listOflist([[_|T]|[]],[H]):- last_list(T,H),!. 
 last_listOflist([[_|T]|T1],[H|T2]):- last_list(T,H),last_listOflist(T1,T2). 
 preceding(LISTIN,LIST) :- listOfList(LISTIN) , (last_listOflist(LISTIN,LIST));last_list(LISTIN,X),LIST = [X]. 
 last_list([Y|Tail],LISTIN):-last_list(Tail,LISTIN). 
 last_list([X],X). 
