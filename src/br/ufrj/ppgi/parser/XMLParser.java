package br.ufrj.ppgi.parser;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import br.ufrj.ppgi.io.FileManager;

import javax.xml.parsers.SAXParserFactory; 
import javax.xml.parsers.SAXParser; 

import br.ufrj.ppgi.parser.DefaultHandleSAX;
import java.util.Map;


public class XMLParser extends DocumentParser{
	private static int contadorIdPai = 0;
	private long totalTime = 0;
	private Boolean bClearData = false;
	private Boolean bResetLastId = false;
	private static final String PATHCONFIG = "config.txt";
	
	private ArrayList<String> orderedElementList = new ArrayList<String>();
	
	private static XMLParser xmlParser = null;
	
	public synchronized static XMLParser getInstance() 
	{
		if ( xmlParser == null )
			xmlParser = new XMLParser();
		
		return xmlParser;
	}
	
	public void destroyInstance() 
	{
		xmlParser = null;
	}
	
	 public ArrayList<String> orderedElementList()
    {
    	return orderedElementList;
    }
	
    private void escreverId(Integer contadorId)
    {
    	File file = new File(PATHCONFIG);   
    	FileWriter fw;
		try {
			fw = new FileWriter(file);
			fw.write(contadorId.toString());
			fw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
    }
    
    private Integer obterId()
    {
    	File file = new File(PATHCONFIG);   
    	FileReader fr;
		try {
			fr = new FileReader(file);  
			BufferedReader br = new BufferedReader(fr);  
    	    String linha = br.readLine();
    	    br.close();
    	    fr.close();
    	    return Integer.parseInt(linha);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return 0;
    }

	
	public void executeParse(HashMap<String, File> fileList){
		//HashMap<String, Document> documentList = parserHandler(fileList);
		HashMap<String, Document> documentList  = DocumentParser.getInstance().parserHandler(fileList);
		Set<String> keyNames = documentList.keySet();
		
		 if  ( getClearData() )
         {
         	FileManager arquivo = new FileManager();
         	arquivo.clearDataFacts();
         }
		 
		 if ( bResetLastId ){
			 contadorIdPai = 0;
		 }
		 else{
			 contadorIdPai = obterId();
		 }
		 
    	
		long tempoInicial = System.currentTimeMillis();
		
    	for(String name : keyNames){
    		contadorIdPai++;
    		String stringProlog = process(documentList.get(name));
    		//System.out.println(stringProlog);
    		FileManager fileManager = new FileManager();
    		fileManager.writeFacts(stringProlog);
    	}
    	
    	long tempoFinal = System.currentTimeMillis();  
    	setTotalTime((tempoFinal - tempoInicial) / 1000);
    	  
    	System.out.printf("Tempo em segundos: " + getTotalTime());
    	escreverId(contadorIdPai);
	}
        
        public void executeParseSax(HashMap<String, File> fileList){
            Set<String> keyNames = fileList.keySet();
            
            if  ( getClearData() )
            {
            	FileManager arquivo = new FileManager();
            	arquivo.clearDataFacts();
            }
            
            long tempoInicial = System.currentTimeMillis();
            
            /* JAVA PARSER */
            //DefaultHandleSAX handler = new DefaultHandleSAX();
            NewHandleSAX handler = new NewHandleSAX();
            handler.setResetLastId(bResetLastId);
            SAXParserFactory factory = SAXParserFactory.newInstance();
            
            String indexRule = "indexOf([Element|_], Element, 1):- !. \n";
    		indexRule +="indexOf([_|Tail], Element, Index):- \n";
    		indexRule +="indexOf(Tail, Element, Index1),!, \n";
    		indexRule +="Index is Index1+1. \n";
    		
            String occurrenceRules = buildOccurrenceRules();
            String printRules = buildPrintRules();
            String functions = buildFunctionsRules();
            String axes = buildAxesRules();
            FileManager fileManager = new FileManager();           
            for(String name : keyNames)
            {
                
            	/* JAVA PARSER */
            	try
                {
                     SAXParser saxParser = factory.newSAXParser();
                     String path = fileList.get(name).getAbsolutePath();
                     saxParser.parse( new File(path), handler ); 
                }
                catch (Throwable t) 
                {
                    t.printStackTrace();
                }
            	
            	/* C++  PARSER */
            	/*try
            	{
            		String path = fileList.get(name).getAbsolutePath();
            		ISaxParserC saxParserC = new SaxParserC();
            		String factFilePath = fileManager.factsFilePath();
            		saxParserC.createBaseFacts(path,factFilePath);
            	}
            	catch(Exception ex)
            	{
            		
            	}*/
                contadorIdPai++;
               /* String stringProlog = process(documentList.get(name));
                //System.out.println(stringProlog);*/
                
                
                fileManager.writeFacts(indexRule);
                fileManager.writeFacts(printRules);
                fileManager.writeFacts(functions);
                fileManager.writeFacts(axes);
                fileManager.writeFacts(occurrenceRules);
                fileManager.writeSWIPrintRules();
                String print = indexRule;
                print+= printRules;
                print+= functions;
                print+= axes;
                print+= occurrenceRules;
                //System.out.println("####"+occurrenceRules);
            }

            long tempoFinal = System.currentTimeMillis();  
            setTotalTime((tempoFinal - tempoInicial) / 1000);
             
            System.out.printf("Tempo em segundos: " + getTotalTime());
            //orderedElementList = handler.orderedElementList();
            
	}
	
    private String buildOccurrenceRules()/**/
    {
        String occurrenceRules = "";
        HashMap<Document,ArrayList<Node>> choiceHash = SchemaParser.getInstance().getChoiceHash();
        
        for (Map.Entry<Document, ArrayList<Node>> entry : choiceHash.entrySet()) 
        {
            Document doc = entry.getKey();
            ArrayList<Node> value = entry.getValue();
            ArrayList<String> listNames = new ArrayList<String>();
            for (int i = 0; i < value.size(); i++) 
            {
                Node node = value.get(i);
                if (node.getAttributes().getNamedItem("name")!= null)
                {
                    String nodeName =  node.getAttributes().getNamedItem("name").getNodeValue();
                    //if(listNames.contains(nodeName))
                        //continue;
                    //System.out.println("###"+nodeName);
                    //listNames.add(nodeName);
                    occurrenceRules+=obtainOptionalRules(node,doc,listNames);
                    
                    
                }
                
                
                /*if (node.getAttributes().getNamedItem("name")!= null)
                {
                    String nodeName =  node.getAttributes().getNamedItem("name").getNodeValue();
                    if(listNames.contains(nodeName))
                        continue;
                    
                    listNames.add(nodeName);
                    String normalizedNodeName = nodeName.toLowerCase().replace(":", "_");
                    String nodeRule = "";
                    String strType = "";
                    if (node.getAttributes().getNamedItem("type")!= null)
				strType =  node.getAttributes().getNamedItem("type").getNodeValue();
                    if(strType.isEmpty())
                        continue;
                    
                    ArrayList<Node> nodeListType  = getComplexNodeByName(doc,strType);
                    
                    Node nodeType = null;
                    
                    if(nodeListType.size()>0)
                        nodeType = nodeListType.get(0);
                    
                    if(nodeType ==null )
                    {
                        nodeRule+=normalizedNodeName+"(_,_,_):-false.\n";
                        continue;
                    }
                    
                    boolean bHasChoiceChildren = hasChoiceMinOccursChildren(nodeType);
                    boolean bHasChildren = hasChildren(nodeType);
                    boolean bIsMixed = false;
                    if (nodeType.getAttributes().getNamedItem("mixed")!= null)
                            bIsMixed = nodeType.getAttributes().getNamedItem("mixed").getNodeValue().equalsIgnoreCase("true");
                    
                    ArrayList<String> arrayAttribueNames = obtainNodeAttributesNames(nodeType);
		    boolean bHasAttributes = arrayAttribueNames.size() >0;
                    
                    if(bIsMixed && bHasChoiceChildren)
                    {
                            nodeRule+=normalizedNodeName+"(_,_):-false.\n"+normalizedNodeName+"(_,_,_):-false.";
                    }
                    else if((!bIsMixed && bHasChildren) || (!bIsMixed && bHasAttributes ))
                    {
                            nodeRule+=normalizedNodeName+"(_,_):-false.";
                    }
                    else if((bIsMixed && bHasChildren))
                    {
                            nodeRule+=normalizedNodeName+"(_,_):-false.";
                    }
                    else
                    {
                            nodeRule+=normalizedNodeName+"(_,_,_):-false.";
                    }

                    occurrenceRules+= nodeRule+"\n";
                }*/
            }
        }
        occurrenceRules+= "xmlMixedElement(_,_,_):-false.\n";
        return occurrenceRules;
    }
    
    private String obtainOptionalRules(Node node,Document doc,ArrayList<String> listNames)
    {
        String occurrenceRules = "";
        //System.out.println(node.getAttributes());
        if (node.getAttributes().getNamedItem("name")!= null)
        {
            //System.out.println("OK");    
            String nodeName =  node.getAttributes().getNamedItem("name").getNodeValue();
                
                if(listNames.contains(nodeName))
                    return "";
                listNames.add(nodeName);
                //System.out.println("OK");
                String normalizedNodeName = nodeName.toLowerCase().replace(":", "_");
                String nodeRule = "";
                String strType = "";
                if (node.getAttributes().getNamedItem("type")!= null)
                            strType =  node.getAttributes().getNamedItem("type").getNodeValue();
                if(strType.isEmpty())
                {
                    //System.out.println("EMPTY");
                    return occurrenceRules;
                }

                ArrayList<Node> nodeListType  = getComplexNodeByName(doc,strType);

                Node nodeType = null;

                if(nodeListType.size()>0)
                    nodeType = nodeListType.get(0);

                if(nodeType ==null )
                {
                    //System.out.println("nodeType");
                    occurrenceRules+=normalizedNodeName+"(_,_,_):-false.\n";
                    return occurrenceRules;
                }

                boolean bHasChoiceChildren = hasChoiceMinOccursChildren(nodeType);
                boolean bHasChildren = hasChildren(nodeType);
                boolean bIsMixed = false;
                if (nodeType.getAttributes().getNamedItem("mixed")!= null)
                        bIsMixed = nodeType.getAttributes().getNamedItem("mixed").getNodeValue().equalsIgnoreCase("true");

                ArrayList<String> arrayAttribueNames = obtainNodeAttributesNames(nodeType);
                boolean bHasAttributes = arrayAttribueNames.size() >0;

                //if(bIsMixed && bHasChoiceChildren)
				//### 05_16
				if((bIsMixed && bHasChoiceChildren) || (!bHasChildren && bHasAttributes))
                {
                        nodeRule+=normalizedNodeName+"(_,_):-false.\n"+normalizedNodeName+"(_,_,_):-false.";
                }
                else if((!bIsMixed && bHasChildren) || (!bIsMixed && bHasAttributes ))
                {
                        nodeRule+=normalizedNodeName+"(_,_):-false.";
                }
                else if((bIsMixed && bHasChildren))
                {
                        nodeRule+=normalizedNodeName+"(_,_):-false.";
                }
                else
                {
                        nodeRule+=normalizedNodeName+"(_,_,_):-false.";
                }
                    
                //System.out.println("XXXXX"+nodeRule);
                occurrenceRules+= nodeRule+"\n";
                
                ArrayList<Node>  listChildNodes = obtainChildElements(nodeType);

                for(int i=0;i<listChildNodes.size();i++)
                {
                    Node  childNode = listChildNodes.get(i);
                    if(childNode == null )
                            continue;
                    
                    occurrenceRules+= obtainOptionalRules(childNode, doc,listNames);
                }
        }
        
        return occurrenceRules;
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
                         //System.out.println(childNodeName);
                         
                         
		    if(childNodeName.compareToIgnoreCase("xs:sequence") == 0)
		    	returnListChildNodes.addAll(obtainChildElements(childNode));
		    else if(childNodeName.compareToIgnoreCase("xs:choice") == 0)
		    	returnListChildNodes.addAll(obtainChildElements(childNode));
		    else if(childNodeName.compareToIgnoreCase("xs:all") == 0)
		    	returnListChildNodes.addAll(obtainChildElements(childNode));
		    else if(childNodeName.compareToIgnoreCase("xs:element") == 0)
		    	returnListChildNodes.add(childNode);
		}
		
		return returnListChildNodes;
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
    
    private boolean hasChoiceMinOccursChildren(Node _nodeType)
    {
            NodeList listChildNodes =  _nodeType.getChildNodes();
            for(int i=0;i<listChildNodes.getLength();i++)
            {
                   Node  childNode = listChildNodes.item(i);
                   if(childNode == null )
                           continue;

                    String childNodeName = childNode.getNodeName();
                    if(childNodeName.compareToIgnoreCase("xs:choice") == 0)
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
                     if(childNodeName.compareToIgnoreCase("xs:choice") == 0)
                             return true;
                     else if(childNodeName.compareToIgnoreCase("xs:sequence") == 0)
                             return true;
                     else if(childNodeName.compareToIgnoreCase("xs:all") == 0)
                             return true;
                     else if(childNodeName.compareToIgnoreCase("xs:element") == 0)
                             return true;
             }

            return false;
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
                    if(childNodeName.compareToIgnoreCase("xs:attribute") != 0)
                            continue;

                    String attrNodeName = "";
                    if (attrNode.getAttributes().getNamedItem("name")!= null)
                            attrNodeName = attrNode.getAttributes().getNamedItem("name").getNodeValue();

                    if(!attrNodeName.isEmpty())
                            arrayAttribueNames.add(attrNodeName);

            }

            return arrayAttribueNames;
    }
    
    private String buildPrintRules()
    {
    	String printRules = "";
    	
    	/*printRules = " printXML(LISTVAR,NODENAMESLIST,TREE,RULE) :- "; 
    	printRules +=  " findall( LISTVAR,RULE,RESULTLIST),printXMLRuleList(RESULTLIST,NODENAMESLIST,TREE,STACK,LASTTAG,LASTDEPHT),!.\n";
    	
    	printRules += " printXMLRuleList([HRESULT|TRESULT],NODENAMESLIST,TREE,STACK,LASTTAG,LASTDEPHT) :- \n"; 
    	printRules += "  printXMLRule(NODENAMESLIST,HRESULT,TREE,STACK,RESULTSTACK,LASTDEPHT,NEWLASTDEPHT,LASTTAG,RESULTTAG), \n";
    	printRules += "  printXMLRuleList(TRESULT,NODENAMESLIST,TREE,RESULTSTACK,RESULTTAG,NEWLASTDEPHT). \n";
    	
    	
    	printRules += "  printXMLRuleList([],NODENAMESLIST,TREE,STACK,LASTTAG,LASTDEPHT):-printCloseNodes(LASTTAG).\n";
    	
    	printRules += "  printXMLRule([],[],TREE,STACK,RESULTSTACK,LASTDEPHT,NEWLASTDEPHT,LASTTAG,NEWLASTTAG):- \n";
    	//printRules += "     (nonvar(STACK)->copy(STACK,RESULTSTACK);true), (nonvar(LASTTAG)->copy(LASTTAG,NEWLASTTAG);true), \n";
    	printRules += "     (nonvar(STACK),copy(STACK,RESULTSTACK);true), (nonvar(LASTTAG),copy(LASTTAG,NEWLASTTAG);true), \n";
    	printRules += "   (NEWLASTDEPHT = LASTDEPHT). \n";
    	
    	
    	printRules += "  printXMLRule([HNODE|TNODE],[HVAR|TVAR],TREE,STACK,RESULTSTACK,LASTDEPHT,NEWLASTDEPHT,LASTTAG,NEWLASTTAG) :-  \n";
    	printRules += "    depht(TREE,HNODE,NEXTNEWLASTDEPHT), checkPrintCLoseNode(LASTDEPHT,NEXTNEWLASTDEPHT,HVAR,LASTTAG,STACK,TMPNEWSTACK),checkPrintOpenNode(TREE,HNODE,HVAR,STACK), \n";
    	//printRules += "    addElementId(TREE,HNODE,HVAR,STACK,NEWSTACK),(var(NEWSTACK)->copy(STACK,NEWSTACK);true), \n";
    	printRules += "    addElementId(TREE,HNODE,HVAR,STACK,NEWSTACK),(var(NEWSTACK),copy(STACK,NEWSTACK);true), \n";
    	//printRules += "    addMapElementId(TREE,HNODE,HNODE,HVAR,TMPNEWSTACK,NEXTLASTTAG),(var(NEXTLASTTAG)-> (nonvar(TMPNEWSTACK)-> copy(TMPNEWSTACK,NEXTLASTTAG);true);true), \n";
    	printRules += "    addMapElementId(TREE,HNODE,HNODE,HVAR,TMPNEWSTACK,NEXTLASTTAG),(var(NEXTLASTTAG), (nonvar(TMPNEWSTACK),copy(TMPNEWSTACK,NEXTLASTTAG);true);true), \n";
    	printRules += "    printXMLRule(TNODE,TVAR,TREE,NEWSTACK,NEWRESULTSTACK,NEXTNEWLASTDEPHT,RETURNLASTDEPHT,NEXTLASTTAG,NEWRESULTTAG), \n";
    	printRules += "    joinLists(NEWRESULTTAG,NEXTLASTTAG,TMPTAG),distinct(TMPTAG,NEWLASTTAG),cleanList(TMPTAG,NEWLASTTAG), \n";	
    	printRules += "    joinLists(NEWRESULTSTACK,NEWSTACK,TMP),distinct(TMP,RESULTSTACK),cleanList(TMP,RESULTSTACK),NEWLASTDEPHT = RETURNLASTDEPHT . \n";
    	
    	//printRules += "  printNode(TREE,NODENAME,NODEVALUE) :-  nonvar(NODEVALUE) ->  (isLeaf(TREE,NODENAME) ->  depht(TREE,NODENAME,NSPACE),printOpenNode(NODENAME,NODEVALUE,NSPACE), \n";
    	printRules += "  printNode(TREE,NODENAME,NODEVALUE) :-  nonvar(NODEVALUE) ,  (isLeaf(TREE,NODENAME) ,  depht(TREE,NODENAME,NSPACE),printOpenNode(NODENAME,NODEVALUE,NSPACE), \n";
    	printRules += "    	printCloseNode(NODENAME,NODEVALUE,NSPACE) \n";
    	printRules += "    	; depht(TREE,NODENAME,NSPACE), printOpenNode(NODENAME,NODEVALUE,NSPACE) ); true. \n";
    	
    	printRules += "  checkPrintCLoseNode(LASTDEPHT,NEXTNEWLASTDEPHT,NODEID,LASTTAG,STACK,NEWLASTTAG) :- nonvar(LASTDEPHT)-> \n"; 
    	printRules += "       (nonvar(NEXTNEWLASTDEPHT),NEXTNEWLASTDEPHT < LASTDEPHT -> \n"; 
    	printRules += "       ( element(1,LASTTAG,NODE),atom_chars(NODE,LISTCHARS),indexOfElement(LISTCHARS,'-',CHARPOS),split(LISTCHARS,CHARPOS+1,LIST1, LIST2), \n";
    	printRules += "  	   atom_chars(PRINTNODE,LIST2),PRINTDEPHT is LASTDEPHT-1,printCloseNode(PRINTNODE,_,PRINTDEPHT), \n";
    	printRules += "  	   removeListHead(LASTTAG,NEWLASTTAG) \n";
    	printRules += "  	 );nonvar(LASTTAG)->(var(NEWLASTTAG)-> copy(LASTTAG,NEWLASTTAG));true);nonvar(LASTTAG)->(var(NEWLASTTAG)-> copy(LASTTAG,NEWLASTTAG));true. \n";
			 
		
    	printRules += "  checkPrintOpenNode(TREE,HNODE,HVAR,LISTID)	:-  \n";
    	printRules += "       var(LISTID)->(printNode(TREE,HNODE,HVAR));(nonvar(LISTID),nonvar(HVAR), \\+member(HVAR,LISTID) -> printNode(TREE,HNODE,HVAR)) \n";
    	printRules += "  	 ;true. \n";
    	
    	
    	
    	
    	printRules += "  printOpenNode(NODENAME,NODEVALUE,NSPACE) :- ident(NSPACE),print('<'),write(NODENAME),print( '>'),nl, NEWNSPACE is NSPACE+3, ident(NEWNSPACE), write(NODEVALUE),nl. \n";
    	printRules += "  printCloseNode(NODENAME,NODEVALUE,NSPACE) :- ident(NSPACE),print('</'),write(NODENAME),print( '>'),nl. \n";
    	
    	printRules += "  ident(0). \n";
    	printRules += "  ident(N) :- N>0, print(' '), M is N-1, ident(M). \n";
    	
    	
    	printRules += "  findnode(t(NODE,F),NODENAME,SUBTREE) :-  ( NODE == NODENAME -> SUBTREE = F; findnode(F,NODENAME,SUBTREE) ). \n";
        printRules += "  findnode([],NODENAME,SUBTREE). \n";
        printRules += "  findnode([T|Ts],NODENAME,SUBTREE) :- findnode(T,NODENAME,SUBTREE), findnode(Ts,NODENAME,SUBTREE). \n";
    	
    	printRules += "  printCloseNodes([]).\n";
        printRules += "  printCloseNodes(NODEIDMAP) :- length(NODEIDMAP, NLENGHT), printCloseMapNodes(NODEIDMAP,NLENGHT). \n";			
        
		printRules += "  printCloseMapNodes([],0).\n";
        printRules += "  printCloseMapNodes([],1). \n";
		
        printRules += "  printCloseMapNodes(NODEIDMAP, NLENGHT) :- element(1,NODEIDMAP,NODE),atom_chars(NODE,LISTCHARS),indexOfElement(LISTCHARS,'-',CHARPOS),split(LISTCHARS,CHARPOS+1,LIST1, LIST2), \n";
        printRules += "  				atom_chars(PRINTNODE,LIST2),PRINTDEPHT is NLENGHT-1,printCloseNode(PRINTNODE,_,PRINTDEPHT),removeListHead(NODEIDMAP,NEWNODEIDMAP), \n";
        printRules += "  				NEWNLENGHT is NLENGHT -1 ,printCloseMapNodes(NEWNODEIDMAP,NEWNLENGHT). \n";
    	
    	
        printRules += "  removeListHead([_|Tail], Tail). \n";
    	
        printRules += "  isLeaf(TREE,NODENAME) :- findnode(TREE,NODENAME,SUBTREE),length(SUBTREE,0). \n";
    	
    	
        printRules += "  depht(T,NODENAME,DEPHT) :- depht(T,NODENAME,0,DEPHT). \n";
        printRules += "  depht(t(NODE,F),NODENAME,CURRENTDEPHT,DEPHT) :- ( NODE == NODENAME -> DEPHT = CURRENTDEPHT;(NEWCURRENTDEPHT is CURRENTDEPHT +1,depht(F,NODENAME,NEWCURRENTDEPHT,DEPHT)) ). \n";
        printRules += "  depht([],NODENAME,CURRENTDEPHT,DEPHT). \n";
        printRules += "  depht([T|Ts],NODENAME,CURRENTDEPHT,DEPHT) :- depht(T,NODENAME,CURRENTDEPHT,DEPHT),depht(Ts,NODENAME,CURRENTDEPHT,DEPHT). \n";
    	
        printRules += "  add(X,List,[X|List]). \n";
    	
        printRules += "  copy(LIST,LISTRESULT) :- append(LIST,[],LISTRESULT). \n";

        printRules += "  addFirstItem(ITEM,LISTRESULT) :- append([ITEM],[],LISTRESULT). \n";
    	
        printRules += "  addElementId(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST) :- (nonvar(NODEVALUE),\\+isLeaf(TREE,NODENAME) ->addListId(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST));true. \n";
    	
        printRules += "  addElement(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST) :- (nonvar(NODEVALUE),\\+isLeaf(TREE,NODENAME) ->addListElement(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST));true. \n";
    	
    	
        printRules += "  addMapElementId(TREE,NODENAME,NODEVALUE,NODEID,OLDLIST,NEWLIST):-  \\+isLeaf(TREE,NODENAME) ->(nonvar(NODEID),nonvar(NODEVALUE), \n";
        printRules += "     mynumber(NODEID, NODEIDSTRING),text_concat(NODEIDSTRING,'-',NODEIDHIFEN),text_concat(NODEIDHIFEN,NODEVALUE,NODEMAP), \n";
        printRules += "  	addElement(TREE,NODENAME,NODEMAP,OLDLIST, NEWLIST));true. \n";
				
		
        printRules += "  addListId(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST)  :- (number(NODEVALUE)->(nonvar(OLDLIST)->(\\+ memberchk(NODEVALUE,OLDLIST)->append([NODEVALUE],OLDLIST,NEWLIST);true);(copy([NODEVALUE],NEWLIST))));true. \n";
	    
	    
        printRules += "  addListElement(TREE,NODENAME,NODEVALUE,OLDLIST, NEWLIST)  :- (nonvar(OLDLIST)->(append([NODEVALUE],OLDLIST,NEWLIST));(copy([NODEVALUE],NEWLIST))). \n";
	    
	    
        printRules += "  addNewItemList(ITEM,OLDLIST,NEWLIST) :- nonvar(OLDLIST)->( \\+ memberchk(ITEM,OLDLIST)->append([ITEM],OLDLIST,NEWLIST)).  \n";
				
        printRules += "  idInList(ID,LIST) :-   nonvar(ID),number(ID), memberchk(ID,LIST). \n";
	    
        printRules += "  idNotInList(ID,LIST) :-   nonvar(ID),number(ID), \\+ memberchk(ID,LIST). \n";
	    
	    
        printRules += "  joinLists(LISTA,LISTB,RESULTLIST) :- (nonvar(LISTA),nonvar(LISTB)) -> (append(LISTA,LISTB,RESULTLIST)) ; (nonvar(LISTA),copy(LISTA,RESULTLIST)); (nonvar(LISTB),copy(LISTB,RESULTLIST));true. \n";
    	*/
	    
        printRules += "  member1(X,[H|_]) :- X==H,!. \n";
        printRules += "  member1(X,[_|T]) :- member1(X,T). \n";
	     
        printRules += "  distinct([],[]). \n";
        printRules += "  distinct([H|T],C) :- member1(H,T),!, distinct(T,C). \n";
        printRules += "  distinct([H|T],[H|C]) :- distinct(T,C). \n";
        
		printRules += "  remv([], []).\n";
        printRules += "  remv([H|T], N) :- var(H), !, remv(T, N).\n";
        printRules += "  remv([H|T], [H|N]) :- remv(T, N).\n";
  
        printRules += "  cleanList(LISTA, LISTB) :- nonvar(LISTA),(remv(LISTA,LISTC),distinct(LISTC,LISTB));true.\n";
        
        printRules += "  %atom chars(Atom,List)\n";    
        printRules += "  %element(Pos, List, Element) i\n";
        printRules += "  %% split(L,N,L1,L2) :- the list L1 contains the first N elements\n";            
        printRules += "  split(L,0,[],L).\n";
        printRules += "  split([X|Xs],N,[X|Ys],Zs) :- N > 0, N1 is N - 1, split(Xs,N1,Ys,Zs).\n";

        printRules += "  indexOfElement([Element|_], Element, 0):- !.\n";
        printRules += "  indexOfElement([_|Tail], Element, Index):-\n";
        printRules += "  indexOfElement(Tail, Element, Index1),\n";
        printRules += "  !,\n";
        printRules += "  Index is Index1+1.\n";
 
	    
    	return printRules;
    }

    private String buildAxesRules()
    {
    	String strAxesRules = "";
    	
    	strAxesRules += " listOfList([[H|_]|_]). \n";
    	strAxesRules += " first_listOflist([],_). \n";
    	strAxesRules += " first_listOflist([[H|_]|[]],[H]):- !. \n";
    	strAxesRules += " first_listOflist([[H|_]|T],[H|T1]):- first_listOflist(T,T1). \n";
    	
    	strAxesRules += " following(LISTIN,LIST) :- listOfList(LISTIN) , (first_listOflist(LISTIN,LIST));first_list(LISTIN,LIST). \n";
    	strAxesRules += " first_list([Y|Tail],[Y]). \n";
    	strAxesRules += " first_list([X],[X]). \n";
    	
    	strAxesRules += " last_listOflist([],_). \n";
    	strAxesRules += " last_listOflist([[_|T]|[]],[H]):- last_list(T,H),!. \n";
    	strAxesRules += " last_listOflist([[_|T]|T1],[H|T2]):- last_list(T,H),last_listOflist(T1,T2). \n";
    	
    	strAxesRules += " preceding(LISTIN,LIST) :- listOfList(LISTIN) , (last_listOflist(LISTIN,LIST));last_list(LISTIN,X),LIST = [X]. \n";
    	
    	strAxesRules += " last_list([Y|Tail],LISTIN):-last_list(Tail,LISTIN). \n";
    	strAxesRules += " last_list([X],X). \n";
    	
    	return strAxesRules;

    }
    
    private String buildFunctionsRules()
    {
    	String strFunctionRules = "";
    	
    	strFunctionRules+= " substringBefore(STRING1, STRING2, STRINGRESULT) :- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2), \n";
    	strFunctionRules+= " substringBeforeList(STR1,STR2,STRINGRESULT,_). \n";         
    	strFunctionRules+= " substringBeforeList([],_,STRINGRESULT,_):-  STRINGRESULT = ''. \n";
    	strFunctionRules+= " substringBeforeList([H|T], [H1|T1],STRINGRESULT,STRINGRESULTAUX):- H==H1 , ( (var(STRINGRESULTAUX), STRINGRESULT = ''; atom_chars(STRINGRESULT,STRINGRESULTAUX)),!); addEndList(H,STRINGRESULTAUX,STRINGRESULTTEMP),substringBeforeList(T,[H1|T1],STRINGRESULT,STRINGRESULTTEMP),!.\n";
    	
    	
    	strFunctionRules+= " substringAfter(STRING1, STRING2, STRINGRESULT) :- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2),\n";
		strFunctionRules+= " substringAfterList(STR1,STR2,STRINGRESULT).\n";

		strFunctionRules+= " substringAfterList([],_,STRINGRESULT):-  STRINGRESULT = ''.\n";
		strFunctionRules+= " substringAfterList([H|T], [H1|T1],STRINGRESULT):- H==H1 , (copyList(T,STRINGRESULTLIST),atom_chars(STRINGRESULT,STRINGRESULTLIST),!);substringAfterList(T,[H1|T1],STRINGRESULT),!.\n";
		
		
		strFunctionRules+= " normalizeSpace(TEXT,STRINGRESULT) :- atom_chars(TEXT,STR),\n";
		strFunctionRules+= " normalizeSpaceList(STR,STRINGRESULT).\n";
     
        strFunctionRules+= " normalizeSpaceList(STR,STRINGRESULT) :- normalizeSpaceList(STR,STRINGRESULT,TMPSTRINGRESULT), write(STRINGRESULT), atom_chars(TMPSTRINGRESULT,STRINGRESULT),!.\n";
        strFunctionRules+= " normalizeSpaceList([H|T],STRINGRESULT,TMPSTRINGRESULT) :- \\+ H=' ' , (addEndList(H,TMPSTRINGRESULT,NEWTMP),normalizeSpaceList(T,STRINGRESULT,NEWTMP),!); normalizeSpaceList(T,STRINGRESULT,TMPSTRINGRESULT).\n";
        strFunctionRules+= " normalizeSpaceList([],STRINGRESULT,TMPRESULTLIST).%var(TMPRESULTLIST) -> STRINGRESULT = []; STRINGRESULT = TMPRESULTLIST.\n";
        
        
        strFunctionRules+= " contains(STRINGA, STRINGB) :- atom_chars(STRINGA,X), atom_chars(STRINGB,Y),\n";
        strFunctionRules+= " containsListOrder(X,Y).\n";
     
        strFunctionRules+= " containsListOrder([],_) :- false.\n"; 
        strFunctionRules+= " containsListOrder([H|T], [H1|T1]) :- H==H1 , (compare(T,T1),!);containsListOrder(T,[H1|T1]).\n";
        
        
        strFunctionRules+= " startsWith(STRING1, STRING2) :- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2),\n";
		strFunctionRules+= " startsWithList(STR1,STR2).\n";            
		strFunctionRules+= " startsWithList([],_):-  false,!.\n";
		strFunctionRules+= " startsWithList(_,[]):-  true,!. \n";
		strFunctionRules+= " startsWithList([H|T], [H1|T1]):- H==H1 , (startsWithList(T,T1)); false.\n";     

		strFunctionRules+= " endsWith(STRING1, STRING2) :- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2),\n";
		strFunctionRules+= " endsWithList(STR1,STR2).\n";            
		strFunctionRules+= " endsWithList(_,[]):-  false,!.\n"; 
		strFunctionRules+= " endsWithList([],_):-  false,!.\n"; 
		strFunctionRules+= " endsWithList([H|T], [H1|T1]):- H==H1 , ( compareList(T,T1),!);endsWithList(T,[H1|T1]).\n";
		
		
		
		strFunctionRules+= " concat(STRINGINPUT,RESULT) :- tokenize(STRINGINPUT,',',TOKENIZERESULT),concatList(TOKENIZERESULT,TMPRESULT,RESULT).\n";
		 
		strFunctionRules+= "  concatList([],TMPRESULT,RESULT) :- RESULT = TMPRESULT.\n";
		strFunctionRules+= "  concatList([H|T],TMPRESULT,RESULT):-  (nonvar(TMPRESULT), atom_concat(TMPRESULT,H,NEWTMPRESULT);NEWTMPRESULT = H),concatList(T,NEWTMPRESULT,RESULT),!.\n";
		 
		 
		 
		strFunctionRules+= " tokenize(STRING,TOKEN,RESULT) :- atom_chars(STRING,STR1),tokenizeList(STR1,TOKEN,TMPLIST,TMPRESULT,RESULTLIST),\n"; 
		strFunctionRules+= "   transformCharList(RESULTLIST, RESULTCHAR, RESULT).\n";
		 
		strFunctionRules+= " transformCharList([],RESULTCHAR,RESULT) :- RESULT = RESULTCHAR.\n";
		strFunctionRules+= " transformCharList([H|T],RESULTCHAR,RESULT) :- atom_chars(STRING,H),addEndList(STRING,RESULTCHAR,NEWRESULTCHAR), transformCharList(T,NEWRESULTCHAR,RESULT),!.\n";
 
		strFunctionRules+= " tokenizeList([],TOKEN,TMPLIST,TMPRESULT,RESULT):- addEndList(TMPLIST,TMPRESULT,NEWRESULTTMP),RESULT = NEWRESULTTMP,!.\n";
		strFunctionRules+= " tokenizeList([H|T],TOKEN,TMPLIST,TMPRESULT,RESULT) :- H == TOKEN , (addEndList(TMPLIST,TMPRESULT,NEWRESULTTMP),tokenizeList(T,TOKEN,NEWTMPLIST,NEWRESULTTMP,RESULT),!) ;addEndList(H,TMPLIST,NEWTMPLIST), tokenizeList(T,TOKEN,NEWTMPLIST,TMPRESULT, RESULT),!.\n";
 

		strFunctionRules+= " tokenize(STRING,TOKEN,RESULT) :- atom_chars(STRING,STR1),tokenizeList(STR1,TOKEN,TMPLIST,TMPRESULT,RESULTLIST), \n";
		strFunctionRules+= " transformCharList(RESULTLIST, RESULTCHAR, RESULT).\n";


		strFunctionRules+= " stringLength(STRING,LENGTH) :- atom_chars(STRING,STR1),listSize(STR1,LENGTH).\n";


		strFunctionRules+= " listSize([H|T],LENGTH) :- listSize([H|T],LENGTH,0).\n";
		strFunctionRules+= " listSize([H|T],LENGTH,TMPLENGTH) :- NEWTMPLENGTH is TMPLENGTH +1, listSize(T,LENGTH,NEWTMPLENGTH).\n";
		strFunctionRules+= " listSize([],LENGTH,TMPLENGTH) :-  LENGTH = TMPLENGTH,!.\n";

		strFunctionRules+= " compareNumber(STRING1,STRING2,RESULT):- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2),compareNumberList(STR1,STR2,RESULT).\n";
 
         
		strFunctionRules+= " compareNumberList([], [],NUMBER):- NUMBER = 0.\n";
		strFunctionRules+= " compareNumberList([H|T], [H1|T1],NUMBER) :- H==H1 ,(compareNumberList(T,T1,NUMBER),!); (H@>H1->NUMBER = 1; NUMBER = -1).\n";

		
		strFunctionRules+= " substring(STRING1,START,END,RESULT) :- atom_chars(STRING1,STR1),substringList(STR1,START,END,2,RESULTLIST),atom_chars(RESULT,RESULTLIST).\n";
		strFunctionRules+= " substringList([I|L],START,END,COUNT,RESULT):- START ==COUNT,take(END,L,RESULT). \n";
		strFunctionRules+= " substringList([I|L],START,END,COUNT,RESULT):- COUNT < START,NCOUNT is COUNT +1, substringList(L,START,END,NCOUNT,RESULT). \n";
		strFunctionRules+= " take(N, _, Xs) :- N =< 0, !, N =:= 0, Xs = []. \n";
		strFunctionRules+= " take(_, [], []). \n";
		strFunctionRules+= " take(N, [X|Xs], [X|Ys]) :- M is N-1, take(M, Xs, Ys). \n";
		
		//strFunctionRules+= " substring(STRING1,START,END,RESULT) :- atom_chars(STRING1,STR1),\n";
		//strFunctionRules+= "   NCOUNT is 1, substringList(STR1,START,END,NCOUNT,RESULT).\n";

		//strFunctionRules+= " substringList([H|T],START,END,NCOUNT,RESULT) :- START == NCOUNT , (copyNList([H|T],RESULTAUX,END), atom_chars(RESULT,RESULTAUX),! ); (TMPNCOUNT is NCOUNT +1, substringList(T,START,END,TMPNCOUNT,RESULT)).\n";


		//strFunctionRules+= " substring(STRING1,START,RESULT) :- atom_chars(STRING1,STR1),\n";
		//strFunctionRules+= "    NCOUNT is 1, substringList(STR1,START,NCOUNT,RESULT).\n";

		//strFunctionRules+= " substringList([H|T],START,NCOUNT,RESULT) :- START == NCOUNT , (copyNList([H|T],RESULTAUX,9999), atom_chars(RESULT,RESULTAUX),! ); (TMPNCOUNT is NCOUNT +1, substringList(T,START,TMPNCOUNT,RESULT)).\n";



		strFunctionRules+= " copyNList( COPIEDLIST,RESULTLIST, SIZE) :- copyNList(COPIEDLIST,RESULTLIST,SIZE,0,TMPRESULTLIST).\n";
		strFunctionRules+= " copyNList([H|T],RESULTLIST,SIZE,ACTUALSIZE,TMPRESULTLIST) :- SIZE == ACTUALSIZE , (var(TMPRESULTLIST) , RESULTLIST = []; RESULTLIST = TMPRESULTLIST); addEndList(H,TMPRESULTLIST,NEWTMP),TMPACTUALSIZE is ACTUALSIZE +1, copyNList(T,RESULTLIST,SIZE,TMPACTUALSIZE,NEWTMP).\n";
		strFunctionRules+= " %copyNList([H|T],RESULTLIST,TMPRESULTLIST) :- addEndList(H,TMPRESULTLIST,NEWTMP), copyList(T,RESULTLIST,NEWTMP).\n";
		strFunctionRules+= " copyNList([],RESULTLIST,SIZE,ACTUALSIZE,TMPRESULTLIST) :-  var(TMPRESULTLIST) , RESULTLIST = []; RESULTLIST = TMPRESULTLIST.\n";
		
		
		strFunctionRules+= " contains(STRING1, STRING2) :- atom_chars(STRING1,STR1), atom_chars(STRING2,STR2),\n";
		strFunctionRules+= " containsList(STR1,STR2). \n";           
	 
		strFunctionRules+= " containsList(_,[]) :- false.\n";
		strFunctionRules+= " containsList([],_) :- false.\n";
		strFunctionRules+= " containsList([H|T], [H1|T1]) :- H==H1,(compareList(T,T1),!);containsList(T, [H1|T1]). \n";
	 
	 
	 
		strFunctionRules+= " compareList(_, []):- true.\n";
		strFunctionRules+= " compareList([H|T], [H1|T1]) :- H==H1 ,(compareList(T,T1),!);false.\n";
	    

		strFunctionRules+= " compareList([],[]):- true,!.\n";
	    strFunctionRules+= " compareList([H|T], [H1|T1]):- H==H1 ,(compareList(T,T1));false.\n";

        strFunctionRules+= " compare(_, []):- true.\n";
    	strFunctionRules+= " compare([], _):- false.\n";
    	strFunctionRules+= " compare([H|T], [H1|T1]) :- H==H1 ,(compare(T,T1)).\n";
    	
    	//strFunctionRules+= " floor(INPUT, OUTPUT):- atom_number(INPUT,NINPUT), TMPOUTPUT is floor(NINPUT), OUTPUT = TMPOUTPUT.\n";
    	//strFunctionRules+= " myfloor(INPUT, OUTPUT):- atom(INPUT)-> ( atom_number(INPUT,NINPUT), TMPOUTPUT is floor(NINPUT), OUTPUT = TMPOUTPUT); TMPOUTPUT is floor(INPUT), OUTPUT = TMPOUTPUT.\n";
    	//strFunctionRules+= " myfloor(INPUT, OUTPUT):- atom(INPUT)-> ( num_atom(NINPUT,INPUT), TMPOUTPUT is floor(NINPUT), OUTPUT = TMPOUTPUT); TMPOUTPUT is floor(INPUT), OUTPUT = TMPOUTPUT.\n";
    	strFunctionRules+= " myfloor(INPUT, OUTPUT):- TMPOUTPUT is floor(INPUT), OUTPUT = TMPOUTPUT.\n";

    	//strFunctionRules+= " myceiling(INPUT, OUTPUT):-  atom_number(INPUT,NINPUT), TMPOUTPUT is ceiling(NINPUT), OUTPUT = TMPOUTPUT.\n";
    	strFunctionRules+= " myceiling(INPUT, OUTPUT):-   mynumber(INPUT,NINPUT), TMPOUTPUT is ceiling(NINPUT), OUTPUT = TMPOUTPUT.\n";


    	//strFunctionRules+= " myround(INPUT, OUTPUT):-  atom_number(INPUT,NINPUT), TMPOUTPUT is round(NINPUT), OUTPUT = TMPOUTPUT.\n";
    	//strFunctionRules+= " myround(INPUT, OUTPUT):-  mynumber(INPUT,NINPUT), TMPOUTPUT is round(NINPUT), OUTPUT = TMPOUTPUT.\n";
    	strFunctionRules+= " myround(INPUT, OUTPUT):-   OUTPUT is round(INPUT).\n";


    	strFunctionRules+= " sum(List, Sum) :-\n";
    	strFunctionRules+= " 		    sum(List, 0, Sum).\n";

    	strFunctionRules+= " sum([], Accumulator, Accumulator).\n";

    	strFunctionRules+= " sum([Head|Tail], Accumulator, Result) :-\n";
    	//strFunctionRules+= " 	  atom_number(Head,NHEAD),  NewAccumulator is Accumulator + NHEAD,\n";
    	strFunctionRules+= " 	  mynumber(Head,NHEAD),  NewAccumulator is Accumulator + NHEAD,\n";
        strFunctionRules+= " sum(Tail, NewAccumulator, Result). \n"; 
    											
		strFunctionRules+= " %Copy one List to another \n";
		strFunctionRules+= " copyList( COPIEDLIST,RESULTLIST) :- copyList(COPIEDLIST,RESULTLIST,TMPRESULTLIST).\n";
		strFunctionRules+= " copyList([H|T],RESULTLIST,TMPRESULTLIST) :- addEndList(H,TMPRESULTLIST,NEWTMP), copyList(T,RESULTLIST,NEWTMP).\n";
		strFunctionRules+= " copyList([],RESULTLIST,TMPRESULTLIST) :-  var(TMPRESULTLIST) , RESULTLIST = []; RESULTLIST = TMPRESULTLIST.\n";						

		strFunctionRules+= " %addEndList(X,L,L1)\n";
		strFunctionRules+= " %adds element X to the end of the list L and returns L1\n";
    	strFunctionRules+= " addEndList(X,[],[X]).\n";
    	strFunctionRules+= " addEndList(X,[A|L],[A|L1]):- \n";
    	strFunctionRules+= " addEndList(X,L,L1). \n";
    	
    	//strFunctionRules+= " mynumber(INPUT, OUTPUT):- atom(INPUT)-> ( num_atom(NINPUT,INPUT), OUTPUT = NINPUT); OUTPUT = INPUT. \n";
    	strFunctionRules+= " mynumber(INPUT, OUTPUT):-  number(INPUT),OUTPUT = INPUT,!.\n";
    	strFunctionRules+= " mynumber(INPUT, OUTPUT):- num_atom(OUTPUT,INPUT); atom_chars(INPUT,TMP), number_chars(OUTPUT,TMP). \n";
    	strFunctionRules+= " num_atom(INPUT, OUTPUT):- false. \n";
    	strFunctionRules+= " count(List, Count) :- \n";
    	strFunctionRules+= " 		count(List, 0, Count). \n";
    	strFunctionRules+= " count([], Accumulator, Accumulator). \n";
    	strFunctionRules+= " count([Head|Tail], Accumulator, Result) :- \n";
    	strFunctionRules+= "    NewAccumulator is Accumulator + 1, \n";
    	strFunctionRules+= " count(Tail, NewAccumulator, Result). \n";
    	//strFunctionRules+= " div(N1,N2,OUT) :- mynumber(N1,NN1), mynumber(N2,NN2), myfloor(NN1,N1FLOOR),myfloor(NN2,N2FLOOR), (N2FLOOR==0,OUT=0,!; OUT is div(N1FLOOR,N2FLOOR)). \n";
    	//strFunctionRules+= " div(N1,N2,OUT) :- mynumber(N1,NN1), mynumber(N2,NN2), (NN2==0,OUT=0,!; OUT is NN1/NN2). \n";
    	strFunctionRules+= " div(N1,N2,OUT) :-   N2>0,OUT is N1/N2.%mynumber(N1,NN1), mynumber(N2,NN2), (NN2==0,OUT=0.0,!; OUT is NN1/NN2 ). \n"; 
    	strFunctionRules+= " div(_,0,0). \n";
    	
    	
    	
    	strFunctionRules+= "  minus([H|T1],L2,[H|L3]):- \n";
    	strFunctionRules+= "     not(member(H,L2)), \n";
    	strFunctionRules+= "     minus(T1,L2,L3). \n";
    	strFunctionRules+= " minus([H|T1],L2,L3):- \n";
    	strFunctionRules+= "     member(H,L2), \n";
    	strFunctionRules+= "     minus(T1,L2,L3). \n";
    	strFunctionRules+= " minus([],_,[]). \n";
  
    	//strFunctionRules+= " boolean(VARIN,BOOLOUT) :- nonvar(VARIN) -> BOOLOUT = true ; BOOLOUT = false. \n";
    	strFunctionRules+= " boolean(VARIN,BOOLOUT) :- nonvar(VARIN) , BOOLOUT = true ; BOOLOUT = false. \n";
    	//strFunctionRules+= " not(VARIN,BOOLOUT) :- nonvar(VARIN) -> BOOLOUT = false ; (BOOLOUT = true). \n";
    	strFunctionRules+= " not(VARIN,BOOLOUT) :- nonvar(VARIN) , BOOLOUT = false ; (BOOLOUT = true). \n";
    	
    	strFunctionRules+= " quick_sort([X|Xs],Ys) :- \n";
    	strFunctionRules+= " partition(Xs,X,Left,Right), \n";
    	strFunctionRules+= "   quick_sort(Left,Ls), \n";
    	strFunctionRules+= "   quick_sort(Right,Rs), \n";
    	strFunctionRules+= "   append(Ls,[X|Rs],Ys). \n";
    	strFunctionRules+= " quick_sort([],[]). \n";
    	
    	
    	

    	strFunctionRules+= " partition([X|Xs],Y,[X|Ls],Rs) :- nonvar(X),nonvar(Y),X =< Y, partition(Xs,Y,Ls,Rs). \n";
    	strFunctionRules+= " partition([X|Xs],Y,Ls,[X|Rs]) :- nonvar(X),nonvar(Y), \n";
    	strFunctionRules+= "   X > Y, partition(Xs,Y,Ls,Rs). \n";
    	strFunctionRules+= " partition([],Y,[],[]). \n";

    	strFunctionRules+= " append([],Ys,Ys). \n";
    	strFunctionRules+= " append([X|Xs],Ys,[X|Zs]) :- append(Xs,Ys,Zs). \n";
    	
    	strFunctionRules+= " printnl(VAR):- write('\\n'). %print(VAR),print('\\n'). \n";
    	strFunctionRules+= " nlprint(VAR):- print('\\n'),print(VAR). \n";
    	
    	
    	strFunctionRules+= " translate(IN,REP,REPOUT,OUT) :- atom_chars(IN,NIN),atom_chars(REP,NREP),atom_chars(REPOUT,NREPOUT) \n";
    	strFunctionRules+=  ", replaceAll(NIN,NREP,NREPOUT,NOUT)\n";
    	strFunctionRules+= ",atom_chars(OUT,NOUT).   \n";
    	
    	strFunctionRules+= " replaceAll([],_Pattern,_Replace,[]):-  \n";
    	strFunctionRules+= "   !. \n";
    	strFunctionRules+= " replaceAll(OldString,Pattern,Replace,NewString):- \n";
    	strFunctionRules+= "  startsWith2(OldString,Pattern,Rest), \n";
    	strFunctionRules+= "  !, \n";
    	strFunctionRules+= "  replaceAll(Rest,Pattern,Replace,TailNewString), \n";
    	strFunctionRules+= "   append(Replace,TailNewString,NewString). \n";
    	strFunctionRules+= " replaceAll([H|TailOldString],Pattern,Replace,[H|TailNewString]):- \n";
    	strFunctionRules+= "  replaceAll(TailOldString,Pattern,Replace,TailNewString). \n";
    		
    	strFunctionRules+= " startsWith2(OldString,[],OldString):-  \n";
    	strFunctionRules+= "  !. \n";
    	strFunctionRules+= " startsWith2([H|TOldString],[H|T],Rest):-  \n";
    	strFunctionRules+= "  !, \n";
    	strFunctionRules+= "  startsWith2(TOldString,T,Rest). \n";
    	
    	strFunctionRules+= " string_concat(STR1,STR2,OUT):- atom_chars(STR1,STR1L), atom_chars(STR2,STR2L) \n";
    	strFunctionRules+= " ,append(STR1L,STR2L,OUTL), atom_chars(OUT,OUTL).\n";
    	  
    	
    	strFunctionRules+= " subtract([], _, []).\n";
    	strFunctionRules+= " subtract([Head|Tail], L2, L3) :-\n";
    	strFunctionRules+= "         memberchk(Head, L2),\n";
    	strFunctionRules+= "         !,\n";
    	strFunctionRules+= "         subtract(Tail, L2, L3).\n";
    	strFunctionRules+= " subtract([Head|Tail1], L2, [Head|Tail3]) :-\n";
    	strFunctionRules+= "         subtract(Tail1, L2, Tail3).\n";
    	  
    	/*strFunctionRules+= " replace( T1, S1, S2, T2 ) :- atom_chars(T1,NT1),atom_chars(S1,NS1),atom_chars(S2,NS2), \n";
    	strFunctionRules+= " segment( NS1, Pre, NT1, Post ), \n";
    	strFunctionRules+= " append( NS2, Post, S2_plus_Post ), \n";
    	strFunctionRules+= " append( Pre, S2_plus_Post, NT2 ),atom_chars(T2,NT2). \n";

    	strFunctionRules+= " segment( List, [], [], List ) :- !. \n";
    	strFunctionRules+= " segment( [H|T_], [], [H|T], Post ) :- \n";
    	strFunctionRules+= " segment( T_, [], T, Post ), !. \n";
    	strFunctionRules+= " segment( [H|T_], [H|U], Seg, Post ) :- \n";
    	strFunctionRules+= " segment( T_, U, Seg, Post ). \n";*/
    	
    	strFunctionRules+= " flatten(List, FlatList) :-\n";
		strFunctionRules+= " flatten(List, [], FlatList0), !,\n";
		strFunctionRules+= " FlatList = FlatList0.\n";

		strFunctionRules+= " flatten(Var, Tl, [Var|Tl]) :-\n";
		strFunctionRules+= " var(Var), !.\n";
		strFunctionRules+= " flatten([], Tl, Tl) :- !.\n";
		strFunctionRules+= " flatten([Hd|Tl], Tail, List) :- !,\n";
		strFunctionRules+= " flatten(Hd, FlatHeadTail, List),\n";
		strFunctionRules+= " flatten(Tl, Tail, FlatHeadTail).\n";
		strFunctionRules+= " flatten(NonList, Tl, [NonList|Tl]).\n";
 
		strFunctionRules+= " deletelist([], _, []). \n";                 
		strFunctionRules+= " deletelist([X|Xs], Y, Z) :- member(X, Y), deletelist(Xs, Y, Z), !.\n";
		strFunctionRules+= " deletelist([X|Xs], Y, [X|Zs]) :- deletelist(Xs, Y, Zs).\n";
	 
	    //strFunctionRules+= " addTailList(X,[H|T],[H|L]) :- addTail(X,T,L).\n";
		//strFunctionRules+= " addTailList(X,[],[X]).\n";
		//strFunctionRules+= " addTail(X,LIST1,LIST2) :- var(LIST1)-> addTailList(X,[],LIST2); addTailList(X,LIST1,LIST2).\n";
		//strFunctionRules+= " addTailList(ID,LIST1,LIST2):- var(LIST1)-> add_tail([],ID,LIST2),!;add_tail(LIST1,ID,LIST2).\n";
		strFunctionRules+= " addTailList(ID,LIST1,LIST2):- (var(LIST1),add_tail([],ID,LIST2),!);(add_tail(LIST1,ID,LIST2)).\n";
		strFunctionRules+= " add_tail([],X,[X]).\n";
		strFunctionRules+= " add_tail([H|T],X,[H|L]):- add_tail(T,X,L).\n";
		strFunctionRules+= " addHeadList(X,L2,[X|L2]).\n";
		strFunctionRules+= " notMember(ID,LIST) :- \\+member(ID,LIST),!.\n"; 
		strFunctionRules+= " isString(CONTENT):- atom_chars(CONTENT,LIST), ((member('a',LIST),!); (member('b',LIST),!); (member('c',LIST),!); ";
		strFunctionRules+= " (member('d',LIST),!);(member('e',LIST),!);(member('f',LIST),!);(member('g',LIST),!);(member('h',LIST),!);(member('i',LIST),!); ";
		strFunctionRules+= " (member('j',LIST),!);(member('k',LIST),!);(member('l',LIST),!);(member('m',LIST),!);(member('n',LIST),!);(member('o',LIST),!); ";
		strFunctionRules+= " (member('p',LIST),!);(member('q',LIST),!);(member('r',LIST),!);(member('s',LIST),!);(member('t',LIST),!);(member('u',LIST),!); ";
		strFunctionRules+= " (member('v',LIST),!);(member('w',LIST),!);(member('x',LIST),!);(member('y',LIST),!);(member('z',LIST),!);(member('A',LIST),!); ";
		strFunctionRules+= " (member('B',LIST),!);(member('C',LIST),!);(member('D',LIST),!);(member('E',LIST),!);(member('F',LIST),!);(member('G',LIST),!); ";
		strFunctionRules+= " (member('H',LIST),!) ;(member('I',LIST),!);(member('J',LIST),!);(member('K',LIST),!);(member('L',LIST),!);(member('M',LIST),!); ";
		strFunctionRules+= " (member('N',LIST),!) ;(member('O',LIST),!);(member('P',LIST),!);(member('Q',LIST),!);(member('R',LIST),!);(member('S',LIST),!); ";
		strFunctionRules+= " (member('T',LIST),!) ;(member('U',LIST),!);(member('V',LIST),!);(member('W',LIST),!);(member('X',LIST),!);(member('Y',LIST),!); ";
		strFunctionRules+= " (member('Z',LIST),!) ;(member('>',LIST),!);(member('<',LIST),!);(member('=',LIST),!);(member('+',LIST),!);(member('-',LIST),!); ";
		strFunctionRules+= " (member('*',LIST),!) ;(member('(',LIST),!);(member(')',LIST),!);(member('&',LIST),!);(member('%',LIST),!);(member('#',LIST),!); ";
		strFunctionRules+= " (member('@',LIST),!) ;(member('!',LIST),!);(member('|',LIST),!);(member(';',LIST),!);(member('[',LIST),!);(member(']',LIST),!); ";
		strFunctionRules+= " (member('?',LIST),!) ;(member('{',LIST),!);(member('}',LIST),!);(member('_',LIST),!) ";
		strFunctionRules+= " ).\n ";
		strFunctionRules+= " verifyBooleanContent(CONTENT):- (atom_chars(CONTENT,[]),false,!);(isString(CONTENT),!);(atom_chars(CONTENT,L),listSize(L,SIZE),SIZE>0, mynumber(CONTENT,N),(N\\==0) ).\n";
    	
    	
    	return strFunctionRules;
    }
    
	private String process(Document doc){
		ArrayList<String> factsList = new ArrayList<String>();
		
		
		String indexRule = "indexOf([Element|_], Element, 1):- !. \n";
		indexRule +=" indexOf([_|Tail], Element, Index):- \n";
		indexRule +=" indexOf(Tail, Element, Index1), !, \n";
		indexRule +=" Index is Index1+1. \n";
		factsList.add(indexRule);
		
		String printRules = buildPrintRules();
		factsList.add(printRules);
		
		// Raiz
		Element raiz = doc.getDocumentElement();
		factsList.add(raiz.getNodeName().toLowerCase() + "(" + contadorIdPai + "). \n");
		
		if(raiz.hasAttributes())
		{
			NamedNodeMap attributeList = raiz.getAttributes();
			
			for(int j=0; j < attributeList.getLength(); j++){
				//o coment�rio abaixo no replace � porque n�o � necess�rio. Est� comentado para caso tenha a necessidade de voltar
				factsList.add(attributeList.item(j).getNodeName().toLowerCase().replace(":", "_") + "("+contadorIdPai+ ", " + ++contadorIdPai +", '" + attributeList.item(j).getNodeValue().replace("'", "\"")/*.replace("\t", "").replace("\n", "")*/ + "'). \n");
			}
		}
		
		processChildren((Node)raiz, factsList);
		
		String stringProlog = "";
		for(Iterator<String> it = factsList.iterator(); it.hasNext();){
			int k = factsList.indexOf(it.next());
			stringProlog = stringProlog.concat(factsList.get(k));
		}
		
		return stringProlog;
	}
	
	static void processChildren(Node node, ArrayList<String> factsList){
		node.normalize();
		
		int idPai = contadorIdPai;

		if (node.hasChildNodes())
		{
			NodeList nl = node.getChildNodes();
			for (int i=0; i < nl.getLength();i++)
			{
				if(!nl.item(i).getNodeName().equals("#text"))
				{
					factsList.add(nl.item(i).getNodeName().toLowerCase() + "("+Integer.toString(idPai)+ ", ");
					factsList = checkNode(nl.item(i), factsList);
				}
				processChildren(nl.item(i), factsList);
			}		  
		}
	}
	
	static ArrayList<String> checkNode(Node node, ArrayList<String> factsList){
		NodeList childList = node.getChildNodes();
		boolean hasElementChild = false;
		boolean hasTextChild = false;
		boolean hasAttribute = false;
		boolean isMixed = false;
		boolean isNotEmpty = node.hasChildNodes();
		
		int idPai = contadorIdPai;
		int idProprio = 0;
		
		ArrayList<String> mixedElementsFactsList = new ArrayList<String>();
		if(isNotEmpty){
			for (int i=0; i < childList.getLength();i++){
				Node child = childList.item(i);
				if(child.getNodeType() == Node.ELEMENT_NODE){
					hasElementChild = true;
				}
				if((child.getNodeType() == Node.TEXT_NODE) && (child.getNodeValue() != null)){
					hasTextChild = true;
				}
				if(hasElementChild && hasTextChild){
					if(child.getNodeValue() != null){
						isMixed = true;
						hasTextChild = false;
						break;
						//mixedElementsFactsList.add("xml/elementoMisto(id"+Integer.toString(idPai)+", '" + child.getNodeValue().replace("'", "´").replace("\t", "").replace("\n", "") + "').\n");
					}
				}
			}
		}
		if(node.hasAttributes()){
			hasAttribute = true;
		}
		
		int index = factsList.size()-1;
		String content = factsList.get(index);
		
		if(isNotEmpty){
			if((hasElementChild == false) && (hasAttribute == false) && hasTextChild){
				
				contadorIdPai++;
				idProprio = contadorIdPai;
				
				//o coment�rio abaixo no replace � porque n�o � necess�rio. Est� comentado para caso tenha a necessidade de voltar
				factsList.set(index, content + Integer.toString(idProprio)+", " +("'" + node.getFirstChild().getNodeValue().replace("'", "\"")/*.replace("\t", "").replace("\n", "")*/ + "'). \n"));
				
			} else if((hasElementChild == false) && hasAttribute && hasTextChild){
				NamedNodeMap attributeList = node.getAttributes();
				
				contadorIdPai++;
				idProprio = contadorIdPai;
				//o coment�rio abaixo no replace � porque n�o � necess�rio. Est� comentado para caso tenha a necessidade de voltar
				factsList.set(index, content + (Integer.toString(idProprio)/*+ ", " /*+ ++contadorIdPai*/ + ", '" + node.getFirstChild().getNodeValue()/*.replace("'", "''").replace("\t", "").replace("\n", "")*/ + "'). \n"));
				
				for(int j=0; j < attributeList.getLength(); j++){
					//o coment�rio abaixo no replace � porque n�o � necess�rio. Est� comentado para caso tenha a necessidade de voltar
					factsList.add(attributeList.item(j).getNodeName().toLowerCase() + "(" + Integer.toString(idProprio)+ ", " + ++contadorIdPai +  ", '" + attributeList.item(j).getNodeValue().replace("'", "\"")/*.replace("\t", "").replace("\n", "")*/ + "'). \n");
				}
				
			} else if(hasElementChild){
				contadorIdPai++;
				idProprio = contadorIdPai;
				
				factsList.set(index, content + (Integer.toString(idProprio)+"). \n"));
				
				if(hasAttribute){
					NamedNodeMap attributeList = node.getAttributes();
					
					for(int j=0; j < attributeList.getLength(); j++){
						//o coment�rio abaixo no replace � porque n�o � necess�rio. Est� comentado para caso tenha a necessidade de voltar
						factsList.add(attributeList.item(j).getNodeName().toLowerCase() + "(" + Integer.toString(idProprio)+", " + ++contadorIdPai + ", '" + attributeList.item(j).getNodeValue().replace("'", "\"")/*.replace("\t", "").replace("\n", "") */+ "'). \n");
					}
				}
			}
		}
		else{
			if(hasAttribute){
				NamedNodeMap attributeList = node.getAttributes();
				
				contadorIdPai++;
				idProprio = contadorIdPai;
				factsList.set(index, content + (Integer.toString(idProprio)+", " + ++contadorIdPai + ", ''). \n"));
				
				for(int j=0; j < attributeList.getLength(); j++){
					//o coment�rio abaixo no replace � porque n�o � necess�rio. Est� comentado para caso tenha a necessidade de voltar
					factsList.add(attributeList.item(j).getNodeName().toLowerCase() + "(" + Integer.toString(idProprio)+", " /*+ ++contadorIdPai*/+ ", '" + attributeList.item(j).getNodeValue().replace("'", "\"")/*.replace("\t", "").replace("\n", "") */+ "'). \n");
				}
			}
			else{
				factsList.set(index, content + ("''). \n"));
			}
		}
		
		if(isMixed){
			for (int i=0; i < childList.getLength();i++){
				Node child = childList.item(i);
				if((child.getNodeType() == Node.TEXT_NODE) && (child.getNodeValue() != null) && (!child.getNodeValue().replace("\t", "").replace("\n", "").replace(" ", "").equals(""))){
					mixedElementsFactsList.add("xml/elementoMisto("+Integer.toString(idPai)+", " + ++contadorIdPai +  ", '" + child.getNodeValue().replace("'", "´").replace("\t", "").replace("\n", "") + "').\n");
				}
			}
			factsList.addAll(mixedElementsFactsList);
		}
		return factsList;
	}

	public long getTotalTime() {
		return totalTime;
	}

	public void setTotalTime(long totalTime) {
		this.totalTime = totalTime;
	}

	public void setClearData(Boolean checkClearDataSelected) {
		bClearData = checkClearDataSelected;
	}
	
	public void setResetLastId(Boolean checkResetLastId){
		bResetLastId = checkResetLastId;
	}
	public Boolean getClearData() {
		return bClearData;
	}
        
        

}
