package br.ufrj.ppgi.parser;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

public class ParserErrorHandler implements ErrorHandler {
	public void error(SAXParseException err) throws SAXException {
		System.out.println( "ERROR: " + err );			
	}
	
	public void fatalError(SAXParseException err) throws SAXException {
		System.out.println( "FATAL ERROR: " + err );	
	}
	
	public void warning(SAXParseException warn) throws SAXException {
		System.out.println( "WARNING: " + warn );			
	}
}
