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
