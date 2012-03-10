package br.ufrj.ppgi.parser;

import java.io.File;  
import java.io.IOException;

import java.util.HashMap;
import java.util.Set;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.xml.sax.SAXException;

public class DocumentParser {
	protected HashMap<String, Document> parserHandler(HashMap<String, File> fileList) {
    	Set<String> keyNames = fileList.keySet();
    	HashMap<String, Document> documentList = new HashMap<String, Document>();
    	for(String name : keyNames){
    		Document doc = parser(fileList.get(name));
    		documentList.put(name, doc);
    	}
    	
    	return documentList;
	}
	
	private static Document parser(File file) {		
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();

		//b.setValidating(true);
		
		DocumentBuilder builder;
		Document myDoc = null;
		
		try {
			builder = dbf.newDocumentBuilder();
		
			ParserErrorHandler handler = new ParserErrorHandler();
			builder.setErrorHandler(handler);
			
			myDoc = builder.parse(file);
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return myDoc;
	}
}
