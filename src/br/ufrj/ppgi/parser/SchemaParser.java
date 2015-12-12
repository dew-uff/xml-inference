package br.ufrj.ppgi.parser;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import alice.tuprologx.ide.Console;
import br.ufrj.ppgi.io.FileManager;

public class SchemaParser extends DocumentParser{
	private final String xsElement = "xs:element";
	private final String xsSequence = "xs:sequence";
	private final String xsChoice = "xs:choice";
	private final String xsAll = "xs:all";
	private final String xsAttribute ="xs:attribute";
	
	private static SchemaParser schemaParser = null;
	private HashMap<Document,HashMap<String, ArrayList<String>>> ruleHash = new HashMap<Document,HashMap<String, ArrayList<String>>>();
	private ArrayList<String> listPrintRuleDone = new ArrayList<String>();
	
	//TODO: Variaveis criadas para resolver S{C, S}
	private int initialChoiceSize = 0;
	private int temp = 0;
	//TODO: Variaveis criadas para resolver S{C, C}	
	private boolean flagSequenceChoice = false;
	private ArrayList<String> auxRuleList = new ArrayList<String>();
	
	private ArrayList<String> bodyRuleList = new ArrayList<String>();
	private ArrayList<String> auxBodyRuleList = new ArrayList<String>();
	
	private NodeList nlElementsList = null;
	private NodeList nlComplexTypeList = null;
	
	
	public synchronized static SchemaParser getInstance() 
	{
		if ( schemaParser == null )
			schemaParser = new SchemaParser();
		
		return schemaParser;
	}
	
	public void destroyInstance() 
	{
		schemaParser = null;
	}
	
	
	public HashMap<Document,HashMap<String, ArrayList<String>>> getRuleHash()
	{
		/*if(ruleHash.size() <= 0 )
		{
			HashMap<String,ArrayList<String>> docHash = new HashMap<String,ArrayList<String>>();
			
			FileManager fileManager = new FileManager();
			fileManager.rulesFileName();
		}*/
		
		return ruleHash;
	}
	
	
	public void executeParse(HashMap<String, File> fileList, String nameSet){
		HashMap<String, Document> documentList = DocumentParser.getInstance().parserHandler(fileList);
		Set<String> keyNames = documentList.keySet();
		
		StringBuffer translation = new StringBuffer();
    	
    	for(String name : keyNames){
    		String stringProlog = process(documentList.get(name));
    		String printRules = processPrintRules(documentList.get(name));
    		//System.out.println(stringProlog);
    		FileManager fileManager = new FileManager();
    		fileManager.writeRules(stringProlog);
    		fileManager.writePrintRules(printRules);
    		translation.append(stringProlog);
    	}
	}
	
	private Node getRootElement(Document doc)
	{
		String nameSpace = doc.getDocumentElement().getPrefix();
		NodeList listElements = doc.getElementsByTagNameNS("*", "element");
		for ( int i = 0; i < listElements.getLength(); i++ )
		{
			Node elementNode = listElements.item(i);
			
			if(elementNode.getParentNode()==doc.getFirstChild())
				return elementNode;
		}
		
		return null;
	}
	
	private String processPrintRules(Document doc)
	{
		//NodeList listElements =  doc.getElementsByTagName("xs:element");
		listPrintRuleDone.clear();
		Node rootNode = getRootElement( doc);
		String strPrintRules = "";
		
		if(rootNode==null)
			return strPrintRules;
		
		if (rootNode.getAttributes().getNamedItem("name")!= null)
		{
			String rootNodeName =  rootNode.getAttributes().getNamedItem("name").getNodeValue();
			String strType = "";
			if (rootNode.getAttributes().getNamedItem("type")!= null)
				strType =  rootNode.getAttributes().getNamedItem("type").getNodeValue();
			
			strPrintRules+= processPrintRules(doc,rootNodeName,strType);
			strPrintRules+=createMixedElementPrintRule();
		}
		
		return strPrintRules;
	}
	
	private String createMixedElementPrintRule()
	{
		return "print_xmlMixedElement(IDTAG) :- xmlMixedElement(_,IDTAG,VALUE), write(VALUE).\n";
	}
	
	private String processPrintRules(Document _doc,String _nodeName,String _nameElementType)
	{
		String strPrintRules = "";
		String normalizedNodeName = _nodeName.toLowerCase().replace(":", "_");
		ArrayList<Node> nodeListType  = getComplexNodeByName(_doc,_nameElementType);
		
		if(_nameElementType.isEmpty())
			return strPrintRules;
		
		// Simple Type
		if(!_nameElementType.isEmpty() && nodeListType.size() <=0 )
		{
			if(!listPrintRuleDone.contains(_nodeName))
			{
				strPrintRules = createSimplePrintRule(normalizedNodeName);
				strPrintRules += createWildCardSimplePrintRule(normalizedNodeName);
				listPrintRuleDone.add(_nodeName);
			}
			
			return strPrintRules;
		}
		
		Node nodeType = nodeListType.get(0);
		if(nodeType==null)
			return strPrintRules;
		
		boolean bHasChoiceChildren = hasChoiceMinOccursChildren(nodeType);
		boolean bHasChildren = hasChildren(nodeType);
		boolean bIsMixed = false;
		if (nodeType.getAttributes().getNamedItem("mixed")!= null)
			bIsMixed = nodeType.getAttributes().getNamedItem("mixed").getNodeValue().equalsIgnoreCase("true");
		
		//ArrayList<String> arrayAttribuePrintRule = processPrintNodeAttributes(_nodeName,nodeType);
		
		if(!listPrintRuleDone.contains(_nodeName))
			strPrintRules+=  processPrintNodeAttributes(_nodeName,nodeType);
		
		ArrayList<String> arrayAttribueNames = obtainNodeAttributesNames(nodeType);

		ArrayList<Node>  listChildNodes = obtainChildElements(nodeType);
		
		if(!listPrintRuleDone.contains(_nodeName))
		{
			strPrintRules+= createComplexPrintRule(_doc,_nodeName,bHasChildren, bIsMixed,bHasChoiceChildren,arrayAttribueNames,listChildNodes);
			strPrintRules+= createWildcardComplexPrintRule(_doc,_nodeName,bHasChildren, bIsMixed,bHasChoiceChildren,arrayAttribueNames,listChildNodes);
			listPrintRuleDone.add(_nodeName);
		}
		
		
		for(int i=0;i<listChildNodes.size();i++)
		{
			Node  childNode = listChildNodes.get(i);
			if(childNode == null )
				continue;
			
			String nodeName =  childNode.getAttributes().getNamedItem("name").getNodeValue();
			
			if(listPrintRuleDone.contains(nodeName))
				continue;
			
			String strType = "";
			if (childNode.getAttributes().getNamedItem("type")!= null)
				strType =  childNode.getAttributes().getNamedItem("type").getNodeValue();
			
			strPrintRules+= processPrintRules(_doc, nodeName, strType);
		}
		
		return strPrintRules; 
	}
	
	
	private String createComplexPrintRule(Document _doc, String _nodeName, 
			boolean bHasChildren,
			boolean bIsMixed,
			boolean bHasChoiceChildren,
			ArrayList<String> arrayAttribueNames,
			ArrayList<Node> listChildNodes) 
	{
	   String strPrintComplexRule = "";
	   String normalizedNodeName = _nodeName.toLowerCase().replace(":", "_");
		
	   if(bIsMixed && bHasChoiceChildren)
	   {
		   strPrintComplexRule = "print_"+normalizedNodeName+"(IDPARENT,IDTAG):-";
		   strPrintComplexRule += " var(IDTAG),(findall(IDORDER,("+normalizedNodeName+"(IDPARENT,IDORDER);"+normalizedNodeName+"(IDPARENT,IDORDER,_)),LIST)\n";
		   strPrintComplexRule += " ,quick_sort(LIST,LISTSORTED),member(IDSORTED,LISTSORTED),\n";
		   //##strPrintComplexRule += "("+normalizedNodeName+"(IDPARENT,IDSORTED);"+normalizedNodeName+"(IDPARENT,IDSORTED,_)), printnl(''),write('<"+_nodeName.toLowerCase()+"'), \n";
		   strPrintComplexRule += "("+normalizedNodeName+"(IDPARENT,IDSORTED);"+normalizedNodeName+"(IDPARENT,IDSORTED,_)), write('<"+_nodeName.toLowerCase()+"'), \n";
		   strPrintComplexRule +=" print_"+normalizedNodeName+"_childs(IDSORTED));nonvar(IDTAG),("+normalizedNodeName+"(IDPARENT,IDTAG);"+normalizedNodeName+"(IDPARENT,IDTAG,_)),\n";
		 //##strPrintComplexRule +=" printnl(''),write('<"+_nodeName.toLowerCase()+"'),print_"+normalizedNodeName+"_childs(IDTAG).\n";
		   strPrintComplexRule +=" write('<"+_nodeName.toLowerCase()+"'),print_"+normalizedNodeName+"_childs(IDTAG).\n";
		   
		   
		   
		   strPrintComplexRule +=" print_"+normalizedNodeName+"_childs(IDTAG) :- ";
			
		   if(arrayAttribueNames.size() >0)
		   {
			   strPrintComplexRule +="("+normalizedNodeName+"(_,IDTAG)) , findall(IDCHILD,( \n";
			   
			   for(int i=0;i<arrayAttribueNames.size();i++)
			   {
				   strPrintComplexRule += normalizedNodeName+"_attribute_"+arrayAttribueNames.get(i).toLowerCase().replace(":", "_");
				   strPrintComplexRule +="(IDTAG,IDCHILD,_)";
				   if(i+1<arrayAttribueNames.size())
					   strPrintComplexRule += ";";
			   }
			   
			   strPrintComplexRule +=" ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDCHILDATTRIBUTESORTED,LISTATTRIBUTESORTED), (";
			   
			   for(int i=0;i<arrayAttribueNames.size();i++)
			   {
				   strPrintComplexRule += "print_"+normalizedNodeName+"_attribute_"+arrayAttribueNames.get(i).toLowerCase().replace(":", "_");
				   strPrintComplexRule +="(IDTAG,IDCHILDATTRIBUTESORTED)";
				   if(i+1<arrayAttribueNames.size())
					   strPrintComplexRule += ";";
			   }
			   
			   strPrintComplexRule +=");";
		   
		   }
		   
		   strPrintComplexRule +="write('>')";
		   
		   if(listChildNodes.size() >0)
		   {
		   
			   strPrintComplexRule +=";("+normalizedNodeName+"(_,IDTAG)) , findall(IDCHILD,( \n";
			   
			   for(int i=0;i<listChildNodes.size();i++)
			   {
				   strPrintComplexRule +=obtainBaseRuleNode(_doc,listChildNodes.get(i));
				   if(i+1<listChildNodes.size())
					   strPrintComplexRule += ";";
			   }
			   
			   //if(arrayAttribueNames.size()> 0 && listChildNodes.size() > 0)
				   //strPrintComplexRule += ";";
			   
			   strPrintComplexRule +=" ;xmlMixedElement(IDTAG,IDCHILD,_) ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED), (";
			   
			   for(int i=0;i<listChildNodes.size();i++)
			   {
				   String childNodeName = "";
					if (listChildNodes.get(i).getAttributes().getNamedItem("name")!= null)
						childNodeName =  listChildNodes.get(i).getAttributes().getNamedItem("name").getNodeValue();
				   
					if(childNodeName.isEmpty())
						continue;
					
				   strPrintComplexRule += "print_"+childNodeName.toLowerCase().replace(":", "_")+"(IDTAG,IDCHILDSORTED)";
				   
				   if(i+1<listChildNodes.size())
					   strPrintComplexRule += ";";
			   }
			   
			   //if(arrayAttribueNames.size()> 0 && listChildNodes.size() > 0)
				   //strPrintComplexRule += ";";
			   
			   //strPrintComplexRule +=")";  
		   }
		   strPrintComplexRule += ";print_xmlMixedElement(IDCHILDSORTED)";
		   if(listChildNodes.size() >0)
			   strPrintComplexRule += ")";
				   
		   //##strPrintComplexRule +=";("+normalizedNodeName+"(_,IDTAG,VALUE),write(VALUE));write('</"+_nodeName.toLowerCase()+">').\n";
		   strPrintComplexRule +=";("+normalizedNodeName+"(_,IDTAG,VALUE),write(VALUE));write('</"+_nodeName.toLowerCase()+">'),printnl('').\n";
	   }
	   else if((!bIsMixed && bHasChildren) || (!bIsMixed && arrayAttribueNames.size()> 0 ))
	   {
           
		   Node rootNode = getRootElement( _doc);
		   String rootNodeName = "";
		   if (rootNode.getAttributes().getNamedItem("name")!= null)
				rootNodeName =  rootNode.getAttributes().getNamedItem("name").getNodeValue();
		   
		   if(_nodeName.compareToIgnoreCase(rootNodeName) == 0)
			   strPrintComplexRule += " print_"+normalizedNodeName+"(IDTAG) :- "+normalizedNodeName+"(IDTAG), write('<"+_nodeName.toLowerCase()+"'),";
		   else
		   {
			 //##strPrintComplexRule += " print_"+normalizedNodeName+"(IDPARENT,IDTAG) :- "+normalizedNodeName+"(IDPARENT,IDTAG), printnl(''),write('<"+_nodeName.toLowerCase()+"'),";
			   strPrintComplexRule += " print_"+normalizedNodeName+"(IDPARENT,IDTAG) :- "+normalizedNodeName+"(IDPARENT,IDTAG), write('<"+_nodeName.toLowerCase()+"'),";
		   }
		   
		   strPrintComplexRule +="print_"+normalizedNodeName+"_childs(IDTAG).\n";
		   
		   strPrintComplexRule +=" print_"+normalizedNodeName+"_childs(IDTAG):-";
		   
		   if(arrayAttribueNames.size() > 0)
		   {
			   if(_nodeName.compareToIgnoreCase(rootNodeName) == 0)
				   strPrintComplexRule +=normalizedNodeName+"(IDTAG), findall(IDCHILD,(\n";
			   else
				   strPrintComplexRule +=normalizedNodeName+"(_, IDTAG), findall(IDCHILD,(\n";
			   
			   for(int i=0;i<arrayAttribueNames.size();i++)
			   {
				   strPrintComplexRule += normalizedNodeName+"_attribute_"+arrayAttribueNames.get(i).toLowerCase().replace(":", "_");
				   strPrintComplexRule +="(IDTAG,IDCHILD,_)";
				   if(i+1<arrayAttribueNames.size())
					   strPrintComplexRule += ";";
			   }
			   
			   strPrintComplexRule +=" ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(\n";
			   
			   
			   for(int i=0;i<arrayAttribueNames.size();i++)
			   {
				   strPrintComplexRule += "print_"+normalizedNodeName+"_attribute_"+arrayAttribueNames.get(i).toLowerCase().replace(":", "_");
				   strPrintComplexRule +="(IDTAG,IDATTRIBUTECHILDSORTED)";
				   if(i+1<arrayAttribueNames.size())
					   strPrintComplexRule += ";";
			   }
			   
			   strPrintComplexRule +=");";
		   }
		   
		   strPrintComplexRule +="write('>')";
		   
		   if(listChildNodes.size() > 0)
		   {
			   strPrintComplexRule += ";";
			   
			   if(_nodeName.compareToIgnoreCase(rootNodeName) == 0)
				   strPrintComplexRule +=normalizedNodeName+"(IDTAG), findall(IDCHILD,(\n";
			   else
				   strPrintComplexRule +=normalizedNodeName+"(_, IDTAG), findall(IDCHILD,(\n";
			   
			   for(int i=0;i<listChildNodes.size();i++)
			   {
				   strPrintComplexRule +=obtainBaseRuleNode(_doc,listChildNodes.get(i));
				   if(i+1<listChildNodes.size())
					   strPrintComplexRule += ";";
			   }
			  
			   strPrintComplexRule +=" ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(\n";
			   
			   for(int i=0;i<listChildNodes.size();i++)
			   {
				   String childNodeName = "";
					if (listChildNodes.get(i).getAttributes().getNamedItem("name")!= null)
						childNodeName =  listChildNodes.get(i).getAttributes().getNamedItem("name").getNodeValue();
				   
					if(childNodeName.isEmpty())
						continue;
					
				   strPrintComplexRule += "print_"+childNodeName.toLowerCase().replace(":", "_")+"(IDTAG,IDCHILDSORTED)";
				   
				   if(i+1<listChildNodes.size())
					   strPrintComplexRule += ";";
			   }
			   
			   strPrintComplexRule +=")";
		   }
		   		   
		   //###strPrintComplexRule +=";write('</"+_nodeName.toLowerCase()+">').\n";
		   strPrintComplexRule +=";write('</"+_nodeName.toLowerCase()+">'),printnl('').\n";
	   }
	   else
	   {
		 //##strPrintComplexRule += " print_"+normalizedNodeName+"(IDPARENT,IDTAG) :- "+normalizedNodeName+"(IDPARENT,IDTAG,_),printnl(''),write('<"+_nodeName.toLowerCase()+"'), print_"+normalizedNodeName+"_childs(IDTAG).\n";
		   strPrintComplexRule += " print_"+normalizedNodeName+"(IDPARENT,IDTAG) :- "+normalizedNodeName+"(IDPARENT,IDTAG,_),write('<"+_nodeName.toLowerCase()+"'), print_"+normalizedNodeName+"_childs(IDTAG).\n";
		   strPrintComplexRule += " print_"+normalizedNodeName+"_childs(IDTAG) :- "+normalizedNodeName+"(_,IDTAG,VALUE), findall(IDCHILD,(\n";
		   
		   //Atributos
		   for(int i=0;i<arrayAttribueNames.size();i++)
		   {
			   strPrintComplexRule += normalizedNodeName+"_attribute_"+arrayAttribueNames.get(i).toLowerCase().replace(":", "_");
			   strPrintComplexRule +="(IDTAG,IDCHILD,_)";
			   if(i+1<arrayAttribueNames.size())
				   strPrintComplexRule += ";";
		   }

		   strPrintComplexRule += "),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),  (\n"; 
		   //Print Atributos
		   for(int i=0;i<arrayAttribueNames.size();i++)
		   {
			   strPrintComplexRule += "print_"+normalizedNodeName+"_attribute_"+arrayAttribueNames.get(i).toLowerCase().replace(":", "_");
			   strPrintComplexRule +="(IDTAG,IDCHILDSORTED)";
			   if(i+1<arrayAttribueNames.size())
				   strPrintComplexRule += ";";
		   }
		   //##strPrintComplexRule += ");write('>') ;("+normalizedNodeName+"(IDPARENT,IDTAG,VALUE),write(VALUE),write('</"+_nodeName.toLowerCase()+">')).\n";
		   strPrintComplexRule += ");write('>') ;("+normalizedNodeName+"(IDPARENT,IDTAG,VALUE),write(VALUE),write('</"+_nodeName.toLowerCase()+">'),printnl('')).\n";
		   
		   
	   }
	   
	   return strPrintComplexRule;
	}
	
	private String createWildcardComplexPrintRule(Document _doc, String _nodeName, 
			boolean bHasChildren,
			boolean bIsMixed,
			boolean bHasChoiceChildren,
			ArrayList<String> arrayAttribueNames,
			ArrayList<Node> listChildNodes) 
	{
	   String strPrintComplexRule = "";
	   String normalizedNodeName = _nodeName.toLowerCase().replace(":", "_");
	   
	   Node rootNode = getRootElement( _doc);
	   String rootNodeName = "";
	   if (rootNode.getAttributes().getNamedItem("name")!= null)
			rootNodeName =  rootNode.getAttributes().getNamedItem("name").getNodeValue();
		
	   if(bIsMixed && bHasChoiceChildren)
	   {
		   strPrintComplexRule = "print_wild_card_"+normalizedNodeName+"(IDPARENT,IDTAG):-";
		   strPrintComplexRule += " print_"+normalizedNodeName+"(IDPARENT,IDTAG) ; var(IDTAG),(findall(IDORDER,("+normalizedNodeName+"(IDPARENT,IDORDER);"+normalizedNodeName+"(IDPARENT,IDORDER,_)),LIST)\n";
		   strPrintComplexRule += " ,quick_sort(LIST,LISTSORTED),member(IDSORTED,LISTSORTED),\n";
		   strPrintComplexRule += "("+normalizedNodeName+"(IDPARENT,IDSORTED);"+normalizedNodeName+"(IDPARENT,IDSORTED,_)), ";
		   //if(_nodeName.compareToIgnoreCase(rootNodeName) == 0)
			  // strPrintComplexRule += "print('\n<"+_nodeName.toLowerCase()+"'), \n";
		   
		   strPrintComplexRule +=" print_wild_card_"+normalizedNodeName+"_childs(IDSORTED));nonvar(IDTAG),("+normalizedNodeName+"(IDPARENT,IDTAG);"+normalizedNodeName+"(IDPARENT,IDTAG,_)),\n";
		   //if(_nodeName.compareToIgnoreCase(rootNodeName) == 0)
			   //strPrintComplexRule +=" print('\n<"+_nodeName.toLowerCase()+"'),";
		   
		   strPrintComplexRule +="print_wild_card_"+normalizedNodeName+"_childs(IDTAG).\n";
		   
		   
		   
		   strPrintComplexRule +=" print_wild_card_"+normalizedNodeName+"_childs(IDTAG) :- ";
			
		   /*if(arrayAttribueNames.size() >0)
		   {
			   strPrintComplexRule +="("+normalizedNodeName+"(_,IDTAG)) , findall(IDCHILD,( \n";
			   
			   for(int i=0;i<arrayAttribueNames.size();i++)
			   {
				   strPrintComplexRule += normalizedNodeName+"_attribute_"+arrayAttribueNames.get(i).toLowerCase().replace(":", "_");
				   strPrintComplexRule +="(IDTAG,IDCHILD,_)";
				   if(i+1<arrayAttribueNames.size())
					   strPrintComplexRule += ";";
			   }
			   
			   strPrintComplexRule +=" ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDCHILDATTRIBUTESORTED,LISTATTRIBUTESORTED), (";
			   
			   for(int i=0;i<arrayAttribueNames.size();i++)
			   {
				   strPrintComplexRule += "print_"+normalizedNodeName+"_attribute_"+arrayAttribueNames.get(i).toLowerCase().replace(":", "_");
				   strPrintComplexRule +="(IDTAG,IDCHILDATTRIBUTESORTED)";
				   if(i+1<arrayAttribueNames.size())
					   strPrintComplexRule += ";";
			   }
			   
			   strPrintComplexRule +=");";
		   
		   }*/
		   
		   //strPrintComplexRule +="print('>')";
		   strPrintComplexRule +="("+normalizedNodeName+"(_,IDTAG)) ";
		   if(listChildNodes.size() >0)
		   {
		   
			   strPrintComplexRule +=", findall(IDCHILD,( \n";
			   
			   for(int i=0;i<listChildNodes.size();i++)
			   {
				   strPrintComplexRule +=obtainBaseRuleNode(_doc,listChildNodes.get(i));
				   if(i+1<listChildNodes.size())
					   strPrintComplexRule += ";";
			   }
			   
			   //if(arrayAttribueNames.size()> 0 && listChildNodes.size() > 0)
				   //strPrintComplexRule += ";";
			   
			   strPrintComplexRule +=" ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED), (";
			   
			   for(int i=0;i<listChildNodes.size();i++)
			   {
				   String childNodeName = "";
					if (listChildNodes.get(i).getAttributes().getNamedItem("name")!= null)
						childNodeName =  listChildNodes.get(i).getAttributes().getNamedItem("name").getNodeValue();
				   
					if(childNodeName.isEmpty())
						continue;
					
				   strPrintComplexRule += "print_"+childNodeName.toLowerCase().replace(":", "_")+"(IDTAG,IDCHILDSORTED)";
				   
				   if(i+1<listChildNodes.size())
					   strPrintComplexRule += ";";
			   }
			   
			   strPrintComplexRule += ")";
		   }
		   //strPrintComplexRule += ";print_xmlMixedElement(IDCHILDSORTED)";
		   //if(listChildNodes.size() >0)
			   //strPrintComplexRule += ")";
		   
		   if(listChildNodes.size() >0)
		   {
		   
			   strPrintComplexRule +="; findall(IDCHILD,( \n";
			   
			   for(int i=0;i<listChildNodes.size();i++)
			   {
				   strPrintComplexRule +=obtainBaseRuleNode(_doc,listChildNodes.get(i));
				   if(i+1<listChildNodes.size())
					   strPrintComplexRule += ";";
			   }
			   
			   strPrintComplexRule +=" ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED), (";
			   
			   for(int i=0;i<listChildNodes.size();i++)
			   {
				   String childNodeName = "";
					if (listChildNodes.get(i).getAttributes().getNamedItem("name")!= null)
						childNodeName =  listChildNodes.get(i).getAttributes().getNamedItem("name").getNodeValue();
				   
					if(childNodeName.isEmpty())
						continue;
					
				   strPrintComplexRule += "print_wild_card_"+childNodeName.toLowerCase().replace(":", "_")+"(IDTAG,IDWILDCHILDSORTED)";
				   
				   if(i+1<listChildNodes.size())
					   strPrintComplexRule += ";";
			   }
			   
			   strPrintComplexRule += ")";
		   }
		   
		   
		   
		   
		   strPrintComplexRule +=".\n";	   
		   //strPrintComplexRule +=";("+normalizedNodeName+"(_,IDTAG,VALUE),print(VALUE));print('</"+_nodeName.toLowerCase()+">').\n";
	   }
	   else if((!bIsMixed && bHasChildren) || (!bIsMixed && arrayAttribueNames.size()> 0 ))
	   {
           
		   if(_nodeName.compareToIgnoreCase(rootNodeName) == 0)
			   strPrintComplexRule += " print_wild_card_"+normalizedNodeName+"(IDTAG) :- print_"+normalizedNodeName+"(IDTAG); "+normalizedNodeName+"(IDTAG), ";
			   		//+ "print('<"+_nodeName.toLowerCase()+"'),";
		   else
			   	strPrintComplexRule += " print_wild_card_"+normalizedNodeName+"(IDPARENT,IDTAG) :- print_"+normalizedNodeName+"(IDPARENT,IDTAG);"+normalizedNodeName+"(IDPARENT,IDTAG), ";
			   			//+ "print('\n<"+_nodeName.toLowerCase()+"'),";
		   
		   strPrintComplexRule +="print_wild_card_"+normalizedNodeName+"_childs(IDTAG).\n";
		   
		   strPrintComplexRule +=" print_wild_card_"+normalizedNodeName+"_childs(IDTAG):-";
		   
		   /*if(arrayAttribueNames.size() > 0)
		   {
			   if(_nodeName.compareToIgnoreCase(rootNodeName) == 0)
				   strPrintComplexRule +=normalizedNodeName+"(IDTAG), findall(IDCHILD,(\n";
			   else
				   strPrintComplexRule +=normalizedNodeName+"(_, IDTAG), findall(IDCHILD,(\n";
			   
			   for(int i=0;i<arrayAttribueNames.size();i++)
			   {
				   strPrintComplexRule += normalizedNodeName+"_attribute_"+arrayAttribueNames.get(i).toLowerCase().replace(":", "_");
				   strPrintComplexRule +="(IDTAG,IDCHILD,_)";
				   if(i+1<arrayAttribueNames.size())
					   strPrintComplexRule += ";";
			   }
			   
			   strPrintComplexRule +=" ),LISTATTRIBUTE),quick_sort(LISTATTRIBUTE,LISTATTRIBUTESORTED),member(IDATTRIBUTECHILDSORTED,LISTATTRIBUTESORTED),(\n";
			   
			   
			   for(int i=0;i<arrayAttribueNames.size();i++)
			   {
				   strPrintComplexRule += "print_"+normalizedNodeName+"_attribute_"+arrayAttribueNames.get(i).toLowerCase().replace(":", "_");
				   strPrintComplexRule +="(IDTAG,IDATTRIBUTECHILDSORTED)";
				   if(i+1<arrayAttribueNames.size())
					   strPrintComplexRule += ";";
			   }
			   
			   strPrintComplexRule +=");";
		   }*/
		   
		   //strPrintComplexRule +="print('>')";
		   
		   if(_nodeName.compareToIgnoreCase(rootNodeName) == 0)
			   strPrintComplexRule +=normalizedNodeName+"(IDTAG)";
		   else
			   strPrintComplexRule +=normalizedNodeName+"(_, IDTAG)";
		   
		   /*if(listChildNodes.size() > 0)
		   {
			   //strPrintComplexRule += ";";
			   
			   if(_nodeName.compareToIgnoreCase(rootNodeName) == 0)
				   strPrintComplexRule +=", findall(IDCHILD,(\n";
			   else
				   strPrintComplexRule +=", findall(IDCHILD,(\n";
			   
			   for(int i=0;i<listChildNodes.size();i++)
			   {
				   strPrintComplexRule +=obtainBaseRuleNode(_doc,listChildNodes.get(i));
				   if(i+1<listChildNodes.size())
					   strPrintComplexRule += ";";
			   }
			  
			   strPrintComplexRule +=" ),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),(\n";
			   
			   for(int i=0;i<listChildNodes.size();i++)
			   {
				   String childNodeName = "";
					if (listChildNodes.get(i).getAttributes().getNamedItem("name")!= null)
						childNodeName =  listChildNodes.get(i).getAttributes().getNamedItem("name").getNodeValue();
				   
					if(childNodeName.isEmpty())
						continue;
					
				   strPrintComplexRule += "print_"+childNodeName.toLowerCase().replace(":", "_")+"(IDTAG,IDCHILDSORTED)";
				   
				   if(i+1<listChildNodes.size())
					   strPrintComplexRule += ";";
			   }
			   
			   strPrintComplexRule +=")";
		   }*/
		   		
		   if(listChildNodes.size() > 0)
		   {
			   strPrintComplexRule += ",";
			   
			   if(_nodeName.compareToIgnoreCase(rootNodeName) == 0)
				   strPrintComplexRule +=" findall(IDCHILD,(\n";
			   else
				   strPrintComplexRule +=" findall(IDCHILD,(\n";
			   
			   for(int i=0;i<listChildNodes.size();i++)
			   {
				   strPrintComplexRule +=obtainBaseRuleNode(_doc,listChildNodes.get(i));
				   if(i+1<listChildNodes.size())
					   strPrintComplexRule += ";";
			   }
			  
			   strPrintComplexRule +=" ),LISTWILD),quick_sort(LISTWILD,LISTWILDSORTED),member(IDWILDCHILDSORTED,LISTWILDSORTED),(\n";
			   
			   for(int i=0;i<listChildNodes.size();i++)
			   {
				   String childNodeName = "";
					if (listChildNodes.get(i).getAttributes().getNamedItem("name")!= null)
						childNodeName =  listChildNodes.get(i).getAttributes().getNamedItem("name").getNodeValue();
				   
					if(childNodeName.isEmpty())
						continue;
					
				   strPrintComplexRule += "print_wild_card_"+childNodeName.toLowerCase().replace(":", "_")+"(IDTAG,IDWILDCHILDSORTED)";
				   
				   if(i+1<listChildNodes.size())
					   strPrintComplexRule += ";";
			   }
			   
			   strPrintComplexRule +=")";
		   }
		   
		   strPrintComplexRule += ".\n";
		   //strPrintComplexRule +=";print('</"+_nodeName.toLowerCase()+">').\n";
	   }
	   else
	   {
		   strPrintComplexRule += " print_wild_card_"+normalizedNodeName+"(IDPARENT,IDTAG) :- nonvar(IDTAG), print_"+normalizedNodeName+"(IDPARENT,IDTAG).\n";//+normalizedNodeName+"(IDPARENT,IDTAG,_).\n";
		   		//+ "print('\n<"+_nodeName.toLowerCase()+"'), "
		   /*strPrintComplexRule += "print_wild_card_"+normalizedNodeName+"_childs(IDTAG).\n";
		   strPrintComplexRule += " print_"+normalizedNodeName+"_childs(IDTAG) :- "+normalizedNodeName+"(_,IDTAG,VALUE), findall(IDCHILD,(\n";
		   
		   //Atributos
		   for(int i=0;i<arrayAttribueNames.size();i++)
		   {
			   strPrintComplexRule += normalizedNodeName+"_attribute_"+arrayAttribueNames.get(i).toLowerCase().replace(":", "_");
			   strPrintComplexRule +="(IDTAG,IDCHILD,_)";
			   if(i+1<arrayAttribueNames.size())
				   strPrintComplexRule += ";";
		   }

		   strPrintComplexRule += "),LIST),quick_sort(LIST,LISTSORTED),member(IDCHILDSORTED,LISTSORTED),  (\n"; 
		   //Print Atributos
		   for(int i=0;i<arrayAttribueNames.size();i++)
		   {
			   strPrintComplexRule += "print_"+normalizedNodeName+"_attribute_"+arrayAttribueNames.get(i).toLowerCase().replace(":", "_");
			   strPrintComplexRule +="(IDTAG,IDCHILDSORTED)";
			   if(i+1<arrayAttribueNames.size())
				   strPrintComplexRule += ";";
		   }
		   strPrintComplexRule += ");print('>') ;("+normalizedNodeName+"(IDPARENT,IDTAG,VALUE),print(VALUE),print('</"+_nodeName.toLowerCase()+">')).\n";
		   */
		   
	   }
	   
	   return strPrintComplexRule;
	}
	 
	private String obtainBaseRuleNode(Document _doc, Node _nodeChildElement)
	{
		String strType= "";
		if (_nodeChildElement.getAttributes().getNamedItem("type")!= null)
			strType =  _nodeChildElement.getAttributes().getNamedItem("type").getNodeValue();
		
		if(strType.isEmpty())
			return "";
		
		String nodeName = "";
		if (_nodeChildElement.getAttributes().getNamedItem("name")!= null)
			nodeName =  _nodeChildElement.getAttributes().getNamedItem("name").getNodeValue();
		
		if(nodeName.isEmpty())
			return "";
		
		String normalizedNodeName = nodeName.toLowerCase().replace(":", "_");
		
		ArrayList<Node> nodeTypeList =  getComplexNodeByName(_doc, strType);
		
		String baseRule = normalizedNodeName+"(IDTAG,IDCHILD,_)";
		
		if(nodeTypeList.size() <=0 || nodeTypeList.get(0)==null)
			return baseRule;
		
		
		boolean bHasChoiceChildren = hasChoiceMinOccursChildren(nodeTypeList.get(0));
		boolean bHasChildren = hasChildren(nodeTypeList.get(0));
		boolean bIsMixed = false;
		if (nodeTypeList.get(0).getAttributes().getNamedItem("mixed")!= null)
			bIsMixed = nodeTypeList.get(0).getAttributes().getNamedItem("mixed").getNodeValue().equalsIgnoreCase("true");
		
		 if(bIsMixed && bHasChoiceChildren)
		 {
			 baseRule = "("+normalizedNodeName+"(IDTAG,IDCHILD); "+normalizedNodeName+"(IDTAG,IDCHILD,_) )";
		 }
		 else if(!bIsMixed && bHasChildren)
		 {
			 baseRule = normalizedNodeName+"(IDTAG,IDCHILD)";
		 }
		 else if (!bIsMixed && obtainNodeAttributesNames(nodeTypeList.get(0)).size()> 0 )
		 {
			 baseRule = normalizedNodeName+"(IDTAG,IDCHILD)";
		 }
		 else
		 {
			 baseRule = normalizedNodeName+"(IDTAG,IDCHILD,_) ";
		 }
		 
		return baseRule;
	}

	private boolean hasChoiceMinOccursChildren(Node _nodeType)
	 {
		 NodeList listChildNodes =  _nodeType.getChildNodes();
		 for(int i=0;i<listChildNodes.getLength();i++)
		 {
			Node  childNode = listChildNodes.item(i);
			if(childNode == null )
				continue;
			
			 String childNodeName = childNode.getNodeName();
			 if(childNodeName.compareToIgnoreCase(xsChoice) == 0)
			 {
				 if (childNode.getAttributes().getNamedItem("minOccurs")!= null)
				 {
					 if(childNode.getAttributes().getNamedItem("minOccurs").getNodeValue().compareToIgnoreCase("0")==0)
						 return true;
				 }
			 }
			
		 }
		 return false;
	 }
	
	private boolean hasChildren(Node _nodeType)
	{
		 NodeList listChildNodes =  _nodeType.getChildNodes();
		 for(int i=0;i<listChildNodes.getLength();i++)
		 {
			 Node  childNode = listChildNodes.item(i);
				if(childNode == null )
					continue;
				
			 String childNodeName = childNode.getNodeName();
			 if(childNodeName.compareToIgnoreCase(xsChoice) == 0)
				 return true;
			 else if(childNodeName.compareToIgnoreCase(xsSequence) == 0)
				 return true;
			 else if(childNodeName.compareToIgnoreCase(xsAll) == 0)
				 return true;
			 else if(childNodeName.compareToIgnoreCase(xsElement) == 0)
				 return true;
		 }
		
		return false;
	}
	
	
	private ArrayList<Node> obtainChildElements(Node _nodeType)
	{
		ArrayList<Node> returnListChildNodes = new ArrayList<Node>();
		
		NodeList listChildNodes =  _nodeType.getChildNodes();
		for(int i=0;i<listChildNodes.getLength();i++)
		{
			Node  childNode = listChildNodes.item(i);
			if(childNode == null )
				continue;
			
			 String childNodeName = childNode.getNodeName();
		    if(childNodeName.compareToIgnoreCase(xsSequence) == 0)
		    	returnListChildNodes.addAll(obtainChildElements(childNode));
		    else if(childNodeName.compareToIgnoreCase(xsChoice) == 0)
		    	returnListChildNodes.addAll(obtainChildElements(childNode));
		    else if(childNodeName.compareToIgnoreCase(xsAll) == 0)
		    	returnListChildNodes.addAll(obtainChildElements(childNode));
		    else if(childNodeName.compareToIgnoreCase(xsElement) == 0)
		    	returnListChildNodes.add(childNode);
		}
		
		return returnListChildNodes;
	}
	
	private String createSimplePrintRule(String _nodeName)
	{
		String simplePrintRule =  "print_"+_nodeName+"(IDPARENT,IDTAG):-";
		//##simplePrintRule+=_nodeName+"(_,IDTAG,VALUE),printnl(''),write('<"+_nodeName.toLowerCase().replace("_", ":")+">') , write(VALUE),\n";
		simplePrintRule+=_nodeName+"(_,IDTAG,VALUE),write('<"+_nodeName.toLowerCase().replace("_", ":")+">') , write(VALUE),\n";
		//##simplePrintRule+="write('</"+_nodeName.toLowerCase().replace("_", ":")+">').\n";
		simplePrintRule+="write('</"+_nodeName.toLowerCase().replace("_", ":")+">'),printnl('').\n";
		return simplePrintRule;
	}
	
	private String createWildCardSimplePrintRule(String _nodeName)
	{
		String simplePrintRule =  "print_wild_card_"+_nodeName+"(IDPARENT,IDTAG):-";
		simplePrintRule+=" nonvar(IDTAG), print_"+_nodeName+"(IDPARENT,IDTAG).\n";
		//simplePrintRule+=_nodeName+"(_,IDTAG,VALUE).\n";
		
		return simplePrintRule;
	}
	
	
	private String  createAttributePrintRule(String _nodeName, String _attributeName)
	{
		String normalizedNodeName = _nodeName.toLowerCase().replace(":", "_");
		String normalizedAttributeName = _attributeName.toLowerCase().replace(":", "_");
	
		
		String simplePrintRule =  "print_"+normalizedNodeName+"_attribute_"+normalizedAttributeName+"(IDPARENT,IDATTRIBUTE):-";
		simplePrintRule+=normalizedNodeName+"_attribute_"+normalizedAttributeName+"(IDPARENT,IDATTRIBUTE,VALUE),write(' "+_attributeName.replace("_", ":")+"=\"') , write(VALUE),write('\" ').\n";
		return simplePrintRule;
	}
	
	//private ArrayList<String> processPrintNodeAttributes(String _nodeName, Node _complexNodeType)
	private String processPrintNodeAttributes(String _nodeName, Node _complexNodeType)
	{
		//ArrayList<String> arrayAttribuePrintRule = new ArrayList<String>();
		String attribuePrintRule ="";
		
		NodeList listAttributes =  _complexNodeType.getChildNodes();
		
		for(int i=0;i<listAttributes.getLength();i++)
		{
			Node  attrNode = listAttributes.item(i);
			if(attrNode == null )
				continue;
			
			 String childNodeName = attrNode.getNodeName();
			if(childNodeName.compareToIgnoreCase(xsAttribute) != 0)
				continue;
			
			String attributeName = "";
			if (attrNode.getAttributes().getNamedItem("name")!= null)
				attributeName =  attrNode.getAttributes().getNamedItem("name").getNodeValue();
			
			attribuePrintRule += createAttributePrintRule(_nodeName,attributeName);
			
		}
		
		return attribuePrintRule;
	}
	
	private ArrayList<String> obtainNodeAttributesNames(Node _complexNodeType)
	{
		ArrayList<String> arrayAttribueNames = new ArrayList<String>();
		
		NodeList listAttributes =  _complexNodeType.getChildNodes();
		
		for(int i=0;i<listAttributes.getLength();i++)
		{
			Node  attrNode = listAttributes.item(i);
			if(attrNode == null )
				continue;
			
			 String childNodeName = attrNode.getNodeName();
			if(childNodeName.compareToIgnoreCase(xsAttribute) != 0)
				continue;
			
			String attrNodeName = "";
			if (attrNode.getAttributes().getNamedItem("name")!= null)
				attrNodeName = attrNode.getAttributes().getNamedItem("name").getNodeValue();
			
			if(!attrNodeName.isEmpty())
				arrayAttribueNames.add(attrNodeName);
			
		}
		
		return arrayAttribueNames;
	}
	
	
	private ArrayList<Node> getComplexNodeByName(Document _doc,String _nameElementType)
	{
		NodeList listElements = _doc.getElementsByTagNameNS("*", "complexType");
		ArrayList<Node> nodeList = new ArrayList<Node>();
		for (int i = 0; i < listElements.getLength(); i++) 
		{
			Node elementNode = listElements.item(i);
			Node nodeReturn = null;
			if (elementNode.getAttributes().getNamedItem("name")!= null 
					&& elementNode.getAttributes().getNamedItem("name").getNodeValue().equals(_nameElementType))
			{
				nodeReturn = elementNode;
				
			}
			
			if(nodeReturn!= null)
				nodeList.add(nodeReturn);
		}
		
		return nodeList;
	}
	
	
	
	private String process(Document doc){
		ArrayList<String> rulesList = new ArrayList<String>();
		ArrayList<String> tempRulesList = new ArrayList<String>();
		
		nlComplexTypeList = doc.getElementsByTagName("xs:complexType");
		nlElementsList = doc.getElementsByTagName(xsElement);
		
		for(int i=0; i < nlComplexTypeList.getLength(); i++)
		{
			
			Node complexType = nlComplexTypeList.item(i);	
			String stringRule = null;
			String ruleHead = complexTypeSearch(doc, (Element) complexType);
			boolean bRoot = isRootNode(doc, (Element) complexType);
			
			ruleHead = ruleHead.replace(":","_");
						
			NodeList nlComplexTypeChilds = complexType.getChildNodes();
			
			for(int j=0; j < nlComplexTypeChilds.getLength(); j++){
				
				Node orderIndicator = nlComplexTypeChilds.item(j);
				
				String nodeName = orderIndicator.getNodeName();
				
				if(nodeName == xsSequence || nodeName == xsChoice || nodeName == xsAll  || nodeName == xsAttribute)
				{
					try
					{
				
						if(!bRoot)
						{
							stringRule = ruleHead+ "(IDPARENT, ID";
						}
						else
						{
							stringRule = ruleHead + "(ID";
						}
						
						stringRule+=ruleHead.toUpperCase();
						
						tempRulesList.add(stringRule);
						bodyRuleList.add("");
					
						if(nodeName == xsSequence){
							tempRulesList = processSequence(orderIndicator, tempRulesList,ruleHead);
						} 
						else if(nodeName == xsChoice){
							tempRulesList = processChoice(orderIndicator, tempRulesList,ruleHead);
						} 
						else if (nodeName == xsAll){
							tempRulesList = processAll(orderIndicator, tempRulesList,ruleHead);
						}
						else if(nodeName == xsAttribute)
						{
							//tempRulesList.set(tempRulesList.size()-1, stringRule.concat(", " + orderIndicator.getAttributes().getNamedItem("name").getNodeValue().toUpperCase()));
							//bodyRuleList.set(tempRulesList.size()-1, orderIndicator.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID"+"asasasasa".toUpperCase()+", " + "ID"+orderIndicator.getAttributes().getNamedItem("name").getNodeValue().toUpperCase()+"," +orderIndicator.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), ");
							
							tempRulesList = processAttributte(orderIndicator, tempRulesList,ruleHead);
						}
												
						for(Iterator<String> it = tempRulesList.iterator(); it.hasNext();){
							String rule = it.next();
							String body = bodyRuleList.get(tempRulesList.indexOf(rule));
							if(body.length()>0)
								rulesList.add(rule.concat(") :- " + body.substring(0, body.length() - 2)) + ".\n");
						}
						tempRulesList.clear();
						bodyRuleList.clear();
					}
					catch(Exception ex)
					{
						ruleHead = complexTypeSearch(doc, (Element) complexType);
						String a = ex.getMessage();
						a.toUpperCase();
						
					}
				}
			}
		}
		
		String stringProlog = "";
		
		
		HashMap<String,ArrayList<String>> docHash = new HashMap<String,ArrayList<String>>();
		ruleHash.put(doc, docHash);
		
		for(Iterator<String> it = rulesList.iterator(); it.hasNext();)
		{
			int k = rulesList.indexOf(it.next());
			
		     //#########
			 RuleStringParser ruleParser = new RuleStringParser();
			 ArrayList<String> ruleArray = ruleParser.getRules(rulesList.get(k));
			 
			 for (String strRule : ruleArray) 
			 {
				 String ruleName = ruleParser.getRuleName(strRule);
				 ArrayList<String> ruleNameArray = new ArrayList<String>();
				 if(docHash.containsKey(ruleName.trim()))
				 {
					 ruleNameArray = docHash.get(ruleName.trim());
					 if(ruleNameArray == null)
						 ruleNameArray = new ArrayList<String>();
					 
					 if(!ruleNameArray.contains(strRule.trim()))
						 ruleNameArray.add(strRule.trim());
				 }
				 else
		    	 {
		    		 ruleNameArray.add(strRule.trim());
		    	 }
				 docHash.put(ruleName.trim(),ruleNameArray );
			 }
		     //#########
			
			stringProlog = stringProlog.concat(rulesList.get(k));
		}
		
		
	    System.out.println(stringProlog.toString());
		return stringProlog.toString();
	}
	
	private ArrayList<String> processSequence(Node sequenceNode, ArrayList<String> tempRulesList,String ruleParent){
		NodeList nlSequenceChilds = sequenceNode.getChildNodes();

		int initialSize = tempRulesList.size();

		for(int i=0; i < nlSequenceChilds.getLength(); i++){
			Node child = nlSequenceChilds.item(i);
			
			if(child.getNodeName() == xsElement || child.getNodeName() == xsAttribute)
			{
				
				int finalSize = tempRulesList.size();
				
				//#####
					boolean bMinOccur = (child.getAttributes().getNamedItem("minOccurs") != null &&
							Integer.parseInt(child.getAttributes().getNamedItem("minOccurs").getNodeValue()) <=0);
					
					ArrayList<String> minOccurRulesList = new ArrayList<String>(); 
					ArrayList<String> minOccurBodyRulesList = new ArrayList<String>(); 
					
					if(bMinOccur)
					{
						minOccurRulesList.addAll(tempRulesList);
						minOccurBodyRulesList.addAll(bodyRuleList);
					}
				//####
				
				boolean bComplex = isComplexNode((Element)child);
				boolean bMixedNode = isMixedNode((Element)child);
					
				for(int k = initialSize-1-temp; k < finalSize; k++)
				{
					String stringRule = tempRulesList.get(k);
					String stringBody = bodyRuleList.get(k);
					
					if(bComplex && !bMixedNode)
					{
						tempRulesList.set(k, stringRule.concat(", ID" + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_")));
						bodyRuleList.set(k, stringBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase().replace(":", "_") + "(ID"+ruleParent.toUpperCase().replace(":", "_")+", " + "ID"+child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_")+"), "));
					}
					else
					{
						tempRulesList.set(k, stringRule.concat(", " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase()));
						//bodyRuleList.set(k, stringBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID, " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), "));
						bodyRuleList.set(k, stringBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase().replace(":", "_") + "(ID"+ruleParent.toUpperCase().replace(":", "_")+", " + "ID"+child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_")+"," +child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_") + "), "));
					}
										
				}
				
				
				//#####
					if(bMinOccur)
					{
						tempRulesList.addAll(minOccurRulesList);
						bodyRuleList.addAll(minOccurBodyRulesList);
					}
				//####			
				
			} 
			else if(child.getNodeName() == xsSequence){
				// TODO: Acerto para S{C, S}: Isso aqui esta esquisito
				temp = initialChoiceSize;
				tempRulesList = processSequence(child, tempRulesList,ruleParent);
				temp = 0;
				initialChoiceSize = 0;
			} 
			else if(child.getNodeName() == xsChoice){
				initialChoiceSize = tempRulesList.size();
				tempRulesList = processChoice(child, tempRulesList,ruleParent);
				if(flagSequenceChoice){
					tempRulesList = auxRuleList;
					bodyRuleList = auxBodyRuleList;
				}
				flagSequenceChoice = true;
			} 
		}
		flagSequenceChoice = false;
		return tempRulesList;
	}
	
	private ArrayList<String> processChoice(Node choiceNode, ArrayList<String> tempRulesList,String ruleParent){
		NodeList nlChoiceChilds = choiceNode.getChildNodes();
		
		String partialRule = tempRulesList.remove(tempRulesList.size()-1);
		String partialBody = bodyRuleList.remove(bodyRuleList.size()-1);
		
		boolean first = true;
		
		int n = 1;
		for(int i=0; i < nlChoiceChilds.getLength(); i++){
			Node child = nlChoiceChilds.item(i);
		
			if(child.getNodeName() == xsElement || child.getNodeName() == xsAttribute)
			{
				boolean bComplex = isComplexNode((Element)child);
				boolean bMixedNode = isMixedNode((Element)child);
				
				if(flagSequenceChoice){
					if(first){
						tempRulesList.add(partialRule);
						bodyRuleList.add(partialBody);
						first = false;
					}
					int finalSize = tempRulesList.size();
					for(int k = 0; k < finalSize; k++)
					{
						String stringRule = tempRulesList.get(k);
						String stringBody = bodyRuleList.get(k);
						
						if(bComplex && !bMixedNode)
						{
							auxRuleList.add(stringRule.concat(", ID" + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_")));
							auxBodyRuleList.add(stringBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID"+ruleParent.toUpperCase()+", " + "ID"+child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase()+ "), "));
							
						}
						else
						{ 
							auxRuleList.add(stringRule.concat(", " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_")));
							//auxRuleList.add(stringRule.concat(", " + child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + ", " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase()));
							//auxBodyRuleList.add(stringBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID, " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), "));
							auxBodyRuleList.add(stringBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase().replace(":", "_") + "(ID"+ruleParent.toUpperCase().replace(":", "_")+", " + "ID"+child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_")+"," + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_") + "), "));
							
							
						}
						
					}
					System.out.println("here");
				} 
				else
				{
					
					if(bComplex && !bMixedNode)
					{
						tempRulesList.add(partialRule + ", ID" + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_"));
						//tempRulesList.add(partialRule + ", ID" + child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase());
						bodyRuleList.add(partialBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase().replace(":", "_") + "(ID"+ruleParent.toUpperCase().replace(":", "_")+", " + "ID"+child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_")+ "), "));	
					}
					else
					{
						tempRulesList.add(partialRule + ", " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_"));
						//tempRulesList.add(partialRule + ", " + child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + ", " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase());
						//bodyRuleList.add(partialBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID, " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), "));
						bodyRuleList.add(partialBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase().replace(":", "_") + "(ID"+ruleParent.toUpperCase().replace(":", "_")+", " + "ID"+child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_")+"," + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_") + "), "));
					}	
				}
			} 
			else if(child.getNodeName() == xsSequence){
				tempRulesList.add(partialRule + ", s" + n);
				bodyRuleList.add(partialBody);
				n++;
				tempRulesList = processSequence(child, tempRulesList,ruleParent);
			} 
			else if(child.getNodeName() == xsChoice){
				tempRulesList.add(partialRule);
				bodyRuleList.add(partialBody);
				tempRulesList = processChoice(child, tempRulesList,ruleParent);
			} 
		}
		return tempRulesList;
	}

	private ArrayList<String> processAll(Node allNode, ArrayList<String> tempRulesList,String ruleParent){
		NodeList nlChoiceChilds = allNode.getChildNodes();
		
		String partialRule = tempRulesList.remove(tempRulesList.size()-1);
		String partialBody = bodyRuleList.remove(bodyRuleList.size()-1);
		
		for(int i=0; i < nlChoiceChilds.getLength(); i++){
			Node child = nlChoiceChilds.item(i);
		
			if(child.getNodeName() == xsElement || child.getNodeName() == xsAttribute)
			{
				
				boolean bComplex = isComplexNode((Element)child);
				boolean bMixedNode = isMixedNode((Element)child);
				
				if(bComplex && !bMixedNode)
				{
					tempRulesList.add(partialRule + ", ID" + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_") );
					//tempRulesList.add(partialRule + ", ID" + child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() );
					bodyRuleList.add(partialBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase().replace(":", "_") + "(ID"+ruleParent.toUpperCase().replace(":", "_")+", " + "ID"+child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_")+ "), "));
				}
				else
				{
					tempRulesList.add(partialRule + ", " + child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase().replace(":", "_") + ", " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_"));
					//bodyRuleList.add(partialBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID, " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), "));
					bodyRuleList.add(partialBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase().replace(":", "_") + "(ID"+ruleParent.toUpperCase().replace(":", "_")+", " + "ID"+child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_")+"," + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_") + "), "));	
				}		
			} 
		}
		return tempRulesList;
	}

    private ArrayList<String> processAttributte(Node attributeNode, ArrayList<String> tempRulesList,String ruleParent)
    {
		int initialSize = tempRulesList.size();
	
		int finalSize = tempRulesList.size();

		for(int k = initialSize-1-temp; k < finalSize; k++)
		{
			String stringRule = tempRulesList.get(k);
			String stringBody = bodyRuleList.get(k);
			
			String a = "";
			if(attributeNode.getAttributes().getNamedItem("name") != null)
				a = attributeNode.getAttributes().getNamedItem("name").getNodeValue();
			
			if(!a.isEmpty())
			{
				tempRulesList.set(k, stringRule.concat(", " + attributeNode.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_")));
				bodyRuleList.set(k, stringBody.concat(ruleParent.toLowerCase()+"_attribute_"+attributeNode.getAttributes().getNamedItem("name").getNodeValue().toLowerCase().replace(":", "_") + "(ID"+ruleParent.toUpperCase()+", " + "ID"+attributeNode.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_")+"," +"ATTRIBUTE_"+attributeNode.getAttributes().getNamedItem("name").getNodeValue().toUpperCase().replace(":", "_") + "), "));
			}
		}
		
		
		return tempRulesList;
    }
    
    /*private ArrayList<String> processSimpleTypeAttributes(Node simpleTypeNode, ArrayList<String> tempRulesList)
    {
    	String ruleParent = "";
    	if(simpleTypeNode.getAttributes().getNamedItem("name") != null)
    	  ruleParent = simpleTypeNode.getAttributes().getNamedItem("name").getNodeValue();
    		
        if(ruleParent.isEmpty())
        	return tempRulesList;
        
    	NodeList childNodes = simpleTypeNode.getChildNodes();
    	
    	for(int i=0; i< childNodes.getLength();i++)
    	{
    		if(childNodes.item(i).getNodeName() == xsAttribute)
    			processAttributte(childNodes.item(i), tempRulesList,ruleParent);
    	}
    	
    	return tempRulesList;
    }*/
	
	private String complexTypeSearch(Document doc, Element element)
	{
		String parentName = element.getAttributes().getNamedItem("name").getNodeValue();
		
		//NodeList nlElements = doc.getElementsByTagName("xs:element");
		
		String ruleHead = null;
		
		if(nlElementsList != null)
		{
			for(int k=0; k < nlElementsList.getLength(); k++) {
				Element e = (Element) nlElementsList.item(k);
	                        if ( e.getAttributeNode("type") != null)
	                        {
	                            if ( e.getAttributeNode("type").getNodeValue() != null )
	                            {
	                                if((e.getAttributeNode("type").getNodeValue().equals(parentName))){
	                                        ruleHead = (e.getAttributeNode("name").getNodeValue().toLowerCase());
	                                        break;
	                                }
	                            }
	                        }
		    }
			
		
		}
		return ruleHead;
	}
	
	private boolean isRootNode(Document doc, Element element)
	{
		String typeName = element.getAttributes().getNamedItem("name").getNodeValue();
		
		if(nlElementsList != null)
		{
			for(int k=0; k < nlElementsList.getLength(); k++) 
			{
				Element e = (Element) nlElementsList.item(k);
				if ( e.getAttributeNode("type") != null)
				{
					if ( e.getAttributeNode("type").getNodeValue() != null )
	                {
	                    if((e.getAttributeNode("type").getNodeValue().equals(typeName)))
	                    {
	                    	if(e.getParentNode() ==  doc.getFirstChild())
	                              return true;
	                    }
	                }
				}
			}
		}
		
		
		return false;
	}
	
	
	private boolean isComplexNode(Element childElement)
	{
        String typeName = childElement.getAttributes().getNamedItem("type").getNodeValue(); 
		
		if(nlComplexTypeList != null)
		{
			for(int k=0; k < nlComplexTypeList.getLength(); k++) 
			{
				Element e = (Element) nlComplexTypeList.item(k);
	            if ( e.getAttributeNode("name") != null)
	            {
	                if ( e.getAttributeNode("name").getNodeValue() != null )
	                {
	                    if((e.getAttributeNode("name").getNodeValue().equals(typeName)))
	                    {
	                            return true;
	                    }
	                }
	            }
			}
			
		}
		
			
		return false;
	}
	
	private boolean isMixedNode(Element childElement)
	{
		
		String typeName = childElement.getAttributes().getNamedItem("type").getNodeValue(); 
		
		if(nlComplexTypeList != null)
		{
			for(int k=0; k < nlComplexTypeList.getLength(); k++) 
			{
				Element e = (Element) nlComplexTypeList.item(k);
	            if ( e.getAttributeNode("name") != null)
	            {
	                if ( e.getAttributeNode("name").getNodeValue() != null )
	                {
	                    if((e.getAttributeNode("name").getNodeValue().equals(typeName)))
	                    {
	                            if(e.getAttributeNode("mixed") != null)
	                            {
	                            	if(e.getAttributeNode("mixed").getNodeValue().toLowerCase().equals("true"))
	                            		return true;
	                            }
	                    }
	                }
	            }
			}	
		}
		
		return false;
	}
}

