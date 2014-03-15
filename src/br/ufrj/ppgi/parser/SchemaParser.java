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

import br.ufrj.ppgi.io.FileManager;

public class SchemaParser extends DocumentParser{
	private final String xsElement = "xs:element";
	private final String xsSequence = "xs:sequence";
	private final String xsChoice = "xs:choice";
	private final String xsAll = "xs:all";
	
	private static SchemaParser schemaParser = null;
	private HashMap<Document,HashMap<String, ArrayList<String>>> ruleHash = new HashMap<Document,HashMap<String, ArrayList<String>>>();
	
	//TODO: Variaveis criadas para resolver S{C, S}
	private int initialChoiceSize = 0;
	private int temp = 0;
	//TODO: Variaveis criadas para resolver S{C, C}	
	private boolean flagSequenceChoice = false;
	private ArrayList<String> auxRuleList = new ArrayList<String>();
	
	private ArrayList<String> bodyRuleList = new ArrayList<String>();
	private ArrayList<String> auxBodyRuleList = new ArrayList<String>();
	
	
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
		
		return ruleHash;
	}
	
	
	public void executeParse(HashMap<String, File> fileList, String nameSet){
		HashMap<String, Document> documentList = DocumentParser.getInstance().parserHandler(fileList);
		Set<String> keyNames = documentList.keySet();
		
		StringBuffer translation = new StringBuffer();
    	
    	for(String name : keyNames){
    		String stringProlog = process(documentList.get(name));
    		//System.out.println(stringProlog);
    		FileManager fileManager = new FileManager();
    		fileManager.writeRules(stringProlog);
    		translation.append(stringProlog);
    	}
	}
	
	private String process(Document doc){
		ArrayList<String> rulesList = new ArrayList<String>();
		ArrayList<String> tempRulesList = new ArrayList<String>();
		
		NodeList nlComplexType = doc.getElementsByTagName("xs:complexType");
		
		for(int i=0; i < nlComplexType.getLength(); i++){
			
			Node complexType = nlComplexType.item(i);	
			String stringRule = null;
			String ruleHead = complexTypeSearch(doc, (Element) complexType);
						
			NodeList nlComplexTypeChilds = complexType.getChildNodes();
			
			for(int j=0; j < nlComplexTypeChilds.getLength(); j++){
				
				Node orderIndicator = nlComplexTypeChilds.item(j);
				
				String nodeName = orderIndicator.getNodeName();
				
				if(nodeName == xsSequence || nodeName == xsChoice || nodeName == xsAll){
					stringRule = ruleHead + "(ID";
					tempRulesList.add(stringRule);
					bodyRuleList.add("");
				
					if(nodeName == xsSequence){
						tempRulesList = processSequence(orderIndicator, tempRulesList);
					} 
					else if(nodeName == xsChoice){
						tempRulesList = processChoice(orderIndicator, tempRulesList);
					} 
					else if (nodeName == xsAll){
						tempRulesList = processAll(orderIndicator, tempRulesList);
					}
					
					for(Iterator<String> it = tempRulesList.iterator(); it.hasNext();){
						String rule = it.next();
						String body = bodyRuleList.get(tempRulesList.indexOf(rule));
						rulesList.add(rule.concat(") :- " + body.substring(0, body.length() - 2)) + ".\n");
					}
					tempRulesList.clear();
					bodyRuleList.clear();
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
		
		return stringProlog.toString();
	}
	
	private ArrayList<String> processSequence(Node sequenceNode, ArrayList<String> tempRulesList){
		NodeList nlSequenceChilds = sequenceNode.getChildNodes();

		int initialSize = tempRulesList.size();

		for(int i=0; i < nlSequenceChilds.getLength(); i++){
			Node child = nlSequenceChilds.item(i);
			
			if(child.getNodeName() == xsElement)
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
				
				
				for(int k = initialSize-1-temp; k < finalSize; k++){
					String stringRule = tempRulesList.get(k);
					tempRulesList.set(k, stringRule.concat(", " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase()));
					String stringBody = bodyRuleList.get(k);
					//bodyRuleList.set(k, stringBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID, " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), "));
					bodyRuleList.set(k, stringBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID, " + "ID"+child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase()+"," +child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), "));
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
				tempRulesList = processSequence(child, tempRulesList);
				temp = 0;
				initialChoiceSize = 0;
			} 
			else if(child.getNodeName() == xsChoice){
				initialChoiceSize = tempRulesList.size();
				tempRulesList = processChoice(child, tempRulesList);
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
	
	private ArrayList<String> processChoice(Node choiceNode, ArrayList<String> tempRulesList){
		NodeList nlChoiceChilds = choiceNode.getChildNodes();
		
		String partialRule = tempRulesList.remove(tempRulesList.size()-1);
		String partialBody = bodyRuleList.remove(bodyRuleList.size()-1);
		
		boolean first = true;
		
		int n = 1;
		for(int i=0; i < nlChoiceChilds.getLength(); i++){
			Node child = nlChoiceChilds.item(i);
		
			if(child.getNodeName() == xsElement){
				if(flagSequenceChoice){
					if(first){
						tempRulesList.add(partialRule);
						bodyRuleList.add(partialBody);
						first = false;
					}
					int finalSize = tempRulesList.size();
					for(int k = 0; k < finalSize; k++){
						String stringRule = tempRulesList.get(k);
						auxRuleList.add(stringRule.concat(", " + child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + ", " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase()));
						String stringBody = bodyRuleList.get(k);
						//auxBodyRuleList.add(stringBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID, " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), "));
						auxBodyRuleList.add(stringBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID, " + "ID"+child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase()+"," + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), "));
					}
					System.out.println("here");
				} else{
					tempRulesList.add(partialRule + ", " + child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + ", " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase());
					//bodyRuleList.add(partialBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID, " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), "));
					bodyRuleList.add(partialBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID, " + "ID"+child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase()+"," + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), "));
				}
			} 
			else if(child.getNodeName() == xsSequence){
				tempRulesList.add(partialRule + ", s" + n);
				bodyRuleList.add(partialBody);
				n++;
				tempRulesList = processSequence(child, tempRulesList);
			} 
			else if(child.getNodeName() == xsChoice){
				tempRulesList.add(partialRule);
				bodyRuleList.add(partialBody);
				tempRulesList = processChoice(child, tempRulesList);
			} 
		}
		return tempRulesList;
	}

	private ArrayList<String> processAll(Node allNode, ArrayList<String> tempRulesList){
		NodeList nlChoiceChilds = allNode.getChildNodes();
		
		String partialRule = tempRulesList.remove(tempRulesList.size()-1);
		String partialBody = bodyRuleList.remove(bodyRuleList.size()-1);
		
		for(int i=0; i < nlChoiceChilds.getLength(); i++){
			Node child = nlChoiceChilds.item(i);
		
			if(child.getNodeName() == xsElement){
				tempRulesList.add(partialRule + ", " + child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + ", " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase());
				//bodyRuleList.add(partialBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID, " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), "));
				bodyRuleList.add(partialBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID, " + "ID"+child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase()+"," + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), "));
			} 
		}
		return tempRulesList;
	}

	
	private ArrayList<String> processElementMinOccur(Node occurNode, ArrayList<String> tempRulesList)
	{
		String partialRule = tempRulesList.remove(tempRulesList.size()-1);
		String partialBody = bodyRuleList.remove(bodyRuleList.size()-1); 
		
		if(false)
		{
			/*if(first)
			{
				tempRulesList.add(partialRule);
				bodyRuleList.add(partialBody);
				first = false;
			}*/
			int finalSize = tempRulesList.size();
			for(int k = 0; k < finalSize; k++)
			{
				String stringRule = tempRulesList.get(k);
				auxRuleList.add(stringRule.concat(", " + occurNode.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + ", " + occurNode.getAttributes().getNamedItem("name").getNodeValue().toUpperCase()));
				String stringBody = bodyRuleList.get(k);
				//auxBodyRuleList.add(stringBody.concat(child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID, " + child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), "));
				auxBodyRuleList.add(stringBody.concat(occurNode.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID, " + "ID"+occurNode.getAttributes().getNamedItem("name").getNodeValue().toUpperCase()+"," + occurNode.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), "));
			}
			System.out.println("here");
		} 
		else
		{
			tempRulesList.add(partialRule + ", " + occurNode.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + ", " + occurNode.getAttributes().getNamedItem("name").getNodeValue().toUpperCase());
			
			bodyRuleList.add(partialBody.concat(occurNode.getAttributes().getNamedItem("name").getNodeValue().toLowerCase() + "(ID, " + "ID"+occurNode.getAttributes().getNamedItem("name").getNodeValue().toUpperCase()+"," + occurNode.getAttributes().getNamedItem("name").getNodeValue().toUpperCase() + "), "));
		}
		
		return tempRulesList;
	}
	
	
	private String complexTypeSearch(Document doc, Element element){
		String parentName = element.getAttributes().getNamedItem("name").getNodeValue();
		
		NodeList nlElements = doc.getElementsByTagName("xs:element");
		
		String ruleHead = null;
		
		for(int k=0; k < nlElements.getLength(); k++) {
			Element e = (Element) nlElements.item(k);
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
		return ruleHead;
	}
	
	/*private boolean hasMinOccursZero(Element element){
		boolean minOccursZero = false;
		
		if(element.hasAttribute("minOccurs")){
			minOccursZero = element.getAttributeNode("type").getNodeValue().equals("0");
		}
		
		return minOccursZero;
	}*/
}

