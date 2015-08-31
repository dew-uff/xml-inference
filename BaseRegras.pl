html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
html(IDHTML, IDHEAD, IDBODY) :- head(IDHTML, IDHEAD), body(IDHTML, IDBODY).
html(IDHTML, XMLNS_XLINK) :- html_attribute_xmlns_xlink(IDHTML, IDXMLNS_XLINK,XMLNS_XLINK).
html(IDHTML, XML_LANG) :- html_attribute_xml_lang(IDHTML, IDXML_LANG,XML_LANG).
head(IDPARENT, IDHEAD, TITLE) :- title(IDHEAD, IDTITLE,TITLE).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, HR) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), hr(IDBODY, IDHR,HR).
body(IDPARENT, IDBODY, H1, IDSVG_SVG, P) :- h1(IDBODY, IDH1,H1), svg_svg(IDBODY, IDSVG_SVG), p(IDBODY, IDP,P).
h1(IDPARENT, IDH1, ALIGN) :- h1_attribute_align(IDH1, IDALIGN,ALIGN).
svg_svg(IDPARENT, IDSVG_SVG, XMLNS_SVG) :- svg_svg_attribute_xmlns_svg(IDSVG_SVG, IDXMLNS_SVG,XMLNS_SVG).
svg_svg(IDPARENT, IDSVG_SVG, SVG_WIDTH) :- svg_svg_attribute_svg_width(IDSVG_SVG, IDSVG_WIDTH,SVG_WIDTH).
svg_svg(IDPARENT, IDSVG_SVG, SVG_HEIGHT) :- svg_svg_attribute_svg_height(IDSVG_SVG, IDSVG_HEIGHT,SVG_HEIGHT).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RX) :- svg_ellipse_attribute_svg_rx(IDSVG_ELLIPSE, IDSVG_RX,SVG_RX).
svg_ellipse(IDPARENT, IDSVG_ELLIPSE, SVG_RY) :- svg_ellipse_attribute_svg_ry(IDSVG_ELLIPSE, IDSVG_RY,SVG_RY).
svg_rect(IDPARENT, IDSVG_RECT, SVG_X) :- svg_rect_attribute_svg_x(IDSVG_RECT, IDSVG_X,SVG_X).
svg_rect(IDPARENT, IDSVG_RECT, SVG_Y) :- svg_rect_attribute_svg_y(IDSVG_RECT, IDSVG_Y,SVG_Y).
svg_rect(IDPARENT, IDSVG_RECT, SVG_WIDTH) :- svg_rect_attribute_svg_width(IDSVG_RECT, IDSVG_WIDTH,SVG_WIDTH).
svg_rect(IDPARENT, IDSVG_RECT, SVG_HEIGHT) :- svg_rect_attribute_svg_height(IDSVG_RECT, IDSVG_HEIGHT,SVG_HEIGHT).
p(IDPARENT, IDP, XLINK_HREF) :- p_attribute_xlink_href(IDP, IDXLINK_HREF,XLINK_HREF).
p(IDPARENT, IDP, XLINK_TYPE) :- p_attribute_xlink_type(IDP, IDXLINK_TYPE,XLINK_TYPE).
p(IDPARENT, IDP, XML_LANG) :- p_attribute_xml_lang(IDP, IDXML_LANG,XML_LANG).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
site(IDSITE, IDREGIONS, IDCATEGORIES, IDCATGRAPH, IDPEOPLE, IDOPEN_AUCTIONS, IDCLOSED_AUCTIONS) :- regions(IDSITE, IDREGIONS), categories(IDSITE, IDCATEGORIES), catgraph(IDSITE, IDCATGRAPH), people(IDSITE, IDPEOPLE), open_auctions(IDSITE, IDOPEN_AUCTIONS), closed_auctions(IDSITE, IDCLOSED_AUCTIONS).
regions(IDPARENT, IDREGIONS, IDAFRICA, IDASIA, IDAUSTRALIA, IDEUROPE, IDNAMERICA, IDSAMERICA) :- africa(IDREGIONS, IDAFRICA), asia(IDREGIONS, IDASIA), australia(IDREGIONS, IDAUSTRALIA), europe(IDREGIONS, IDEUROPE), namerica(IDREGIONS, IDNAMERICA), samerica(IDREGIONS, IDSAMERICA).
africa(IDPARENT, IDAFRICA, IDITEM) :- item(IDAFRICA, IDITEM).
asia(IDPARENT, IDASIA, IDITEM) :- item(IDASIA, IDITEM).
australia(IDPARENT, IDAUSTRALIA, IDITEM) :- item(IDAUSTRALIA, IDITEM).
europe(IDPARENT, IDEUROPE, IDITEM) :- item(IDEUROPE, IDITEM).
namerica(IDPARENT, IDNAMERICA, IDITEM) :- item(IDNAMERICA, IDITEM).
samerica(IDPARENT, IDSAMERICA, IDITEM) :- item(IDSAMERICA, IDITEM).
categories(IDPARENT, IDCATEGORIES, IDCATEGORY) :- category(IDCATEGORIES, IDCATEGORY).
category(IDPARENT, IDCATEGORY, NAME, IDDESCRIPTION) :- name(IDCATEGORY, IDNAME,NAME), description(IDCATEGORY, IDDESCRIPTION).
category(IDPARENT, IDCATEGORY, ID) :- category_attribute_id(IDCATEGORY, IDID,ID).
catgraph(IDPARENT, IDCATGRAPH, IDEDGE) :- edge(IDCATGRAPH, IDEDGE).
edge(IDPARENT, IDEDGE, FROM) :- edge_attribute_from(IDEDGE, IDFROM,FROM).
edge(IDPARENT, IDEDGE, TO) :- edge_attribute_to(IDEDGE, IDTO,TO).
people(IDPARENT, IDPEOPLE, IDPERSON) :- person(IDPEOPLE, IDPERSON).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, CREDITCARD) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), creditcard(IDPERSON, IDCREDITCARD,CREDITCARD).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, HOMEPAGE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), homepage(IDPERSON, IDHOMEPAGE,HOMEPAGE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDADDRESS) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), address(IDPERSON, IDADDRESS).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, PHONE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), phone(IDPERSON, IDPHONE,PHONE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDPROFILE) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), profile(IDPERSON, IDPROFILE).
person(IDPARENT, IDPERSON, NAME, EMAILADDRESS, IDWATCHES) :- name(IDPERSON, IDNAME,NAME), emailaddress(IDPERSON, IDEMAILADDRESS,EMAILADDRESS), watches(IDPERSON, IDWATCHES).
person(IDPARENT, IDPERSON, ID) :- person_attribute_id(IDPERSON, IDID,ID).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, PROVINCE, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), province(IDADDRESS, IDPROVINCE,PROVINCE), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
address(IDPARENT, IDADDRESS, STREET, CITY, COUNTRY, ZIPCODE) :- street(IDADDRESS, IDSTREET,STREET), city(IDADDRESS, IDCITY,CITY), country(IDADDRESS, IDCOUNTRY,COUNTRY), zipcode(IDADDRESS, IDZIPCODE,ZIPCODE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS, AGE) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS), age(IDPROFILE, IDAGE,AGE).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, GENDER, BUSINESS) :- interest(IDPROFILE, IDINTEREST), gender(IDPROFILE, IDGENDER,GENDER), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, EDUCATION, BUSINESS) :- interest(IDPROFILE, IDINTEREST), education(IDPROFILE, IDEDUCATION,EDUCATION), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, IDINTEREST, BUSINESS) :- interest(IDPROFILE, IDINTEREST), business(IDPROFILE, IDBUSINESS,BUSINESS).
profile(IDPARENT, IDPROFILE, INCOME) :- profile_attribute_income(IDPROFILE, IDINCOME,INCOME).
interest(IDPARENT, IDINTEREST, CATEGORY) :- interest_attribute_category(IDINTEREST, IDCATEGORY,CATEGORY).
watches(IDPARENT, IDWATCHES, IDWATCH) :- watch(IDWATCHES, IDWATCH).
watch(IDPARENT, IDWATCH, OPEN_AUCTION) :- watch_attribute_open_auction(IDWATCH, IDOPEN_AUCTION,OPEN_AUCTION).
open_auctions(IDPARENT, IDOPEN_AUCTIONS, IDOPEN_AUCTION) :- open_auction(IDOPEN_AUCTIONS, IDOPEN_AUCTION).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, PRIVACY, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), privacy(IDOPEN_AUCTION, IDPRIVACY,PRIVACY), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, IDBIDDER, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), bidder(IDOPEN_AUCTION, IDBIDDER), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, RESERVE, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), reserve(IDOPEN_AUCTION, IDRESERVE,RESERVE), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, INITIAL, CURRENT, IDITEMREF, IDSELLER, IDANNOTATION, QUANTITY, TYPE, IDINTERVAL) :- initial(IDOPEN_AUCTION, IDINITIAL,INITIAL), current(IDOPEN_AUCTION, IDCURRENT,CURRENT), itemref(IDOPEN_AUCTION, IDITEMREF), seller(IDOPEN_AUCTION, IDSELLER), annotation(IDOPEN_AUCTION, IDANNOTATION), quantity(IDOPEN_AUCTION, IDQUANTITY,QUANTITY), type(IDOPEN_AUCTION, IDTYPE,TYPE), interval(IDOPEN_AUCTION, IDINTERVAL).
open_auction(IDPARENT, IDOPEN_AUCTION, ID) :- open_auction_attribute_id(IDOPEN_AUCTION, IDID,ID).
bidder(IDPARENT, IDBIDDER, DATE, TIME, IDPERSONREF, INCREASE) :- date(IDBIDDER, IDDATE,DATE), time(IDBIDDER, IDTIME,TIME), personref(IDBIDDER, IDPERSONREF), increase(IDBIDDER, IDINCREASE,INCREASE).
personref(IDPARENT, IDPERSONREF, PERSON) :- personref_attribute_person(IDPERSONREF, IDPERSON,PERSON).
interval(IDPARENT, IDINTERVAL, START, END) :- start(IDINTERVAL, IDSTART,START), end(IDINTERVAL, IDEND,END).
closed_auctions(IDPARENT, IDCLOSED_AUCTIONS, IDCLOSED_AUCTION) :- closed_auction(IDCLOSED_AUCTIONS, IDCLOSED_AUCTION).
closed_auction(IDPARENT, IDCLOSED_AUCTION, IDSELLER, IDBUYER, ITEMNAME, PRICE, DATE, QUANTITY, TYPE, IDANNOTATION) :- seller(IDCLOSED_AUCTION, IDSELLER), buyer(IDCLOSED_AUCTION, IDBUYER), itemname(IDCLOSED_AUCTION, IDITEMNAME,ITEMNAME), price(IDCLOSED_AUCTION, IDPRICE,PRICE), date(IDCLOSED_AUCTION, IDDATE,DATE), quantity(IDCLOSED_AUCTION, IDQUANTITY,QUANTITY), type(IDCLOSED_AUCTION, IDTYPE,TYPE), annotation(IDCLOSED_AUCTION, IDANNOTATION).
buyer(IDPARENT, IDBUYER, PERSON) :- buyer_attribute_person(IDBUYER, IDPERSON,PERSON).
item(IDPARENT, IDITEM, LOCATION, QUANTITY, NAME, PAYMENT, IDDESCRIPTION, SHIPPING, IDINCATEGORY, IDMAILBOX) :- location(IDITEM, IDLOCATION,LOCATION), quantity(IDITEM, IDQUANTITY,QUANTITY), name(IDITEM, IDNAME,NAME), payment(IDITEM, IDPAYMENT,PAYMENT), description(IDITEM, IDDESCRIPTION), shipping(IDITEM, IDSHIPPING,SHIPPING), incategory(IDITEM, IDINCATEGORY), mailbox(IDITEM, IDMAILBOX).
item(IDPARENT, IDITEM, FEATURED) :- item_attribute_featured(IDITEM, IDFEATURED,FEATURED).
item(IDPARENT, IDITEM, ID) :- item_attribute_id(IDITEM, IDID,ID).
incategory(IDPARENT, IDINCATEGORY, CATEGORY) :- incategory_attribute_category(IDINCATEGORY, IDCATEGORY,CATEGORY).
mailbox(IDPARENT, IDMAILBOX, IDMAIL) :- mail(IDMAILBOX, IDMAIL).
mail(IDPARENT, IDMAIL, FROM, TO, DATE, TEXT) :- from(IDMAIL, IDFROM,FROM), to(IDMAIL, IDTO,TO), date(IDMAIL, IDDATE,DATE), text(IDMAIL, IDTEXT,TEXT).
description(IDPARENT, IDDESCRIPTION, IDPARLIST) :- parlist(IDDESCRIPTION, IDPARLIST).
description(IDPARENT, IDDESCRIPTION, TEXT) :- text(IDDESCRIPTION, IDTEXT,TEXT).
itemref(IDPARENT, IDITEMREF, ITEM) :- itemref_attribute_item(IDITEMREF, IDITEM,ITEM).
seller(IDPARENT, IDSELLER, PERSON) :- seller_attribute_person(IDSELLER, IDPERSON,PERSON).
annotation(IDPARENT, IDANNOTATION, IDAUTHOR, IDDESCRIPTION, HAPPINESS) :- author(IDANNOTATION, IDAUTHOR), description(IDANNOTATION, IDDESCRIPTION), happiness(IDANNOTATION, IDHAPPINESS,HAPPINESS).
author(IDPARENT, IDAUTHOR, PERSON) :- author_attribute_person(IDAUTHOR, IDPERSON,PERSON).
text(IDPARENT, IDTEXT, BOLD) :- bold(IDTEXT, IDBOLD,BOLD).
text(IDPARENT, IDTEXT, EMPH) :- emph(IDTEXT, IDEMPH,EMPH).
text(IDPARENT, IDTEXT, KEYWORD) :- keyword(IDTEXT, IDKEYWORD,KEYWORD).
parlist(IDPARENT, IDPARLIST, IDLISTITEM) :- listitem(IDPARLIST, IDLISTITEM).
listitem(IDPARENT, IDLISTITEM, IDPARLIST, TEXT) :- parlist(IDLISTITEM, IDPARLIST), text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, TEXT) :- text(IDLISTITEM, IDTEXT,TEXT).
listitem(IDPARENT, IDLISTITEM, IDPARLIST) :- parlist(IDLISTITEM, IDPARLIST).
bold(IDPARENT, IDBOLD, EMPH) :- emph(IDBOLD, IDEMPH,EMPH).
bold(IDPARENT, IDBOLD, KEYWORD) :- keyword(IDBOLD, IDKEYWORD,KEYWORD).
keyword(IDPARENT, IDKEYWORD, BOLD) :- bold(IDKEYWORD, IDBOLD,BOLD).
keyword(IDPARENT, IDKEYWORD, EMPH) :- emph(IDKEYWORD, IDEMPH,EMPH).
emph(IDPARENT, IDEMPH, BOLD) :- bold(IDEMPH, IDBOLD,BOLD).
emph(IDPARENT, IDEMPH, KEYWORD) :- keyword(IDEMPH, IDKEYWORD,KEYWORD).
