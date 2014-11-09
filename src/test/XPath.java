package test;

import java.io.File;
import java.util.HashMap;

import br.ufrj.ppgi.parser.SchemaParser;
import br.ufrj.ppgi.parser.XMLParser;
import junit.framework.*;
import wrapper.*;

public class XPath extends TestCase {
	
	private static final String FILE_NAME ="TestSchema.xsd";
	private static final String FILE_PATH ="TestSchema.xsd";
	
	private static final String SIMPLE_QUERY_XPATH ="//price";
	private static final String SIMPLE_QUERY_PROLOG ="price(IDNOPARENT, IDPRICE,PRICE),  setof(_,( price(IDCHIPS, IDPRICE,PRICE) , ! ; price(IDLEMONADE, IDPRICE,PRICE) , ! ; price(IDPOP, IDPRICE,PRICE) ),_)";
	
	private static final String SIMPLE_FILTER_QUERY_XPATH ="//inventory/drink/lemonade[price='$250']";
	private static final String SIMPLE_FILTER_QUERY_PROLOG ="inventory(IDINVENTORY), drink(IDINVENTORY, IDDRINK), lemonade(IDDRINK, IDLEMONADE), PRICE='$250',  setof(_,( lemonade(IDDRINK, IDLEMONADE, PRICE, AMOUNT) ),_)";
	
	private static final String COMPOSITE_FILTER_QUERY_XPATH ="//inventory/drink/lemonade[price='$250' AND amount='20']";
	private static final String COMPOSITE_FILTER_QUERY_PROLOG ="inventory(IDINVENTORY), drink(IDINVENTORY, IDDRINK), lemonade(IDDRINK, IDLEMONADE), PRICE='$250', AMOUNT='20',  setof(_,( lemonade(IDDRINK, IDLEMONADE, PRICE, AMOUNT) ),_)";
	
	private static final String MIDDLE_FILTER_QUERY_XPATH ="";
	private static final String MIDDLE_FILTER_QUERY_PROLOG ="";
	
	private static final String OR_FILTER_QUERY_XPATH ="//chips[calories='180' OR calories='200']";
	private static final String OR_FILTER_QUERY_PROLOG ="chips(IDNOPARENT, IDCHIPS), setof(_,( CALORIES='180' , ! ; CALORIES='200' ),_),  setof(_,( chips(IDNOPARENT, IDCHIPS, PRICE, AMOUNT, CALORIES) ),_)";
	
	private static final String POSITION_FILTER_QUERY_XPATH ="//amount[2]";
	private static final String POSITION_FILTER_PROLOG ="amount(IDNOPARENT, IDAMOUNT,AMOUNT),  findall(IDSEARCH1,amount(_,IDSEARCH1,AMOUNT),LIST ),indexOf(LIST,IDSEARCH1,2),IDSEARCH1=IDAMOUNT,  setof(_,( amount(IDCHIPS, IDAMOUNT,AMOUNT) , ! ; amount(IDLEMONADE, IDAMOUNT,AMOUNT) , ! ; amount(IDPOP, IDAMOUNT,AMOUNT) ),_)";
	
	private static final String WILD_CARD_MIDDLE_QUERY_XPATH = "//inventory/*/*/price";
	private static final String WILD_CARD_MIDDLE_QUERY_PROLOG = "inventory(IDINVENTORY),  setof(_,( drink(IDINVENTORY, IDDRINK) , lemonade(IDDRINK, IDLEMONADE)) ; ( drink(IDINVENTORY, IDDRINK) , pop(IDDRINK, IDPOP)) ; ( snack(IDINVENTORY, IDSNACK) , chips(IDSNACK, IDCHIPS)) ,_) ,  setof(_,( price(IDCHIPS, IDPRICE,PRICE) , price(IDLEMONADE, IDPRICE,PRICE) , price(IDPOP, IDPRICE,PRICE) ),_)";
	
	private static final String WILD_CARD_END_QUERY_XPATH ="//inventory/snack/chips/*";
	private static final String WILD_CARD_END_QUERY_PROLOG ="inventory(IDINVENTORY), snack(IDINVENTORY, IDSNACK), chips(IDSNACK, IDCHIPS),  setof(_,( price(IDCHIPS, IDPRICE,PRICE)) ; ( amount(IDCHIPS, IDAMOUNT,AMOUNT)) ; ( calories(IDCHIPS, IDCALORIES,CALORIES)) ,_)  .";
	
	private static final String REF_PARENT_QUERY_XPATH ="//amount/..";
	private static final String REF_PARENT_QUERY_PROLOG ="setof(_, (  ( lemonade(IDDRINK, IDLEMONADE), price(IDLEMONADE, IDPRICE,PRICE), amount(IDLEMONADE, IDAMOUNT,AMOUNT) ) ;  ( pop(IDDRINK, IDPOP), price(IDPOP, IDPRICE,PRICE), amount(IDPOP, IDAMOUNT,AMOUNT) ) ;  ( chips(IDSNACK, IDCHIPS), price(IDCHIPS, IDPRICE,PRICE), amount(IDCHIPS, IDAMOUNT,AMOUNT), calories(IDCHIPS, IDCALORIES,CALORIES) )  ), _)  .";
	
	
	
	
	private WrapperSchema wrapper = null;
	
	private boolean load()
	{
		if(wrapper == null)
		{
		   wrapper = new WrapperSchema();
		   HashMap<String,File> hash = new HashMap<String, File>();
	       File file = new File(FILE_PATH);
	       hash.put(FILE_NAME, file);
	       SchemaParser.getInstance().executeParse(hash, null);
		}
		
		return true;
	}
	
	public void testSimpleQuery()
	{
		load();
		
		String prologQuery = wrapper.convertQuery(SIMPLE_QUERY_XPATH,true);
		
		assertEquals("", SIMPLE_QUERY_PROLOG,prologQuery.trim());
		
	}
	
	
	public void testSimpleFilterQuery()
	{
		load();
		
		String prologQuery = wrapper.convertQuery(SIMPLE_FILTER_QUERY_XPATH,true);
		
		assertEquals("",SIMPLE_FILTER_QUERY_PROLOG, prologQuery.trim());
		
	}
	
	
	public void testCompositeFilterQuery()
	{
		load();
		
		String prologQuery = wrapper.convertQuery(COMPOSITE_FILTER_QUERY_XPATH,true);
		
		assertEquals("",COMPOSITE_FILTER_QUERY_PROLOG, prologQuery.trim());
		
	}
	
	
	public void testMiddleFilterQuery()
	{
		load();
		
		String prologQuery = wrapper.convertQuery(MIDDLE_FILTER_QUERY_XPATH,true);
		
		assertEquals("",MIDDLE_FILTER_QUERY_PROLOG, prologQuery.trim());
		
	}
	
	
	public void testORFilterQuery()
	{
		load();
		
		String prologQuery = wrapper.convertQuery(OR_FILTER_QUERY_XPATH,true);
		
		assertEquals("",OR_FILTER_QUERY_PROLOG, prologQuery.trim());
		
	}
	
	
	public void testPositionFilterQuery()
	{
		load();
		
		String prologQuery = wrapper.convertQuery(POSITION_FILTER_QUERY_XPATH,true);
		
		assertEquals("",POSITION_FILTER_PROLOG, prologQuery.trim());
		
	}
	
	public void testWildCardMiddleQuery()
	{
		
         load();
		
		String prologQuery = wrapper.convertQuery(WILD_CARD_MIDDLE_QUERY_XPATH,true);
		
		assertEquals("",WILD_CARD_MIDDLE_QUERY_PROLOG, prologQuery.trim());
		
	}
	
	
	public void testWildCardEndQuery()
	{
         load();
		
		String prologQuery = wrapper.convertQuery(WILD_CARD_END_QUERY_XPATH,true);
		
		assertEquals("",WILD_CARD_END_QUERY_PROLOG, prologQuery.trim());
		
	}
	
	
	public void testRefParentQuery()
	{
         load();
		
		String prologQuery = wrapper.convertQuery(REF_PARENT_QUERY_XPATH,true);
		
		assertEquals("",REF_PARENT_QUERY_PROLOG, prologQuery.trim());
		
	}

}
