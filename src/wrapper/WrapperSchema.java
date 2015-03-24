package wrapper;

import java.io.StringWriter;
import java.security.acl.LastOwnerException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.logging.Level;

import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import br.ufrj.ppgi.parser.DocumentParser;
import br.ufrj.ppgi.parser.RuleStringParser;
import br.ufrj.ppgi.parser.SchemaParser;
import wrapper.QueryElement;
import wrapper.expressionFilter.Function;
import wrapper.expressionFilter.IExpression;
import wrapper.expressionFilter.OperatorEqual;
import wrapper.expressionFilter.OperatorGreaterEqualThan;
import wrapper.expressionFilter.OperatorGreaterThan;
import wrapper.expressionFilter.OperatorLessEqualThan;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ls.LSInput;

public class WrapperSchema extends Wrapper {
	
	private ArrayList<QueryElement> arrayElementsQuery;
	private Node rootNode;
	
	private void extractElementsFromQuery( String query )
	{
		arrayElementsQuery = new ArrayList<QueryElement>();
		String tempQuery = query;
		tempQuery += "/";
		int posInit = 1;
		int posBar = tempQuery.indexOf("/", 1);
		String strLastItem = "";
		boolean bFilter = false;
		
		List<Pair<Integer,Integer>> pairPLicList = new ArrayList<Pair<Integer,Integer>>();
		boolean bHasPlic = false;
		int beginPosPlic = query.indexOf("'",0);
		int endPosPlic = -1;
		while(beginPosPlic > -1)
		{
			endPosPlic = query.indexOf("'",beginPosPlic+1);
			if(beginPosPlic < endPosPlic)
			{
				bHasPlic = true;
				pairPLicList.add(new Pair<Integer, Integer>(beginPosPlic,endPosPlic));
			}
			
			beginPosPlic = query.indexOf("'",endPosPlic+1);
		}
		
		
		//boolean bHasParenthesis = false;
		/*if(beginPosPlic!= -1 )
		{
			endPosPlic = query.indexOf("'",beginPosPlic+1);
		}*/
		
		
		while (posBar > -1)
		{
			String strSubString = tempQuery.substring(posInit, posBar);
			int posFilter = -1;
			if(! strSubString.isEmpty())
			{
				if(strSubString.indexOf("[", 0) != -1)
				{
					
					
					String strFirst = tempQuery.substring(posInit,tempQuery.indexOf("[", posInit));
					strFirst = strFirst.replace("/", "");
					if(!strFirst.isEmpty())
					{
						QueryElement queryElement = new QueryElement();
						queryElement.parseElement(strFirst);
						strLastItem = queryElement.getElement();
						arrayElementsQuery.add(queryElement );
					}
					/*if(posInit<=2)
					{
						String strFirst = tempQuery.substring(posInit,tempQuery.indexOf("[", posInit));
						QueryElement queryElement = new QueryElement();
						queryElement.parseElement(strFirst);
						strLastItem = queryElement.getElement();
						arrayElementsQuery.add(queryElement );
					}*/
					
					
					posInit = tempQuery.indexOf("[", posInit);
					posFilter = tempQuery.indexOf("]", posInit);
					strSubString = tempQuery.substring(posInit,posFilter+1 );
					
					
					int internalFilter = strSubString.indexOf("/");
					
					//#################################################
					int beginPosPlicFilter = strSubString.indexOf("'",0);
					int endPosPlicFilter = -1;
					if(beginPosPlicFilter!= -1 )
					{
						endPosPlicFilter = strSubString.indexOf("'",beginPosPlicFilter+1);
					}
					if(internalFilter>=beginPosPlicFilter && internalFilter<=endPosPlicFilter)
						internalFilter = -1;
					
					List<Pair<Integer,Integer>> pairParenthesisList = mapParenthsis(strSubString);
					
					for(int i=0; i< pairParenthesisList.size();i++)
					{
						Pair<Integer,Integer> pair = pairParenthesisList.get(i);
						if(internalFilter>=pair.getKey() && internalFilter<=pair.getValue())
						{
							internalFilter = -1;
							break;
						}
						
					}
					//#################################################
					
					if(internalFilter > -1)
					{
						//String strSub = tempQuery.substring(posInit+1, strSubString.length()-1);
						String[] internalElements = strSubString.split("/");
						int nCount=1;
						for (String string : internalElements) 
						{
							string = string.replace("[", "");
							string = string.replace("]", "");
							if(nCount == internalElements.length)
							{
								strSubString = "["+string+"]";
								break;
							}
							
							QueryElement queryElement = new QueryElement();
							queryElement.parseElement(string);
							queryElement.setIsFilterpart(true);
							arrayElementsQuery.add(queryElement);
							
							nCount++;
						}
							
					}
				}
				
				
				ArrayList<String> andElements = getAndElements(strSubString);
				ArrayList<String> orElements = getOrElements(strSubString);
				
				if(andElements.size()>0)
				{
					for (String stringAnd : andElements)
					{
						QueryElement queryElement = new QueryElement();
						queryElement.parseElement("["+stringAnd+"]");
						queryElement.setIsFilterpart(true);
						arrayElementsQuery.add(queryElement);
					}	
				}
				else if(orElements.size()>0)
				{
					for (String stringOR : orElements)
					{
						QueryElement queryElement = new QueryElement();
						queryElement.parseElement("["+stringOR+"]");
						queryElement.setIsFilterpart(true);
						queryElement.setIsOrFilterpart(true);
						arrayElementsQuery.add(queryElement);
					}	
				}
				//else if(! (strSubString.indexOf("[", 0) != -1))
				else if( (strSubString.indexOf("[", 0) != -1))
				{
					QueryElement queryElement = new QueryElement();
					
					String strfilterElement =  strSubString;
					strfilterElement = strfilterElement.replace("[", "");
					strfilterElement = strfilterElement.replace("]", "");
					queryElement.parseElement(strSubString);
					
					if(isNumber(queryElement.getVariable()))
					{
						QueryPosition queryElementPosition = new QueryPosition();
						queryElementPosition.parseElement(strSubString);
						
						queryElementPosition.setItemFilter(strLastItem);
						queryElementPosition.setSearchValue(strLastItem);
						
						
						queryElementPosition.setCompareVariable(strLastItem);
						if(bFilter)
						{
							//queryElementPosition.setCompareVariable(strLastItem);
							bFilter = false;
						}
						
						queryElement = queryElementPosition;
					}
					
					if(strSubString.indexOf("[", 0) != -1)
					{
						queryElement.setIsFilterpart(true);
						strLastItem = queryElement.getVariable();
						bFilter = true;
					}
					
					if(arrayElementsQuery.get(arrayElementsQuery.size()-1) != queryElement)
						arrayElementsQuery.add(queryElement);
					
					if(!queryElement.isFilterpart())
					{
						strLastItem = queryElement.getElement();
						bFilter = false;
					}
				
				}
				else //if(strSubString.indexOf("(", 0) != -1)
				{
					QueryElement queryElement = new QueryElement();
					queryElement.parseElement(strSubString);
					arrayElementsQuery.add(queryElement);
					
					
					/*if(strSubString.indexOf("(", 0) != -1)
					{
						
					}*/
				}
					
			}
			
			if(posFilter==-1)
			{	
			  posInit = posBar + 1;
			  posBar = tempQuery.indexOf("/", posInit);
			}
			else
			{
				posInit = posFilter +1 ;
				posBar = tempQuery.indexOf("/", posInit+1);
			}
			//posBar = tempQuery.indexOf("/", posInit); 
			
			if(bHasPlic)
			{
				
				for(int i=0; i< pairPLicList.size();i++)
				{
					Pair<Integer,Integer> pair = pairPLicList.get(i);
					if(posBar>=pair.getKey() && posBar<=pair.getValue())
					{
						posBar = tempQuery.indexOf("/", pair.getValue());
						if(posBar ==-1)
						{
							posBar = tempQuery.length()-1;
							break;
						}
					}
				}
				
				
				/*if(posBar>=beginPosPlic && posBar<=endPosPlic)
				{
				   posBar = tempQuery.indexOf("/", endPosPlic);
				   if(posBar ==-1)
					 posBar = tempQuery.length()-1;
				}*/
			}
			
		}		
	}
	
	private List<Pair<Integer,Integer>> mapParenthsis(String text)  
	{
		
		List<Pair<Integer,Integer>> pairParenthesisList = new ArrayList<Pair<Integer,Integer>>();
		Stack<Integer> tmpStack  =new Stack<Integer>();
		int beginPosParenthesis = text.indexOf("(",0);
		while(beginPosParenthesis > -1)
		{
			tmpStack.add(beginPosParenthesis);
			beginPosParenthesis = text.indexOf("(",beginPosParenthesis+1);
		}
		
		while(!tmpStack.isEmpty())
		{
			beginPosParenthesis = tmpStack.pop();
			int endPosParenthesis = text.indexOf(")",beginPosParenthesis+1);
			
			if(endPosParenthesis >-1)
				pairParenthesisList.add(new Pair<Integer, Integer>(beginPosParenthesis,endPosParenthesis));
		}
		
		return pairParenthesisList;
	}
	
	/*private void getElementsDocument( Document document,  String typeSchema, String nameElement, ArrayList<String> queryElements )
	{
		NodeList nodeListElements = document.getElementsByTagNameNS(document.getNamespaceURI(), typeSchema);
		for ( int i = 0; i < nodeListElements.getLength(); i++ )
		{
			Node nodeElement = nodeListElements.item(i);
			String nameNodeElement = nodeElement.getAttributes().getNamedItem("name").getNodeValue();
			if ( nameNodeElement.equals(nameElement) )
			{
				String typeNodeElement = nodeElement.getAttributes().getNamedItem("type").getNodeValue();
				getElementsDocument(document, "complexType", nameNodeElement, queryElements);
			}
			
		}
	}*/
	
	private ArrayList<String> getAndElements(String strElement)
	{
		String [] strArray= strElement.split(" (?i)and ");
		//ArrayList<String> elements = new ArrayList<String>(Arrays.asList(strArray));
		ArrayList<String> elements = new ArrayList<String>();
		if(strArray.length>1)
		{
			for(int i=0;i<strArray.length;i++)
			{
				elements.add(strArray[i].replace("[", "").replace("]", ""));
			}	
		}
		
		/*if(elements.size()<0)
			elements.add(strElement);
		for (String string : elements) 
		{
			
			String [] strAndArray= string.split("and");
			for(int i=0;i<strAndArray.length;i++)
			{
				elements.addAll(getAndElements(strAndArray[i]));
			}
		}*/
		
		return elements;
		
	}
	
	private ArrayList<String> getOrElements(String strElement)
	{
		
		String [] strArray= strElement.split(" (?i)or ");
		//ArrayList<String> elements = new ArrayList<String>(Arrays.asList(strArray));
		ArrayList<String> elements = new ArrayList<String>();
		if(strArray.length>1)
		{
			for(int i=0;i<strArray.length;i++)
			{
				elements.add(strArray[i].replace("[", "").replace("]", ""));
			}	
		}
		
		/*String [] strArray= strElement.split(" ");
		ArrayList<String> elements = new ArrayList<String>(Arrays.asList(strArray)); 
		
		if(elements.size()<0)
			elements.add(strElement);
		for (String string : elements) 
		{
			
			String [] strAndArray= string.split("or");
			for(int i=0;i<strAndArray.length;i++)
			{
				elements.addAll(getAndElements(strAndArray[i]));
			}
		}*/
		
		return elements;
		
	}
	
	private boolean isNumber(String token){
    	boolean bNumber = false;
    	try
    	{
    	   int val = Integer.parseInt(token);
    	   if ( val > 0 )
    		   bNumber = true;
    	}
    	catch (NumberFormatException nfe)
    	{
    	   // bad data - set to sentinel
    	   bNumber = false;
    	}
    	
    	return bNumber;
    }
	
	
	private boolean isComplexType( String nameSpace, String type){
		if ( type.indexOf(nameSpace) == -1 )
			return true;
		
		return false;
	}
	
	//Manter esta função para traducao da árvore do dom com os elementos sem estarem normalizados
	@SuppressWarnings("unused")
	private String getQueryPrologFromSchema(Document document, String typeSchema, String nameElement)
	{
		String query = "";
		System.out.println(document.getDocumentElement().getPrefix());
		String nameSpace = document.getDocumentElement().getPrefix();
		NodeList nodeListElements = document.getElementsByTagNameNS("*", typeSchema);
		for ( int i = 0; i < nodeListElements.getLength(); i++ )
		{
			Node nodeElement = nodeListElements.item(i);
			String nameNodeElement = nodeElement.getAttributes().getNamedItem("name").getNodeValue();
			if ( nameNodeElement.equals(nameElement) )
			{
				Node nodeTypeElement = nodeElement.getAttributes().getNamedItem("type");
				String typeNodeElement = "";
				if ( nodeTypeElement != null )
					typeNodeElement = nodeTypeElement.getNodeValue();
				
				if ( isComplexType(nameSpace, typeNodeElement) && typeSchema.toLowerCase().equals("element") )
				{
					query = nameElement.toLowerCase() + "(ID";
					query += getQueryPrologFromSchema(document, "complexType", typeNodeElement);
				}
				else
				{
					if ( typeNodeElement.isEmpty() )
					{
						NodeList nodeListChildComplexType = nodeElement.getChildNodes();
						for ( int j = 0; j < nodeListChildComplexType.getLength(); j++ )
						{
							Node nodeChildComplexType = nodeListChildComplexType.item(j);
							if ( nodeChildComplexType != null && nodeChildComplexType.getNodeName().toLowerCase().indexOf("sequence") > -1 )
							{
								NodeList nlSequenceChilds = nodeChildComplexType.getChildNodes();

								if ( nlSequenceChilds.getLength() > 0 )
								{
									for(int k=0; k < nlSequenceChilds.getLength(); k++){
										Node child = nlSequenceChilds.item(k);
										
										if(child.getNodeName().toLowerCase().indexOf("element") > -1 ){
											query += ", ";
											query += child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase();									
										} 
	
									}
									query += ").";							
								}
							}
							/*else
							{
								if ( nodeChildComplexType != null && nodeChildComplexType.getNodeName().toLowerCase().indexOf("choice") > -1 )
								{
									NodeList nlSequenceChilds = nodeChildComplexType.getChildNodes();

									if ( nlSequenceChilds.getLength() > 0 )
									{
										for(int k=0; k < nlSequenceChilds.getLength(); k++){
											Node child = nlSequenceChilds.item(k);
											
											if(child.getNodeName().toLowerCase().indexOf("element") > -1 && 
													child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase().indexOf(nameElement.toLowerCase()) > -1){
												query += child.getAttributes().getNamedItem("name").getNodeValue().toLowerCase();
												query += child.getAttributes().getNamedItem("name").getNodeValue().toUpperCase();
											}
												
										}
										query += ").";
									}
									

								}
							}*/
						}						
					}					
				}
			}
		}
		
		return query;
	}
	
	private boolean isNodeComplexType(Node node){
		if ( node.getNodeName().indexOf("complexType") > - 1 )
			return true;
		
		return false;		
	}
	
	private boolean isNodeSequence(Node node){
		if ( node.getNodeName().indexOf("sequence") > - 1 )
			return true;
		
		return false;		
	}
	
	private boolean isNodeElement(Node node){
		if ( node.getNodeName().indexOf("element") > - 1 )
			return true;
		
		return false;		
	}
	
	private boolean isNodeChoice(Node node){
		if ( node.getNodeName().indexOf("choice") > - 1 )
			return true;
		
		return false;		
	}
	
	private String getAttributeName(Node node){
		return node.getAttributes().getNamedItem("name").getNodeValue();
	}
	
	private String processChilds(NodeList listChild)
	{
		String query = "";
		for ( int i = 0; i < listChild.getLength(); i++ ){
			Node nodeChild = listChild.item(i);
			if (isNodeComplexType(nodeChild)){
				query += processChilds(nodeChild.getChildNodes());
			}
			
			if ( isNodeSequence(nodeChild) ){
					query += processChilds(nodeChild.getChildNodes());
					query += ")";
			}
			
			if ( isNodeElement(nodeChild) ){
				if ( isNodeChoice(nodeChild.getParentNode()) )
				{
					if( query.indexOf(";") > -1 )
						query += getAttributeName(nodeChild.getParentNode().getParentNode().getParentNode()) + "(_";
					
					query += ", ";
					query += getAttributeName(nodeChild).toLowerCase();
					query += ", ";
					query += getAttributeName(nodeChild).toUpperCase();
					query += ");";
				}
				else
				{
					query += ", ";				
					query += getAttributeName(nodeChild).toUpperCase();
				}
				
			}
			
			if ( isNodeChoice(nodeChild)){
				query += processChilds(nodeChild.getChildNodes());
				query = query.substring(0, query.length()-1);
			}
		}
		
		return query;		
	}
	
	@SuppressWarnings("unused")
	private String getQueryPrologFromSchema2(Document document, String typeSchema, String nameElement){
		String query = "";
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement,false);
		
		if ( nodeElement == null )
			return query;
		
		query = nameElement + "(_";
		query += ", " + nameElement.toUpperCase() + ")";
		if ( nodeElement.getChildNodes().getLength() != 0 )
			query += processChilds(nodeElement.getChildNodes());
		
                /*if ( nodeElement.getChildNodes().getLength() == 0 )
                    query += ", " + nameElement.toUpperCase() + ")";
                else
                    query += processChilds(nodeElement.getChildNodes());*/
		
		return query;
	}
	
	
	
	private String getQueryPrologFromSchema3(Document document, String typeSchema, String nameElement,String fatherElement)
	{
		String query = "";
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement,false);
		
		if ( nodeElement == null )
			return query;
		
		//Element root = document.getDocumentElement();
		 Node root = getRootElement(document);
		
		query = nameElement+"(ID";
		if(root.isSameNode(nodeElement))
		{
			query += nameElement.toUpperCase();
			//query += " )";
		}
		else
		{
			query += fatherElement.toUpperCase();
			query += ", ";
			//###
			/*if ( nodeElement.getChildNodes().getLength() != 0 )
			{
				query += "ID";
				query += nameElement.toUpperCase();
			}*/
			query += "ID";
			query += nameElement.toUpperCase();
			boolean bHasComplexChilds = false;
			if(nodeElement.getChildNodes().getLength() == 1)
			{
				
				Node complexChild  = nodeElement.getChildNodes().item(0);
				NodeList childComplexList = complexChild.getChildNodes();
				
				for(int i=0;i<childComplexList.getLength();i++)
				{
					Node child = childComplexList.item(i);
					String localName = "";
					if(child.getLocalName() != null)
						localName = child.getLocalName();
					
					if(localName.compareTo("attribute") !=0 && child.getNodeType() != Node.TEXT_NODE)
					{
						bHasComplexChilds = true;
						break;
					}
				}
			}
			else if(nodeElement.getChildNodes().getLength() >1)
			  bHasComplexChilds = true;
			
			//if ( nodeElement.getChildNodes().getLength() <= 0 )
			if(!bHasComplexChilds)
			{
				query += ",";
				query += nameElement.toUpperCase();
			}
			//####
		}
		query += ")";
		return query;
	}
	
	
	private String getElementSchema(Document document, String typeSchema, String nameElement)
	{
        String schema = "";
        
        if(document == null)
        	return schema;
        
        NodeList nlComplexType = document.getElementsByTagName("xs:complexType");
        Node nodeElement = getElementByTagName(document, typeSchema, nameElement,false);
        //if(isNodeComplexType(nodeElement))
        //{
        	Node nodeType =  nodeElement.getAttributes().getNamedItem("type");
        	String srtType = nodeType.getNodeValue();
        	for(int i=0; i < nlComplexType.getLength(); i++)
            {
            	Node complexType = nlComplexType.item(i);
            	Node complexTypeName = complexType.getAttributes().getNamedItem("name");
            	if(complexTypeName!= null && complexTypeName.getNodeValue().compareToIgnoreCase(srtType)==0)
            	{
            		//schema = nameElement+"( ID"+nameElement.toUpperCase();
            		NodeList nlComplexTypeChilds = complexType.getChildNodes();
            		for(int j=0; j < nlComplexTypeChilds.getLength(); j++)
            		{
            			//schema += ", "+nlComplexTypeChilds.item(j).getNodeName();
            			Node child = nlComplexTypeChilds.item(j);
            			if(child.getNodeName() == "xs:sequence")
            			{
            				schema += getSequenceElementsRule(child,nameElement);
            			}
            			else if(child.getNodeName() == "xs:choice")
            			{
            				schema += getChoiceElementsRule(child,nameElement);
            			}
            			else if(child.getNodeName() == "xs:all")
            			{
            				//schema += getAllElements(child);
            			}
            			
            		}
            		
            	}
            }
        
		//if(!schema.isEmpty())
			//schema+=" ) ";
		return schema;
	}
	
	private String getPrologFunction(Document document,String strFather,QueryElement element)
	{
		String strPrologFunction = "";
		
		if(element.isFunction())
		{
            List<String> listArguments = element.getFunctionSimpleElementArguments();
			
            for(int i= 0; i< listArguments.size();i++)
            {
            	if(! listArguments.get(i).contains("'") /*&& listArguments.get(i).*/)
            		strPrologFunction += getQueryPrologFromSchema3(document,"element",listArguments.get(i),strFather);		
            }
			
            strPrologFunction += " , ";
			strPrologFunction += element.getFunctionFormula();
		}
		
		/*else if(isOperator(element))
		{
		    if(element instanceof OperatorEqual)
		    {
		    	OperatorEqual op = (OperatorEqual)element;		    	
		    	IExpression left =	op.leftOperand();
		        
		    	if(left instanceof Function)
		    	{
		    		Function func = (Function)left;	
		    		List<String> listArguments = func.simpleElementArguments();
		    		
		    		strPrologFunction = getPrologFunction(document,strFather,)
		    		
		    	}
		    
		    }
			 
		}*/
		
		
		return strPrologFunction;
	}
	
	
	private Pair<String,Boolean> getPrologOperatorFunction(Document document,String strFather,QueryElement element,int[] nPositionVet)
	{
		String strPrologFunction = "";
		Boolean bConsiderNamespaces = true;
		StringBuilder sbReturn = new StringBuilder("");
		if(element.hasOperator())
		{
			IExpression expression = element.getExpressionFormula();
			
			strPrologFunction = getPrologOperatorFunction3(document,strFather,expression,nPositionVet);
		}	
		
		return new Pair<String, Boolean>(strPrologFunction, bConsiderNamespaces);
		
		
			
			/*if(expression instanceof OperatorEqual)
		    {
		    	OperatorEqual op = (OperatorEqual)expression;		    	
		    	IExpression left =	op.leftOperand();
		    	IExpression right =	op.rightOperand();
		        
		    	if(left instanceof Function)
		    	{
		    		Function func = (Function)left;	
		    	    
		    		String strFuncname = func.getFunctionName();
		    		
		    		if(strFuncname.compareToIgnoreCase(Function.FUNCTION_LOCAL_NAME)==0)
		    		{
		    			//Find all Occurrences below Father with tag name equal to 'left'
		    			String strTag = right.interpret();
		    			strPrologFunction = allTagRules(document,strTag,strFather,true,false,"");
		    			bConsiderNamespaces = false;
		    		}
		    		else if (strFuncname.compareToIgnoreCase(Function.FUNCTION_NAMESPACE)==0)
		    		{
		    			String strValue = right.interpret();
		    			 List<String> listArguments = func.simpleElementArguments();
		    			 String strNamespaceTag = "*";
		    			 if(listArguments.size()>0)
		    				 strNamespaceTag = listArguments.get(0);
		    			 
		    			 strPrologFunction = allTagNamespaceRules(document,strNamespaceTag,strFather,true,false,"");
		    			 
		    			 strPrologFunction = strPrologFunction.replace("NAMESPACEVALUE", "'"+strValue+"'");
		    			 bConsiderNamespaces = false;
		    		}
		    		else if (strFuncname.compareToIgnoreCase(Function.FUNCTION_POSITION)==0)
		    		{
		    			int nPosition = 1;
		    			if(nPositionVet.length>0)
		    				nPosition = nPositionVet[0];
		    			
		    			String strPositionValue = right.interpret();
		    			QueryPosition queryElementPosition = new QueryPosition();
		    			queryElementPosition.setItemFilter(strFather);
		    			queryElementPosition.setSearchValue(strPositionValue);
		    			queryElementPosition.setCompareVariable(strFather);
		    			queryElementPosition.setHasChildren(hasChildNodes(document, "element", queryElementPosition.getItemFilter(),false));
		    			queryElementPosition.setIsRoot(isRoot(document, "element", queryElementPosition.getItemFilter()));	
		    			
		    			if(strPositionValue.toUpperCase().compareTo("LAST()") ==0 )
		    			{
		    				strPrologFunction += queryElementPosition.getPositionFormulaForLastItem(nPosition);
		    			}
		    			else
		    			{
			    			queryElementPosition.parseElement(strPositionValue);
			    			strPrologFunction += queryElementPosition.getPositionFormula(nPosition);
		    			}
		    			
		    			if(nPositionVet.length>0)
		    				nPositionVet[0]++;
		    		}
		    		else if(strFuncname.compareToIgnoreCase(Function.FUNCTION_SUBSTRING_BEFORE)==0) 
		    		{
		    			 String strResultValue = right.interpret();
		    			 
		    			 if(!strResultValue.contains("'"))
		    				 strResultValue = "'"+strResultValue+"'";
		    			 List<String> listArguments = func.simpleElementArguments();
		    			 
		    			 if(listArguments.size()>1)
		    			 {
		    				if(listArguments.get(0).toUpperCase().compareTo(strFather)!=0)
		    				{
		    					strPrologFunction+=getQueryPrologFromSchema3(document,"element",listArguments.get(0),strFather);
		    					strPrologFunction+=", ";    	
		    				}
		    				
		    				 strPrologFunction += strFuncname+"( ";
		    				 strPrologFunction+=listArguments.get(0).toUpperCase();
		    				 strPrologFunction+=", "+listArguments.get(1)+" , ";
		    				 strPrologFunction+=strResultValue+" )";
		    			 }
		    		}
		    		else if(strFuncname.compareToIgnoreCase(Function.FUNCTION_SUBSTRING)==0) 
		    		{
		    			 String strResultValue = right.interpret();
		    			 
		    			 if(!strResultValue.contains("'"))
		    				 strResultValue = "'"+strResultValue+"'";
		    			 //List<String> listArguments = func.simpleElementArguments();
		    			 ArrayList<IExpression> listArguments = func.arguments();
		    			 
		    			 if(listArguments.size()>2)
		    			 {
		    				 sbReturn.insert(0,strFuncname+"( ");
		    				 for(int i=0; i<2;i++)
		    				 {
		    					 if(listArguments.get(i) instanceof Function)
		    					 {
		    						 
		    					 }
		 		    			 else
		 		    			 {
		 		    				String arg = listArguments.get(i).interpret();
		 		    				if(arg.toUpperCase().compareTo(strFather)!=0)
		 		    				{
		 		    					sbReturn.insert(0, getQueryPrologFromSchema3(document,"element",arg,strFather)+", ");	
		 		    				}
		 		    				
		 		    				 strPrologFunction += strFuncname+"( ";
		 		    				 strPrologFunction+=listArguments.get(0).toUpperCase();
		 		    				 strPrologFunction+=", "+listArguments.get(1)+" , ";
		 		    				 strPrologFunction+=listArguments.get(2)+" , ";
		 		    				 strPrologFunction+=strResultValue+" )";
		 		    				 sbReturn.append(arg.toUpperCase());
		 		    				
		 		    			 }
		 		    			 
		    					 sbReturn.append(", ");
		    				 }
		    				 
		    				 sbReturn.append(strResultValue+") ");
		    			 }
		    		}
		    	}
		    
		    }
			
		}
		
		
		return new Pair<String, Boolean>(strPrologFunction, bConsiderNamespaces);*/
	}
	
	private Pair<String,Boolean> getPrologOperatorFunction2(Document document,String strFather,QueryElement element,int[] nPositionVet)
	{
		
		String strPrologFunction = "";
		Boolean bConsiderNamespaces = true;
		StringBuilder sbReturn = new StringBuilder("");
		//QueryElement element = (QueryElement) inputExpression;
		if(element.hasOperator())
		{
			IExpression expression = element.getExpressionFormula();
			if(expression instanceof OperatorEqual)
		    {
		    	OperatorEqual op = (OperatorEqual)expression;		    	
		    	IExpression left =	op.leftOperand();
		    	IExpression right =	op.rightOperand();
		    	
		    	ArrayList<String> leftArgs = new ArrayList<String>();
		    	ArrayList<String> rightArgs = new ArrayList<String>();
		    	
		    	boolean bLeftIsFunction = false;
		    	boolean bRightIsFunction = false;
		    	
		    	if(left instanceof Function)
		    	{
		    		Function func = (Function)left;	
		    		
		    		ArrayList<IExpression> listArgs = func.arguments();
		    		for(int i=0; i< listArgs.size();i++)
		    		{
		    			IExpression exp = listArgs.get(i);
		    			
		    			if(exp instanceof Function)
		    			{
		    				getPrologOperatorFunction3(document,strFather,exp,nPositionVet);
		    				leftArgs.add(Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]));
		    			}
		    			else 
		    			{
		    				leftArgs.add(exp.interpret());
		    			}
		    		}
		    		
		    		bLeftIsFunction = true;
		    		
		    	}
		    	else
		    	{
		    		leftArgs.add(left.interpret());
		    	}
		    	
		    	if(right instanceof Function)
		    	{
		    		Function func = (Function)right;	
		    		
		    		ArrayList<IExpression> listArgs = func.arguments();
		    		for(int i=0; i< listArgs.size();i++)
		    		{
		    			IExpression exp = listArgs.get(i);
		    			
		    			if(exp instanceof Function)
		    			{
		    				getPrologOperatorFunction3(document,strFather,exp,nPositionVet);
		    				rightArgs.add(Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]));
		    			}
		    			else 
		    			{
		    				rightArgs.add(exp.interpret());
		    			}
		    		}
		    		
		    		bRightIsFunction = true;
		    	}
		    	else
		    	{
		    		rightArgs.add(right.interpret());
		    	}
		    	
		    	if(bLeftIsFunction)
		    	{
		    		Function func = (Function)left;	
		    		strPrologFunction = translateSimpleFunction(document,strFather, func.getFunctionName(),leftArgs,nPositionVet[0]);
		    	}
		    
		    }
			
		}
		
		
		return new Pair<String, Boolean>(strPrologFunction, bConsiderNamespaces);
	}
	
	
	private String getPrologOperatorFunction3(Document document,String strFather,IExpression expression,int[] nPositionVet)
	{
		String result = "";
		
		IExpression left = null;
		IExpression right = null;
		String strOperator = "";
		
		if(expression instanceof OperatorEqual)
		{
			OperatorEqual op = (OperatorEqual)expression;	
    		left =	op.leftOperand();
    		right =	op.rightOperand();
    		strOperator = " = ";
		}
		
		if(expression instanceof OperatorGreaterEqualThan)
		{
			OperatorGreaterEqualThan op = (OperatorGreaterEqualThan)expression;	
    		left =	op.leftOperand();
    		right =	op.rightOperand();
    		strOperator = " >= ";
		}
		
		if(expression instanceof OperatorGreaterThan)
		{
			OperatorGreaterThan op = (OperatorGreaterThan)expression;	
    		left =	op.leftOperand();
    		right =	op.rightOperand();
    		strOperator = " > ";
		}
		
		if(expression instanceof OperatorLessEqualThan)
		{
			OperatorLessEqualThan op = (OperatorLessEqualThan)expression;	
    		left =	op.leftOperand();
    		right =	op.rightOperand();
    		strOperator = " <= ";
		}
		
		if(expression instanceof OperatorLessEqualThan)
		{
			OperatorLessEqualThan op = (OperatorLessEqualThan)expression;	
    		left =	op.leftOperand();
    		right =	op.rightOperand();
    		strOperator = " < ";
		}
		
		if(!strOperator.isEmpty())
	    {
	    	boolean bLeftIsFunction = false;
	    	boolean bLeftIsTextFunction = false;
	    	boolean bRightIsFunction = false;
	    	
	    	String leftValue = "";
	    	String rightValue = "";
	    	if(left instanceof Function)
	    	{
	    		
	    		result = teste(document,left,strFather,nPositionVet);
	    		bLeftIsFunction = true;	
	    		leftValue  = Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]);
	    		Function function = (Function) left;
	    		
	    		bLeftIsTextFunction = function.isTextFunction();
	    	}
	    	
	    	if(!bLeftIsFunction)
	    		leftValue = left.interpret();
	    	
	    	if(right instanceof Function)
	    	{
	    		result += teste(document,right,strFather,nPositionVet);	    		
	    		bRightIsFunction = true;
	    		rightValue = Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]);
	    	}
	    	
	    	if(!bRightIsFunction)
	    	{
	    		if(bLeftIsTextFunction)
	    			rightValue = "'"+right.interpret()+"'";
	    		else	
	    			rightValue = right.interpret();
	    	}
	    	
	    	result += ", " +leftValue + strOperator +rightValue;
	    }
		
		return result;
		
	}
	
	String translateSimpleFunction(Document document,String strTagFather, String functionName, ArrayList<String> functionArgs, int nVariable)
	{
		String strPrologFunction= "";
		StringBuilder sbReturn = new StringBuilder("");
		
		if(functionName.compareToIgnoreCase(Function.FUNCTION_LOCAL_NAME)==0)
		{
			//Find all Occurrences below Father with tag name equal to 'left'
			if(functionArgs.size() > 0)
			{
				String strTag = functionArgs.get(0);
				//strPrologFunction = allTagRules(document,strTag,strFather,true,false,"");
				//bConsiderNamespaces = false;
			}
			
		}
		else if (functionName.compareToIgnoreCase(Function.FUNCTION_NAMESPACE)==0)
		{
			if(functionArgs.size() > 0)
			{
				/*String strValue = functionArgs.get(0);
				 List<String> listArguments = func.simpleElementArguments();
				 String strNamespaceTag = "*";
				 if(listArguments.size()>0)
					 strNamespaceTag = listArguments.get(0);
				 
				// strPrologFunction = allTagNamespaceRules(document,strNamespaceTag,strFather,true,false,"");
				 
				 strPrologFunction = strPrologFunction.replace("NAMESPACEVALUE", "'"+strValue+"'");
				// bConsiderNamespaces = false;*/
			}
			
		}
		else if (functionName.compareToIgnoreCase(Function.FUNCTION_POSITION)==0)
		{
			/*int nPosition = 1;
			if(nPositionVet.length>0)
				nPosition = nPositionVet[0];*/
			
			/*String strPositionValue = right.interpret();
			QueryPosition queryElementPosition = new QueryPosition();
			queryElementPosition.setItemFilter(strFather);
			queryElementPosition.setSearchValue(strPositionValue);
			queryElementPosition.setCompareVariable(strFather);
			queryElementPosition.setHasChildren(hasChildNodes(document, "element", queryElementPosition.getItemFilter(),false));
			queryElementPosition.setIsRoot(isRoot(document, "element", queryElementPosition.getItemFilter()));	
			
			if(strPositionValue.toUpperCase().compareTo("LAST()") ==0 )
			{
				strPrologFunction += queryElementPosition.getPositionFormulaForLastItem(nVariable);
			}
			else
			{
    			queryElementPosition.parseElement(strPositionValue);
    			strPrologFunction += queryElementPosition.getPositionFormula(nPosition);
			}*/
			
			/*if(nPositionVet.length>0)
				nPositionVet[0]++;*/
		}
		else if(functionName.compareToIgnoreCase(Function.FUNCTION_SUBSTRING_BEFORE)==0) 
		{
			 
			 //List<String> listArguments = func.simpleElementArguments();
			 
			 if(functionArgs.size()>2)
			 {
				 String strResultValue = functionArgs.get(2);
				 
				 if(!strResultValue.contains("'"))
					 strResultValue = "'"+strResultValue+"'";
				 
				sbReturn.insert(0,functionName+"( ");;
				 
				for(int i=0; i<2;i++)
				{
					if(functionArgs.get(i).toUpperCase().compareTo(strTagFather)!=0)
					{
						sbReturn.insert(0,getQueryPrologFromSchema3(document,"element",functionArgs.get(i),strTagFather)+", ");
					}
					
					 sbReturn.append(functionArgs.get(i).toUpperCase());
					 sbReturn.append(", ");
				}
				
				sbReturn.append(strResultValue+") ");
				
				strPrologFunction = sbReturn.toString();
			 }
		}
		else if(functionName.compareToIgnoreCase(Function.FUNCTION_SUBSTRING)==0) 
		{
			
			 //ArrayList<IExpression> listArguments = func.arguments();
			 
			 if(functionArgs.size()>2)
			 {
				 String strResultValue = functionArgs.get(2);
				 
				 if(!strResultValue.contains("'"))
					 strResultValue = "'"+strResultValue+"'";
				 
				 sbReturn.insert(0,functionName+"( ");
				 for(int i=0; i<2;i++)
				 {
					 
    				String arg = functionArgs.get(i);
    				if(arg.toUpperCase().compareTo(strTagFather)!=0)
    				{
    					sbReturn.insert(0, getQueryPrologFromSchema3(document,"element",arg,strTagFather)+", ");	
    				}
    				
    				 /*strPrologFunction += strFuncname+"( ";
    				 strPrologFunction+=listArguments.get(0).toUpperCase();
    				 strPrologFunction+=", "+listArguments.get(1)+" , ";
    				 strPrologFunction+=listArguments.get(2)+" , ";
    				 strPrologFunction+=strResultValue+" )";*/
    				 sbReturn.append(arg.toUpperCase());
		    				 
					 sbReturn.append(", ");
				 }
				 
				 sbReturn.append(strResultValue+") ");
				 
				 strPrologFunction = sbReturn.toString();
			 }
		}
		
		
		return strPrologFunction;
	}
	
	
	String teste(Document document,IExpression expression, String strTagFather,int[] nPositionVet)
	{
		Function func = (Function)expression;	
		List<String> functionArgs = new ArrayList<String>(); 
		ArrayList<IExpression> listArgs = func.arguments();
		StringBuilder sbReturn = new StringBuilder("");
		String recursiveResult = "";
		for(int i=0; i< listArgs.size();i++)
		{
			IExpression exp = listArgs.get(i);
			if(exp instanceof Function)
			{
				//getPrologOperatorFunction3(document,strFather,exp,nPositionVet);
				recursiveResult = teste(document,exp,strTagFather,nPositionVet) + recursiveResult;
				
				functionArgs.add(Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]));
				nPositionVet[0]++;
			}
			else 
			{
				functionArgs.add(exp.interpret());
			}
		}
		
		String functionName = func.getFunctionName();
		
		
		
		
		if(functionName.compareToIgnoreCase(Function.FUNCTION_LOCAL_NAME)==0)
		{
			//Find all Occurrences below Father with tag name equal to 'left'
			if(functionArgs.size() > 0)
			{
				String strTag = functionArgs.get(0);
				//strPrologFunction = allTagRules(document,strTag,strFather,true,false,"");
				//bConsiderNamespaces = false;
			}
			
		}
		else if (functionName.compareToIgnoreCase(Function.FUNCTION_NAMESPACE)==0)
		{
			if(functionArgs.size() > 0)
			{
				/*String strValue = functionArgs.get(0);
				 List<String> listArguments = func.simpleElementArguments();
				 String strNamespaceTag = "*";
				 if(listArguments.size()>0)
					 strNamespaceTag = listArguments.get(0);
				 
				// strPrologFunction = allTagNamespaceRules(document,strNamespaceTag,strFather,true,false,"");
				 
				 strPrologFunction = strPrologFunction.replace("NAMESPACEVALUE", "'"+strValue+"'");
				// bConsiderNamespaces = false;*/
			}
			
		}
		else if (functionName.compareToIgnoreCase(Function.FUNCTION_POSITION)==0)
		{
			/*int nPosition = 1;
			if(nPositionVet.length>0)
				nPosition = nPositionVet[0];*/
			
			/*String strPositionValue = right.interpret();
			QueryPosition queryElementPosition = new QueryPosition();
			queryElementPosition.setItemFilter(strFather);
			queryElementPosition.setSearchValue(strPositionValue);
			queryElementPosition.setCompareVariable(strFather);
			queryElementPosition.setHasChildren(hasChildNodes(document, "element", queryElementPosition.getItemFilter(),false));
			queryElementPosition.setIsRoot(isRoot(document, "element", queryElementPosition.getItemFilter()));	
			
			if(strPositionValue.toUpperCase().compareTo("LAST()") ==0 )
			{
				strPrologFunction += queryElementPosition.getPositionFormulaForLastItem(nVariable);
			}
			else
			{
    			queryElementPosition.parseElement(strPositionValue);
    			strPrologFunction += queryElementPosition.getPositionFormula(nPosition);
			}*/
			
			/*if(nPositionVet.length>0)
				nPositionVet[0]++;*/
		}
		/*else if(functionName.compareToIgnoreCase(Function.FUNCTION_SUBSTRING_BEFORE)==0) 
		{
			 
			 //List<String> listArguments = func.simpleElementArguments();
			 
			 if(functionArgs.size()>1)
			 {
				 /*String strResultValue = functionArgs.get(2);
				 
				 if(!strResultValue.contains("'"))
					 strResultValue = "'"+strResultValue+"'";*/
				 
				/*sbReturn.insert(0,functionName+"( ");;
				 
				for(int i=0; i<2;i++)
				{
					boolean bArgIsresult = functionArgs.get(i).toUpperCase().contains(Function.FUNCTION_RESULT);
					
					if(functionArgs.get(i).toUpperCase().compareTo(strTagFather)!=0
							&& !bArgIsresult)
					{
						sbReturn.insert(0,getQueryPrologFromSchema3(document,"element",functionArgs.get(i),strTagFather)+", ");
					}
					
					 sbReturn.append(functionArgs.get(i).toUpperCase());
					 sbReturn.append(", ");
				}
				
				sbReturn.append(Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0])+") ");
				nPositionVet[0]++;
			 }
		}*/
		else if(functionName.compareToIgnoreCase(Function.FUNCTION_SUBSTRING)==0
				|| functionName.compareToIgnoreCase(Function.FUNCTION_SUBSTRING_AFTER)==0
				|| functionName.compareToIgnoreCase(Function.FUNCTION_SUBSTRING_BEFORE)==0) 
		{
			
			 //ArrayList<IExpression> listArguments = func.arguments();
			 
			 if(functionArgs.size()>1)
			 {
				 String strResultValue = Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]);
				 
				 /*if(!strResultValue.contains("'"))
					 strResultValue = "'"+strResultValue+"'";*/
				 
				 sbReturn.insert(0,functionName+"( ");
				 for(int i=0; i<2;i++)
				 {
					boolean bArgIsresult = functionArgs.get(i).toUpperCase().contains(Function.FUNCTION_RESULT); 
    				String arg = functionArgs.get(i);
    				if(arg.toUpperCase().compareTo(strTagFather)!=0
    						&& !bArgIsresult)
    				{
    					sbReturn.insert(0, getQueryPrologFromSchema3(document,"element",arg,strTagFather)+", ");	
    				}
    				
    				 /*strPrologFunction += strFuncname+"( ";
    				 strPrologFunction+=listArguments.get(0).toUpperCase();
    				 strPrologFunction+=", "+listArguments.get(1)+" , ";
    				 strPrologFunction+=listArguments.get(2)+" , ";
    				 strPrologFunction+=strResultValue+" )";*/
    				 sbReturn.append(arg.toUpperCase());
		    				 
					 sbReturn.append(", ");
				 }
				 
				 sbReturn.append(strResultValue+") ");
			 }
		}
		
		sbReturn.insert(0, recursiveResult);
		return sbReturn.toString();
	}
	
	private ArrayList<String> getPrologOperatorTags(QueryElement element, Document document)
	{
		ArrayList<String> listTags = new ArrayList<String>(); 
		
		if(element.hasOperator())
		{
            IExpression expression = element.getExpressionFormula();
			
			if(expression instanceof OperatorEqual)
		    {
		    	OperatorEqual op = (OperatorEqual)expression;		    	
		    	IExpression left =	op.leftOperand();
		    	IExpression right =	op.rightOperand();
		        
		    	if(left instanceof Function)
		    	{
		    		Function func = (Function)left;	
		    	    
		    		String strFuncname = func.getFunctionName();
		    		
		    		if(strFuncname.compareToIgnoreCase(Function.FUNCTION_LOCAL_NAME)==0)
		    		{
		    			String strTag = right.interpret();
		    			listTags.add(strTag);
		    		}
		    		else if(strFuncname.compareToIgnoreCase(Function.FUNCTION_NAMESPACE)==0)
		    		{
		    			 List<String> listArguments = func.simpleElementArguments();
		    			 String strNamespaceTag = "*";
		    			 if(listArguments.size()>0)
		    				 strNamespaceTag = listArguments.get(0);
		    			if(strNamespaceTag.compareTo("*")==0)
		    			{
		    				 
		    				listTags.addAll(namespaceTags(strNamespaceTag, document));
		    			}
		    		}
		    	}
		    }
		}
			
		return listTags;
	}
	
	private ArrayList<String> namespaceTags(String strNamespace, Document document)
	{
		 ArrayList<String>  completeRuleList = getNamespaceRuleSchema(document,strNamespace);
		 ArrayList<String> listTags = new ArrayList<String>();
		 for(int i=0;i<completeRuleList.size();i++)
		 {
			 String [] splitRule  = completeRuleList.get(i).split("\\(");
			 String ruleName = "";
			 if(splitRule.length > 0)
				 ruleName= splitRule[0];
			 
			 if(!ruleName.isEmpty())
				 listTags.add(ruleName);
			  
		 }
		 
		 
		 return listTags;
	}
	private String getChoiceElementsRule(Node sequenceNode,String nameElementFather)
	{
		NodeList nlChoiceChilds = sequenceNode.getChildNodes();
        String strChoice = "";
        /*strChoice = nameElementFather+"( ID"+nameElementFather.toUpperCase();
        for(int i=0; i < nlChoiceChilds.getLength(); i++)
		{
			Node child = nlChoiceChilds.item(i);
			
			if(isNodeElement(child))
			{
				Node nodeName = child.getAttributes().getNamedItem("name");
				if(nodeName != null)
				{
					strElement +=" , "+nodeName.getNodeValue().toUpperCase();
				}
			}
		}*/
        
        return strChoice;
        
	}
	
	private String getSequenceElementsRule(Node sequenceNode,String nameElementFather)
	{
		NodeList nlSequenceChilds = sequenceNode.getChildNodes();
        String strElement = "";
        List<String> occursList = new ArrayList<String>();
        strElement = nameElementFather+"( ID"+nameElementFather.toUpperCase();
		for(int i=0; i < nlSequenceChilds.getLength(); i++)
		{
			Node child = nlSequenceChilds.item(i);
			
			if(isNodeElement(child))
			{
				Node nodeName = child.getAttributes().getNamedItem("name");
				Node nodeOccurs = child.getAttributes().getNamedItem("minOccurs");
				if(nodeName != null)
				{
					strElement +=" , "+nodeName.getNodeValue().toUpperCase();
					if(nodeOccurs != null)
					{
						if(nodeOccurs.getNodeValue().compareTo("0")==0)
							occursList.add(" , "+nodeName.getNodeValue().toUpperCase());
					}
				}
			}
		}
		
		strElement+=" )";
		if(occursList.size()>0)
		{
			String strOccurs = strElement;
			for(int i=0;i<occursList.size();i++)
			{
				strOccurs = strOccurs.replace(occursList.get(i),  "");
			}
			
			strElement = "setof(_,( "+strElement+" ; "+strOccurs+"),_)";
		}
		
		return strElement;
	}
	
	
	public boolean hasChildNodes(Document document, String typeSchema, String nameElement,boolean bConsiderNamespaces)
	{
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement,bConsiderNamespaces);
		
		if ( nodeElement == null )
			return false;
		
		if ( nodeElement.getChildNodes().getLength() != 0 )
			return true;
		
		return false;
	}
	
	
	public boolean isRoot(Document document, String typeSchema, String nameElement)
	{
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement,false);
		
		if ( nodeElement == null )
			return false;
		
	    Node root = getRootElement(document);
		
		if(root.isSameNode(nodeElement))
			return true;
		
		return false;
	}
	
	//protected String convertQuery( String query )
	public String convertQuery( String query,boolean _bJustTranslate  )
	{
		extractElementsFromQuery(query);
		
		String queryConvert = "";
		
		HashMap<String, Document> documentList = DocumentParser.getInstance().getDocumentList();
		if (documentList == null || documentList.isEmpty())
			return queryConvert;
		
		Set<String> values = documentList.keySet();
		int nSearch = 1;
		boolean bOrFilter = false;
		String strLastCommonParent = "";
		String strLastCommonGrandParent = "";
		String strFunction = "";
		boolean  bWildCard = false;
		Document document = null;
		int nWildCardLevel = 0;
		int nRefParent = 0;
		//ArrayList<String> listaTags = new ArrayList<String>();
		ArrayList<Pair<String,Boolean>> pairListTags = new ArrayList<Pair<String,Boolean>>();
		//HashMap<String,Boolean> tagHash = new HashMap<String,Boolean>();
		for (String name : values)
		{
			document = documentList.get(name);
			normalizeTreeDocument(document);
			
			strLastCommonParent = "NOPARENT";
			strLastCommonGrandParent = "NOGRANDPARENT";
			bWildCard = false;
			for ( int i=0; i<arrayElementsQuery.size();i++ ) 
			{
				
				if(!strFunction.isEmpty())
				{
					queryConvert += strFunction;
					strFunction = "";
				}
				
				QueryElement element = arrayElementsQuery.get(i);
				if(!element.isFilterpart())
				{
					 //queryConvert +=getQueryPrologFromSchema3(document,"*",element.getElement(),strLastCommonFather);
					 if(element.getElement().trim().compareTo("*")==0)
					 {
						 nWildCardLevel++;
						 continue;
					 }
					 
					 if(element.getElement().trim().compareTo("..")==0)
					 {
						 nRefParent++;
						 continue;
					 }
					 
					 if(nWildCardLevel>0 || nRefParent>0)
					 {
						 
						 if(nWildCardLevel >0)
						 {
							 queryConvert +=getWildCardQuery(document,strLastCommonParent,nWildCardLevel);
							 nWildCardLevel =0;
							 bWildCard = true;
						 }
						 else if(nRefParent >0)
						 {
							 queryConvert +=getRulesBottomUp(document,strLastCommonParent,nRefParent);
							 nRefParent =0; 
						 }
						 ///
						 queryConvert +=", "+getQueryPrologFromSchema3(document,"element",element.getElement(),strLastCommonParent);
						 strLastCommonGrandParent = strLastCommonParent;
						 strLastCommonParent = element.getElement();
						 
						 pairListTags.add(new Pair<String, Boolean>(strLastCommonParent,true));
					 }
					 else
					 {
						 queryConvert +=getQueryPrologFromSchema3(document,"element",element.getElement(),strLastCommonParent);
						 strLastCommonGrandParent = strLastCommonParent;
						 strLastCommonParent = element.getElement();
						 pairListTags.add(new Pair<String, Boolean>(strLastCommonParent,true));
					 }
				}
				else
				{
					
					if(element.getFormula().isEmpty())
					{
						//queryConvert +=getQueryPrologFromSchema3(document,"*",element.getElement(),strLastCommonFather);
						queryConvert +=getQueryPrologFromSchema3(document,"element",element.getElement(),strLastCommonParent);
						String strLastFilterFather = element.getElement();
						
						boolean bFind = false;
						
						if(i+1 < arrayElementsQuery.size())
						{
							if(arrayElementsQuery.get(i).isOrFilterPart() && arrayElementsQuery.get(i+1).isOrFilterPart())
							{
								queryConvert +=" , ! ; ";
							}
							else
							{
								 if(bOrFilter)
							     {
							    	queryConvert +=" ),_)";
							    	bOrFilter = false;
							     }
								queryConvert +=", ";
							}
						}
						
						i++;
						
						while(!bFind && i<arrayElementsQuery.size())
						{
							QueryElement elementFilter = arrayElementsQuery.get(i);
							if(elementFilter.getFormula().isEmpty())
							{
								//queryConvert +=getQueryPrologFromSchema3(document,"*",elementFilter.getElement(),strLastFilterFather);
								queryConvert +=getQueryPrologFromSchema3(document,"element",elementFilter.getElement(),strLastFilterFather);
								strLastFilterFather = elementFilter.getElement();
								
							}
							else
							{
								// Final do Filtro
								if(elementFilter instanceof  QueryPosition)
								{
									QueryPosition queryPos = (QueryPosition) elementFilter;
									//queryPos.setHasChildren(hasChildNodes(document, "*", queryPos.getItemFilter()));
									queryPos.setHasChildren(hasChildNodes(document, "element", queryPos.getItemFilter(),false));
									//queryPos.setIsRoot(isRoot(document, "*", queryPos.getItemFilter()));
									queryPos.setIsRoot(isRoot(document, "element", queryPos.getItemFilter()));
									queryConvert += queryPos.getPositionFormula(nSearch);
									nSearch++;
								}
								else
								{
									if(element.isOrFilterPart() && !bOrFilter)
								    {
								    	queryConvert +="setof(_,( ";
								    	bOrFilter = true;
								    }
									queryConvert += elementFilter.getExperimentalFormula(strLastFilterFather);
								}
								
								bFind = true;
							}
							
							if(i+1 < arrayElementsQuery.size() && !bFind)
							{
								if(arrayElementsQuery.get(i).isOrFilterPart() && arrayElementsQuery.get(i+1).isOrFilterPart())
								{
									queryConvert +=" , ! ; ";
								}
								else
								{
								    if(bOrFilter)
								    {
								    	queryConvert +=" ),_)";
								    	bOrFilter = false;
								    }
									queryConvert +=", ";
								} 
								//queryConvert +=", ";
							}
							if(!bFind)
							  i++;
						}
					}
					else
					{
						// Final do Filtro
						if(element instanceof  QueryPosition)
						{
							QueryPosition queryPos = (QueryPosition) element;
							//queryPos.setHasChildren(hasChildNodes(document, "*", queryPos.getItemFilter()));
							queryPos.setHasChildren(hasChildNodes(document, "element", queryPos.getItemFilter(),false));
							//queryPos.setIsRoot(isRoot(document, "*", queryPos.getItemFilter()));
							queryPos.setIsRoot(isRoot(document, "element", queryPos.getItemFilter()));
							queryConvert += queryPos.getPositionFormula(nSearch);
							nSearch++;
						}
						else
						{
							if(element.isFunction())
							{
								//FILTRO COM FUNCAO
								
								//queryConvert += getPrologFunction(document,strLastCommonParent,element);
								strFunction = getPrologFunction(document,strLastCommonParent,element);
							}
							else
							{
								if(element.isOrFilterPart() && !bOrFilter)
							    {
							    	queryConvert +="setof(_,( ";
							    	bOrFilter = true;
							    }
							    
								
								if(element.hasFunction())
								{
									if(element.hasOperator() )
									{
										int[] nPositionVet = {nSearch};

										Pair<String,Boolean> pair = getPrologOperatorFunction(document,strLastCommonParent,element,nPositionVet);

										strFunction = pair.getKey();
										ArrayList<String> tagOperatorList = getPrologOperatorTags(element,document);
										
										for (String string : tagOperatorList) 
										{
											pairListTags.add(new Pair<String, Boolean>(string, pair.getValue()));	
										}
										//listaTags.addAll(tagOperatorList);
										
										nSearch = nPositionVet[0];
									}
									else
										strFunction = element.getExperimentalFormula(strLastCommonParent);
								}
								else
								    queryConvert += element.getExperimentalFormula(strLastCommonParent);
								
							}
							
						}
					}
					
					
				}
				
				
				if(i+1 < arrayElementsQuery.size())
				{
					if(arrayElementsQuery.get(i).isOrFilterPart() && arrayElementsQuery.get(i+1).isOrFilterPart())
					{
						queryConvert +=" , ! ; ";
					}
					else
					{
						 if(bOrFilter)
					     {
					    	queryConvert +=" ),_)";
					    	bOrFilter = false;
					     }
						queryConvert +=", ";
					}
				}
				//queryConvert +=", ";
			}
			
			
			
			
			/*queryConvert += getQueryPrologFromSchema2(document, "*",getLastElementQuery() );
		
            arrayElementsQuery.get(arrayElementsQuery.size()-1).setQueryFromSchema(queryConvert);
            
            queryConvert = arrayElementsQuery.get(arrayElementsQuery.size()-1).getFinalQuery();
            */
                        
        		/*if ( !arrayElementsQuery.get(arrayElementsQuery.size()-1).getFormula().isEmpty() ){
                            queryConvert += "," + arrayElementsQuery.get(arrayElementsQuery.size()-1).getFormula();
                        }*/
			
		}
		
		
		
		//String element = getElement(query);		
		 if(bOrFilter)
	     {
	    	queryConvert +=" ),_)";
	    	bOrFilter = false;
	     }
		 
		 
		 if(nWildCardLevel>0 || nRefParent >0)
		 {
			 if(nWildCardLevel >0 
					 && ! queryConvert.isEmpty()) //WildCard With parents
			 {
				 if(strLastCommonParent != "NOPARENT")
					 queryConvert += getWildCardQuery(document,strLastCommonParent,nWildCardLevel);
				 else
				 {
					 ArrayList<String>  completeRuleList = getRuleSchema(document,strLastCommonParent,true);
					 String strCompleteRule  = "";
					 if(completeRuleList.size()>1)
					 {
						 strCompleteRule= " setof(_,( ";
					 }
					 
					 for (int i=0; i< completeRuleList.size();i++) 
					 {
						 strCompleteRule+=completeRuleList.get(i);
						 if(i+1 < completeRuleList.size())
							 strCompleteRule+="; ";	 
					 }
					 
					 if(completeRuleList.size()>1)
						 strCompleteRule +=" ),_) ";
					 
					 queryConvert += strCompleteRule;
				 }
			 }
			 else if (nRefParent >0)
			 {
				 queryConvert = getRulesBottomUp(document,strLastCommonParent,nRefParent);
				 
				 
                 //listaTags.clear();
                 pairListTags.clear();
                 ArrayList<String> listaTags = getTagsBottomUp(document, strLastCommonParent, nRefParent);
                 
                 for (String string : listaTags) 
				 {
                	 pairListTags.add(new Pair<String, Boolean>(string,true));	
				 }
                 
			 }
			 
			 queryConvert += " .";
		 }
		 else
		 {  
				 ArrayList<String>  completeRuleList = getRuleSchema(document,strLastCommonParent,true);
				 queryConvert+=" .";
				 String strCompleteRule = "";
				 boolean bMultRules = false;
				 
				 boolean bHasChildren = hasChildNodes(document, "element", strLastCommonParent,false);
				 
				 if(completeRuleList.size()>0)
				 {
					 if(completeRuleList.size()>1)
					 {
						 strCompleteRule= " setof(_,( ";
					 }
					 
					 String addRule = "";
					 if(bHasChildren)
					 {
						 RuleStringParser stringParser = new RuleStringParser();
						 if(stringParser.getRuleParametersNumber(completeRuleList.get(0)) >2)
							 addRule = stringParser.replaceParentIDRule(completeRuleList.get(0),strLastCommonGrandParent);
					 }
					 else
					 {
						 addRule= completeRuleList.get(0);	 
					 }
					 
					 if(!queryConvert.contains(addRule.trim()))
					 {
						 strCompleteRule+= addRule;
						 //bMultRules= true;
					 }
				 }
				 
				 for(int i=1;i<completeRuleList.size();i++)
				 {
					 
					 String addRule = "";
					 if(bHasChildren)
					 {
						 RuleStringParser stringParser = new RuleStringParser();
						 
						 if(stringParser.getRuleParametersNumber(completeRuleList.get(i)) >2)
							 addRule = stringParser.replaceParentIDRule(completeRuleList.get(i),strLastCommonGrandParent);
					 }
					 else
					 {
						 addRule =completeRuleList.get(i);
					 }
					 
					 if(!addRule.isEmpty() && !queryConvert.contains(addRule.trim()))
					 {
						 String strJoin = "";
						 if(bMultRules)
						 {
							 if(bWildCard)
							 {
								 strJoin = " , "; 
							 }
							 else
							 {
								 strJoin = " , ! ; ";
							 }
						 }
						 
						 strCompleteRule+=strJoin+ addRule;
						 bMultRules= true;
					 }
				 }
				 
				 if(bMultRules)
					 strCompleteRule +=" ),_) ";
				 
				 queryConvert = queryConvert.replace( ", ." , " .");
				 
				 if(bMultRules && !strCompleteRule.isEmpty())
					 queryConvert = queryConvert.replace(" .", ", "+strCompleteRule+".");
				 
				 queryConvert = queryConvert.replace( " ." , "");

		 }
		 
		 if(!strFunction.isEmpty())
		 {
			 if(!queryConvert.replace(".", "").trim().isEmpty())
				 queryConvert += " , "+strFunction;
			 else
				 queryConvert =  strFunction + " .";
		 }
			 
		 
		 
		 queryConvert = queryConvert.replace(", ,", ",");
		 
		 String finalQuery =   "";
		 
		 //if(!_bJustTranslate)
		 if(false)
		 {
			 String tags = "";
			 ArrayList<String> listaVar = new ArrayList<String>();
			  
			 if(nRefParent >0)
			 {
				 //ArrayList<String> tmpList = new ArrayList<String>();
				// HashMap<String, Boolean> tmpHash = new HashMap<String, Boolean>();
				 ArrayList<Pair<String,Boolean>> tmpList = new ArrayList<Pair<String,Boolean>>();
				 
				
				 for (Pair<String,Boolean> pair : pairListTags)
				 {
                      System.out.println(pair.getKey() + "/" + pair.getValue());
				     
				     String lastTag = pair.getKey();
					 Node nodeLastElement = getElementByTagName(document, "element", lastTag,pair.getValue());
					 ArrayList<String> lastTagchilds = getSubTreeNames(document,nodeLastElement);
					 
					 for (String string : lastTagchilds) 
					 {
						 tmpList.add(new Pair<String, Boolean>(string,true));	
					 }
				 }
				
				
				 pairListTags.clear();
				 pairListTags.addAll(tmpList);
				 
				 HashSet hs = new HashSet();
				 hs.addAll(pairListTags);
				 pairListTags.clear();
				 pairListTags.addAll(hs);
				 
				 /* listaTags.addAll(tmpList);
				   HashSet hs = new HashSet();
				 hs.addAll(listaTags);
				 listaTags.clear();
				 listaTags.addAll(hs);*/
			 }
			 else
			 {
				 
				 if(pairListTags.size() > 0 && nWildCardLevel <0)
				 {
					 Pair<String, Boolean> pair  = pairListTags.get(pairListTags.size()-1);
					 //String lastTag = listaTags.get(listaTags.size()-1);
					 String lastTag = pair.getKey();
					 Boolean lastTagUseNamespace = pair.getValue();
					 Node nodeLastElement = getElementByTagName(document, "element", lastTag,pair.getValue());
					 
					 //###########
					 pairListTags.clear();
					 
					 if(nodeLastElement!= null)
						 lastTag = nodeLastElement.getAttributes().getNamedItem("name").getNodeValue();
					 
					 pairListTags.add(new Pair<String, Boolean>(lastTag,true));
					//###########
					 
					 
					 ArrayList<String> lastTagchilds = getChildsNodeNames( document, nodeLastElement);		
					 
					 boolean bResultTag = false;
					 /*if(lastTagchilds.size() <= 0)
					 {
						 listaTags.add(0, "QueryResult");
						 bResultTag = true;
					 }
					 else
					 {*/
					 
					 for (String string : lastTagchilds) 
					 {
						 pairListTags.add(new Pair<String, Boolean>(string,true));	
						 
					 }
					 
					  //##listaTags.addAll(lastTagchilds);
					 //}
				 }
			 }
			 
			 
			 for(int i=0; i< pairListTags.size();i++)
			 {
				 
				 Pair<String, Boolean> pair = pairListTags.get(i);
				 
				 tags+="'"+pair.getKey()+"'";
				  
				 Node nodeElement = getElementByTagName(document, "element", pair.getKey(),pair.getValue());
				 
				 if(nodeElement != null)
				 {
					 if(nodeElement.getChildNodes().getLength()<=0)
						 listaVar.add(pair.getKey().toUpperCase());
					 else
						 listaVar.add("ID"+pair.getKey().toUpperCase());	 
				 }
				 else
				 {
					 listaVar.add(pair.getKey().toUpperCase());
				 }
				 
				 
				 if(i+1<pairListTags.size())
					 tags+=", ";
			 }
			 
			 
			  finalQuery =   "printXML([";
			 
			 //VARIAVEIS
			 for(int i=0; i< listaVar.size();i++)
			 {
				 
				 finalQuery+=listaVar.get(i);
				 
				 if(i+1<listaVar.size())
					 finalQuery+=", ";
				 
			 }
			 
			 finalQuery+="],[";
			 
			 //TAGs
			 finalQuery+=tags;
			 
			 finalQuery+="],";
			 
			 String  treeProlog = getPrologTree(document);
			 
			/*if(bResultTag)
			{
				treeProlog ="t(QueryResult,["+treeProlog+"])";
			}*/
			 //ARVORE PROLOG
			 finalQuery+=" ("+treeProlog+") ";
			 finalQuery+=", ("+queryConvert.replace(" .", "")+") ).";
		 
		 }
		 else
		 {
			 finalQuery = queryConvert;
		 }
		 
		 return finalQuery; 
	}
	
	/*private boolean isOperator(IExpression expression)
	{
	   if(expression instanceof OperatorEqual)
		   return true;
	   
	   if(expression instanceof OperatorGreaterThan)
		   return true;
	   
	   if(expression instanceof OperatorGreaterEqualThan)
		   return true;
		
		return false;
	}*/
	
	private ArrayList<String> getChildsNodeNames(Document document, Node node)
	{
		 
         //Node nodeLastElement = getElementByTagName(document, "element", nodeName);
         ArrayList<String> listaTags = new ArrayList<String>();
         if(node != null)
         {
        	 NodeList listChilds = node.getChildNodes();
    		 
    		 for ( int i = 0; i < listChilds.getLength(); i++)
    		 {
    			 String localName = listChilds.item(i).getLocalName();
    			 
    			 if(localName== null || localName.compareTo("element") != 0)
    			 {
    				 
    				 listaTags.addAll(getChildsNodeNames(document, listChilds.item(i)));
    			 }
    			 else
    			 {
    				 Node childNodeName = listChilds.item(i).getAttributes().getNamedItem("name");
 					
     				if(childNodeName != null)
     					listaTags.add(childNodeName.getNodeValue());
    				 
    			 }
    			 /*if(localName.compareTo("complexType") == 0)
    			 {
    				 NodeList listChildsComplex =  listChilds.item(i).getChildNodes();
    				 
    				 for ( int j = 0; j < listChildsComplex.getLength(); j++)
    	    		 {
    					 localName = listChildsComplex.item(i).getLocalName();
    					 if(localName.compareTo("element")==0)
    	    			 {
    	    				 Node childNodeName = listChilds.item(i).getAttributes().getNamedItem("name");
    	    					
    	    				if(childNodeName != null)
    	    					listaTags.add(childNodeName.getNodeValue());
    	    			 }
    					 
    	    		 }
    				 
    			 }
    			 else if(localName.compareTo("element") == 0)
    			 {
    				 Node childNodeName = listChilds.item(i).getAttributes().getNamedItem("name");
    					
    				if(childNodeName != null)
    					listaTags.add(childNodeName.getNodeValue());
    			 }*/
    			 
    			 
    		 }
        	 
         }
		 
		 return listaTags;
	}

	
	private ArrayList<String> getSubTreeNames(Document document, Node node)
	{
		ArrayList<String> subTreeNames = new ArrayList<String>();
		
		ArrayList<String> lastTagchilds = getChildsNodeNames( document, node);
		
		for(int i=0; i< lastTagchilds.size();i++)
		{
			subTreeNames.add(lastTagchilds.get(i));
			
			Node nodeElement = getElementByTagName(document, "element", lastTagchilds.get(i),false);
			
			subTreeNames.addAll(getSubTreeNames(document, nodeElement));
		}
		
		return subTreeNames; 
	}
	
	 String  getRuleSubtree(Document _doc, Node nodeBegin, String strParent)
	{
		 String strRuleSubTree = "";
		 
		 strRuleSubTree = getQueryPrologFromSchema3(_doc,"element",getNodeName(nodeBegin),strParent);
		 
		 ArrayList<String> lastTagchilds = getChildsNodeNames( _doc, nodeBegin);
		 
		 for(int i=0; i< lastTagchilds.size();i++)
		 {
			 ArrayList<Node> nodeChildList  = getNodeByName(_doc,lastTagchilds.get(i));
		     //strRuleSubTree = strRuleSubTree+", "+getQueryPrologFromSchema3(_doc,"element",lastTagchilds.get(i),getNodeName(nodeBegin));
			 if(nodeChildList.size()>0)
				 strRuleSubTree = strRuleSubTree+", "+getRuleSubtree(_doc,nodeChildList.get(0),getNodeName(nodeBegin)); 
		 }
		 
		 return strRuleSubTree;
		
	}
	
	
	private String getPrologTree(Document _document)
	{
		Node root = getRootElement(_document);
		return getPrologSubTree(_document,root);
		
		
		/*String nameSpace = _document.getDocumentElement().getPrefix();
		NodeList listElements = _document.getElementsByTagNameNS("*", "element");
		for ( int i = 0; i < listElements.getLength(); i++ )
		{
			Node elementNode = listElements.item(i);
			boolean bRoot = true;
			while(elementNode !=null)
			{
				elementNode = elementNode.getParentNode();
				for(int j=0; j<listElements.getLength();j++)
				{
					if(listElements.item(j)!=null && listElements.item(j).equals(elementNode))
					{
						bRoot = false;
					}
				}
				
				if(bRoot == false)
					break;
			}
			
			if(bRoot)
			{
				return  listElements.item(i);
			}
		}*/
		
	}
	
	
	private String getPrologSubTree(Document _document, Node fatherNode)
	{
		
		String prologSubTree = "";
		/*String localNameFather = fatherNode.getLocalName();
		
		//if(localNameFather== null)
			//return "";
		
		if(localNameFather!= null && localNameFather.compareTo("element") == 0)
		{
			
				Node nodeName = fatherNode.getAttributes().getNamedItem("name");
				
				if(nodeName != null)
				  prologSubTree += "t("+nodeName.getNodeValue()+",[";
				  
			
		}
		
		 NodeList listChilds = fatherNode.getChildNodes();
		 int nCountLeafs = 0;
		 int nCountComplex = 0;
		 for ( int i = 0; i < listChilds.getLength(); i++)
		 {
			 String localName = listChilds.item(i).getLocalName();
			 
			 if(localName== null || localName.compareTo("element") != 0)
			 {
				 
				 String recursiveTree = getPrologSubTree(_document, listChilds.item(i));
				 if(nCountComplex>0 && !recursiveTree.isEmpty())
					 prologSubTree +=", ";
				 
				 
				 prologSubTree += recursiveTree;
				 
				 nCountComplex++;
			 }
			 else
			 {
				 Node childNodeName = listChilds.item(i).getAttributes().getNamedItem("name");
					
 				if(childNodeName != null)
 				{
 					if(nCountLeafs >0)
 						prologSubTree +=", ";
 					
 					prologSubTree += "t("+childNodeName.getNodeValue()+",[";
 					
 					if(listChilds.item(i).getChildNodes().getLength() >0)
 						prologSubTree +=getPrologSubTree(_document, listChilds.item(i)); 
 					
 					prologSubTree +="])";
 				}
 					//listaTags.add(childNodeName.getNodeValue());
 				nCountLeafs++;
			 }
			 
		 }
		 
		 if(localNameFather!= null && localNameFather.compareTo("element") == 0)
				prologSubTree+=" ]) ";
	*/
		
		if(fatherNode.getNodeType() == Node.ELEMENT_NODE)
		{
			Node nodeName = fatherNode.getAttributes().getNamedItem("name");
			String localName = fatherNode.getLocalName();
			if(nodeName != null && localName!= null && (localName.compareTo("element")==0))
			  prologSubTree += "t("+nodeName.getNodeValue()+",[";
		}
		
		NodeList listChilds = fatherNode.getChildNodes();
		for ( int i = 0; i < listChilds.getLength(); i++)
		{
			Node nodeChild = listChilds.item(i);
			
			String result = getPrologSubTree( _document, nodeChild);
			//if(!prologSubTree.isEmpty() && !result.isEmpty())
			if(prologSubTree.length() >0 && prologSubTree.charAt(prologSubTree.length()-1)== ')')
			   prologSubTree += ", ";
			
			if(!result.isEmpty())
				prologSubTree+=result;
			
		}
		
		if(fatherNode.getNodeType() == Node.ELEMENT_NODE)
		{
			String localName = fatherNode.getLocalName();
			if(localName!= null && (localName.compareTo("element")==0))
			{
			    if(prologSubTree.endsWith("]), "))
			    {
			    	prologSubTree = prologSubTree.substring(0, prologSubTree.length() - 2);
			    }
				prologSubTree+=" ])";
			}
		}
		
		return prologSubTree;
	}
	
	protected ArrayList<String> getRuleSchema(Document doc, String ruleName, boolean considerNamespace )
	{
		HashMap<Document,HashMap<String, ArrayList<String>>> ruleHash = SchemaParser.getInstance().getRuleHash();
		
		ArrayList<String> ruleList = new ArrayList<String>();
		
		if(ruleHash.containsKey(doc))
		{
            HashMap<String, ArrayList<String>> hashRuleNames = ruleHash.get(doc);
			
			
            if(considerNamespace)
            {
	            if(hashRuleNames.containsKey(ruleName.trim()) || (ruleName.compareToIgnoreCase("IDNOPARENT")==0) )
				{
					ruleList =  hashRuleNames.get(ruleName.trim());
				}
            }
            else
            {
            	for (String key : hashRuleNames.keySet()) 
            	{
            		if(key.contains(":"))
            		{
            			String [] list = key.split(":");
            			
            			if(list.length >1)
            			{
            				if(list[1].compareToIgnoreCase(ruleName)==0 || (ruleName.compareToIgnoreCase("IDNOPARENT")==0) )
            				{
            					ruleList =  hashRuleNames.get(key);
            					break;
            				}
            			}
            		}
            		else
            		{
            			if(hashRuleNames.containsKey(ruleName.trim()) || (ruleName.compareToIgnoreCase("IDNOPARENT")==0))
        				{
        					ruleList =  hashRuleNames.get(ruleName.trim());
        				}
            		}
            	}
            	
            }
		}
		
		return ruleList;
	}
	
	
	protected ArrayList<String> getNamespaceRuleSchema(Document doc, String namespaceRuleName)
	{
		HashMap<Document,HashMap<String, ArrayList<String>>> ruleHash = SchemaParser.getInstance().getRuleHash();
		
		ArrayList<String> ruleList = new ArrayList<String>();
		
		if(ruleHash.containsKey(doc))
		{
            HashMap<String, ArrayList<String>> hashRuleNames = ruleHash.get(doc);
			
            for (String key : hashRuleNames.keySet()) 
        	{
            	if(key.contains(":"))
            	{
	            	if(key.contains(namespaceRuleName+":") || namespaceRuleName.equals("*"))
	        		{
	            		ruleList.addAll(hashRuleNames.get(key));
	            		
	        		}
            	}
        	}
		}
		
		return ruleList;
	}
	
	protected String convertQuery2( String query )
	{
		extractElementsFromQuery(query);
		
		String queryConvert = "";
		
		HashMap<String, Document> documentList = DocumentParser.getInstance().getDocumentList();
		if (documentList.isEmpty())
			return queryConvert;
		
		Set<String> values = documentList.keySet();
		for (String name : values){
			Document document = documentList.get(name);
			normalizeTreeDocument(document);
			queryConvert += getQueryPrologFromSchema2(document, "element", arrayElementsQuery.get(arrayElementsQuery.size()-1).getElement());
                        arrayElementsQuery.get(arrayElementsQuery.size()-1).setQueryFromSchema(queryConvert);
                        queryConvert = arrayElementsQuery.get(arrayElementsQuery.size()-1).getFinalQuery();
                        
        		/*if ( !arrayElementsQuery.get(arrayElementsQuery.size()-1).getFormula().isEmpty() ){
                            queryConvert += "," + arrayElementsQuery.get(arrayElementsQuery.size()-1).getFormula();
                        }*/
			
		}
		
		
		
		//String element = getElement(query);		
                
		return queryConvert;
	}
	
	
	private Node getElementByTagName(Document _doc, String _typeElement, String _nameTypeElement,boolean bConsiderNamespaces){
		Node node = null;
		NodeList listElements = _doc.getElementsByTagNameNS("*", _typeElement);
		for ( int i = 0; i < listElements.getLength(); i++ ){
			Node elementNode = listElements.item(i);
			//String nameElement = elementNode.getNodeName();
			String nameElement = elementNode.getAttributes().getNamedItem("name").getNodeValue();
			
			if(bConsiderNamespaces)
			{
				if (nameElement.equals(_nameTypeElement) )
				{
					node = elementNode;
					break;
				}
			}
			else
			{
				if(nameElement.contains(":"))
				{
					String [] list = nameElement.split(":");
					
					if(list.length>1)
					{
						if(list[1].compareToIgnoreCase(_nameTypeElement)==0)
						{
							node = elementNode;
							break;
						}
					}
				}
				else
				{
					if (nameElement.equals(_nameTypeElement) )
					{
						node = elementNode;
						break;
					}
				}
				
			}
			
		}
		return node;
	}
	
	private boolean isChild(Node _nodeFather, Node _nodeChild){
		NodeList listChilds = _nodeFather.getChildNodes();
		for ( int i = 0; i < listChilds.getLength(); i++){
			Node nodeChild = listChilds.item(i);
			if ( nodeChild.equals(_nodeChild) )
				return true;
		}
		return false;
	}
	
	private void normalizeTreeDocument(Document doc){
		String nameSpace = doc.getDocumentElement().getPrefix();
		NodeList listElements = doc.getElementsByTagNameNS("*", "element");
		List<Node> rootCandidateList = new ArrayList<Node>();
		List<String> alreadyInsertedNodes = new ArrayList<String>();
		List<String> alreadyTreatedNodes = new ArrayList<String>();
		for ( int i = 0; i < listElements.getLength(); i++ )
		{
			Node elementNode = listElements.item(i);
			if(elementNode != null && elementNode.hasAttributes())
			{
				Node nodeType =  elementNode.getAttributes().getNamedItem("type");
				String typeElement = "";
				if(nodeType != null)
				 typeElement = nodeType.getNodeValue();
						
				if (!(typeElement.isEmpty()) && isComplexType(nameSpace, typeElement) )
				{
					Node nodeComplexType = getElementByTagName(doc, "complexType", typeElement,true);
					if (nodeComplexType!= null && !isChild( elementNode, nodeComplexType) )
					{
					//if (!isChild( elementNode, nodeComplexType) ){
						Node nodeComplexTypeName =  nodeComplexType.getAttributes().getNamedItem("name");
						String strComplexTypeName = "";
						if(nodeComplexTypeName != null)
							strComplexTypeName = nodeComplexTypeName.getNodeValue();
						
						try
						{   
						      if(!alreadyTreatedNodes.contains(typeElement) )
						      {
						    	  if(alreadyInsertedNodes.contains(strComplexTypeName))
									   elementNode.appendChild(nodeComplexType.cloneNode(true));
								   else
								   {
									   elementNode.appendChild(nodeComplexType);
								   	   alreadyInsertedNodes.add(strComplexTypeName);
								   }
								   
								   alreadyTreatedNodes.add(typeElement);  
						      }
						      else
						      {
						    	  int a= 1;
						    	  a++;
						      }

						}
						catch(Exception ex)
						{
							String a = ex.getMessage();
							a.toUpperCase();
						}
						/*if(elementNode.getParentNode()!= null && elementNode.getParentNode().hasAttributes())
						{
							Node rootTypeCandidate =  elementNode.getParentNode().getAttributes().getNamedItem("type");
							if(rootTypeCandidate!= null && !(rootTypeCandidate.getNodeValue().isEmpty()) )
							{
								if( isComplexType(nameSpace, rootTypeCandidate.getNodeValue()))
									rootNode = elementNode.getParentNode();
							}
						}*/
						
					}
				}
			}
			
		}
		//rootNode = rootCandidateList.get(0);
		
		printTree(doc.getDocumentElement());
	}
	
	
	private void printTree(Node doc) {
	    if (doc == null) 
	    {
	      System.out.println("Nothing to print!!");
	      return;
	    }
	    
	    Transformer transformer;
		try 
		{
			transformer = TransformerFactory.newInstance().newTransformer();
		 
		    transformer.setOutputProperty(OutputKeys.INDENT, "yes");
		    //initialize StreamResult with File object to save to file
		    StreamResult result = new StreamResult(new StringWriter());
		    DOMSource source = new DOMSource(doc);
		    
				transformer.transform(source, result);
			 
		    String xmlString = result.getWriter().toString();
		    System.out.println(xmlString);
		}
		catch (TransformerException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    /*try {
	      System.out.println(doc.getNodeName() + "  " + doc.getNodeValue());
	      NamedNodeMap cl = doc.getAttributes();
	      for (int i = 0; i < cl.getLength(); i++) {
	        Node node = cl.item(i);
	        System.out.println(
	          "\t" + node.getNodeName() + " ->" + node.getNodeValue());
	      }
	      NodeList nl = doc.getChildNodes();
	      for (int i = 0; i < nl.getLength(); i++) {
	        Node node = nl.item(i);
	        printTree(node);
	      }
	    } catch (Throwable e) {
	      System.out.println("Cannot print!! " + e.getMessage());
	    }*/
	  }
	
	//Only after Normalize
	private Node getRootElement(Document doc)
	{
		String nameSpace = doc.getDocumentElement().getPrefix();
		NodeList listElements = doc.getElementsByTagNameNS("*", "element");
		for ( int i = 0; i < listElements.getLength(); i++ )
		{
			Node elementNode = listElements.item(i);
			boolean bRoot = true;
			while(elementNode !=null)
			{
				elementNode = elementNode.getParentNode();
				for(int j=0; j<listElements.getLength();j++)
				{
					if(listElements.item(j)!=null && listElements.item(j).equals(elementNode))
					{
						bRoot = false;
					}
				}
				
				if(bRoot == false)
					break;
			}
			
			if(bRoot)
			{
				return  listElements.item(i);
			}
		}
		
		return null;
	}
	
	
	private ArrayList<Node> getComplexNodeByName(Document _doc,String _nameElement)
	{
		NodeList listElements = _doc.getElementsByTagNameNS("*", "complexType");
		ArrayList<Node> nodeList = new ArrayList<Node>();
		for (int i = 0; i < listElements.getLength(); i++) 
		{
			Node elementNode = listElements.item(i);
			Node nodeReturn = null;
			if (elementNode.getAttributes().getNamedItem("name")!= null 
					&& elementNode.getAttributes().getNamedItem("name").getNodeValue().equals(_nameElement))
			{
				nodeReturn = elementNode;
				
			}
			
			if(nodeReturn!= null)
				nodeList.add(nodeReturn);
		}
		
		return nodeList;
	}
	
	
	private ArrayList<Node> getNodeByName(Document _doc,String _typeNameElement)
	{
		
		NodeList listElements = _doc.getElementsByTagNameNS("*", "element");
		if(listElements.getLength()<=0)
			listElements = _doc.getElementsByTagNameNS("*", "complexType");
		ArrayList<Node> nodeList = new ArrayList<Node>();
		for (int i = 0; i < listElements.getLength(); i++) 
		{
			Node elementNode = listElements.item(i);
			
			if (elementNode.getAttributes().getNamedItem("name")!= null 
					&& elementNode.getAttributes().getNamedItem("name").getNodeValue().equals(_typeNameElement))
			{
				
				Node nodeReturn = null;
				//if(elementNode.getAttributes().getNamedItem("type") != null)
				if(false)
				{
					String typeName = elementNode.getAttributes().getNamedItem("type").getNodeValue();
					if(getComplexNodeByName(_doc,typeName) != null)
					{
						nodeList.addAll(getComplexNodeByName(_doc,typeName));
					}
					else
					{
						nodeReturn = elementNode;
					}
					 
				}
				else
				{
				    nodeReturn = elementNode;
				}
				
				//break;
				nodeList.add(nodeReturn);
			}
		}
		
		
		
		return nodeList;
	}
	
	
	private ArrayList<Node> getComplexTypeNodeChilds(Document _doc, Node nodeBegin)
	{
		ArrayList<Node> childList = new ArrayList<Node>();
		
		NodeList listElements = nodeBegin.getChildNodes();
		
		for(int i=0;i<listElements.getLength();i++)
		{
			Node nodeElement = listElements.item(i);
			String nameSpace = _doc.getDocumentElement().getPrefix();
			String nodeName = "";
			if(nodeElement.hasAttributes() && 
					nodeElement.getAttributes().getNamedItem("name") != null)
				nodeName = nodeElement.getAttributes().getNamedItem("name").getNodeValue();
			
			if(isComplexType(nodeName,nameSpace))
			{
				childList.add(nodeElement);
			}
			else
			{
				childList.addAll(getComplexTypeNodeChilds(_doc, nodeElement));
			}
			
		}
		
		return childList;
	}
	
	private ArrayList<String> getRulesByLevel2(Document _doc,String _nameElementBegin, int _nLevel)
	{
		//Node nodeBegin = getNodeByName(_doc,_nameElementBegin);
		ArrayList<Node> nodeList = getNodeByName(_doc,_nameElementBegin);
		boolean bComplexType = false;
		if(nodeList.size()<=0)
		{
              nodeList = getComplexNodeByName(_doc,_nameElementBegin);
              bComplexType= true;
		}
		ArrayList<String> pathArray = new ArrayList<String>();
		boolean bBrake = false;
		for (int i = 0; i <_nLevel; i++) 
		{
			
			ArrayList<Node> listElements = new ArrayList<Node>();
			for(int l=0; l<nodeList.size();l++)
			{
				ArrayList<Node> listTmp = getComplexTypeNodeChilds(_doc,nodeList.get(l));
				if(listTmp != null)
					listElements.addAll(listTmp);	
			}
			
			
			//if(listElements == null)
				//continue;
			
			String strPath = "";
			for(int j= 0; j<listElements.size();j++)
			{
				Node nodeChild = listElements.get(j);
				strPath = nodeChild.getAttributes().getNamedItem("name").getNodeValue();
				int newLevel = _nLevel -1;
				//_nLevel --;
				if(newLevel >0)
				//if(_nLevel>0)
				{
					ArrayList<String> childPathArray = getRulesByLevel2(_doc,strPath, newLevel);
					for(int k=0;k<childPathArray.size();k++)
					{
						String newPath = strPath+"/"+childPathArray.get(k);
						if(bComplexType)
							newPath = "/"+childPathArray.get(k);
						
						int nCount = newPath.length() - newPath.replace("/", "").length();
						if(nCount==_nLevel-1)
							bBrake = true;
						pathArray.add(newPath);
					}
				}
				else
				{
					pathArray.add(strPath);
				}
				
			}
			
			if(bBrake)
				break;
		}
		
		return pathArray;
	}
	
	
	
	private String getWildCardQuery(Document doc, String strCommomParent, int nWildCardLevel)
	{
		 //List<String> listaRegras = getRulesByLevel(document,strLastCommonParent,element.getElement(),nWildCardLevel);
		 List<String> listaRegras = getRulesByLevel2(doc,strCommomParent,nWildCardLevel+1);
		 
		 if(listaRegras.isEmpty())
			 return "";
		 
		 String strWild =  " setof(_,";
		 int nCountItem =0;
		 for (String string : listaRegras) 
		 {
			 
			 String[] itemArray = string.split("/");
			 String tmpWild= "( ";
			 //strWild+="( ";
			 String strParent = strCommomParent;
			 boolean bHasRule= false;
			 for(int j=1;j<itemArray.length;j++)
			 {
				 //if(isComplexType(doc.getDocumentElement().getPrefix(), itemArray[j]))
				   //continue; 
				 
				 if(j!=1)
					 tmpWild+=" , ";
					 //strWild+=" , "; 
				 
				 String strChildRule = getQueryPrologFromSchema3(doc,"element",itemArray[j],strParent);
				 if(!strChildRule.isEmpty())
				 {
					 tmpWild+= strChildRule;
					 bHasRule = true;
				 }
				
				 
				 strParent = itemArray[j];
			 }
				
			 if(!strWild.isEmpty())
				 tmpWild+=") ";
			 
			 nCountItem++;
			 if(nCountItem < listaRegras.size())
				 tmpWild+="; ";
			 
			 if(bHasRule)
				 strWild+=tmpWild;

		 }
		
		if(strWild.endsWith("; "))
		{
			strWild+="%&$";
			strWild = strWild.replace("; %&$", "");
		}
		strWild+=",_) ";
		 
		if(strWild.trim().compareTo("setof(_,,_)")==0)
			return "";
		 
		 return strWild;

	}
	
	
	
	private String getNodeName(Node _node)
	{
		String strNodeName = "";
		
		if(_node.hasAttributes() && 
				_node.getAttributes().getNamedItem("name") != null)
			strNodeName = _node.getAttributes().getNamedItem("name").getNodeValue();
		
		return strNodeName;
	}
	
	
	private ArrayList<Node> getNodeByTypeName(Document _doc, String _strTypeName)
	{
		ArrayList<Node> nodeList = new ArrayList<Node>();
		NodeList listElements = _doc.getElementsByTagNameNS("*", "element");
		for (int i = 0; i < listElements.getLength(); i++) 
		{
			Node elementNode = listElements.item(i);
			
			if (elementNode.getAttributes().getNamedItem("type")!= null 
					&& elementNode.getAttributes().getNamedItem("type").getNodeValue().toLowerCase().equals(_strTypeName.toLowerCase()))
			{
				nodeList.add(elementNode);
			}
		}
		
		return nodeList;
	}
	
	private String getParentName(Document _doc, Node _childNode)
	{
		String nameSpace = _doc.getDocumentElement().getPrefix();
		String strParentName = "NOPARENT";
		Node fatherNode = getComplexTypeFather(_childNode,nameSpace);
		if(fatherNode != null)
		{
			ArrayList<Node> nodes = getNodeByTypeName(_doc,getNodeName(fatherNode));
			if(nodes.size()>0)
			{
				Node node = nodes.get(0);
				strParentName = getNodeName(node);
			}
		}
		
		return strParentName;
	}
	
	private String getRulesBottomUp(Document _doc, String strCommomLeaf, int nUpLevel)
	{
		
		ArrayList<Node> nodeList = getNodeByName(_doc,strCommomLeaf);
		ArrayList<String> ruleList = new ArrayList<String>();
		if(nodeList.isEmpty())
			return "";
		
		String nameSpace = _doc.getDocumentElement().getPrefix();
		//String strParent = strCommomLeaf;
		
		
		Node fatherNode = null;
		
		for(int j=0; j<nodeList.size();j++)
		{
			Node nodeBegin = nodeList.get(j);
			String strRule = "";
			for(int i=0;i<nUpLevel;i++)
			{	
				fatherNode = getComplexTypeFather(nodeBegin,nameSpace);
				if(fatherNode != null)
				{
					
					ArrayList<Node> nodes = getNodeByTypeName(_doc,getNodeName(fatherNode));
					fatherNode = null;
					if(nodes.size()>0)
						fatherNode = nodes.get(0);
					
					if(fatherNode != null)
					{
						nodeBegin = fatherNode;
						String strParent = getParentName(_doc, nodeBegin);
						
						
						
						if(!strRule.isEmpty())
						{
							strRule = getRuleSubtree(_doc,nodeBegin,strParent) + ", " + strRule;
						}
						else
						{
							strRule = getRuleSubtree(_doc,nodeBegin,strParent);//getQueryPrologFromSchema3(_doc,"element",getNodeName(nodeBegin),strParent);
						}
						//strParent = getNodeName(nodeBegin);
					}
				}
			}
			
			ruleList.add(strRule);
		}
		
		
		String strFinalRule = "";
		
		if(ruleList.size()>1)
			strFinalRule = " setof(_, ( ";
		
		for(int k= 0; k<ruleList.size();k++)
		{
			strFinalRule += " ( "+ruleList.get(k)+" ) ";
			
			if(k+1 < ruleList.size())
				strFinalRule += "; ";  
		}
		
		if(ruleList.size()>1)
			strFinalRule += " ), _) ";
		
		return strFinalRule;
		
	}
	
	
	private ArrayList<String> getTagsBottomUp(Document _doc, String strCommomLeaf, int nUpLevel)
	{
		ArrayList<String> tagList = new ArrayList<String>();
		
		ArrayList<Node> nodeList = getNodeByName(_doc,strCommomLeaf);
		
		if(nodeList.isEmpty())
			return tagList;
		
		String nameSpace = _doc.getDocumentElement().getPrefix();
		//String strParent = strCommomLeaf;
		
		
		Node fatherNode = null;
		
		for(int j=0; j<nodeList.size();j++)
		{
			Node nodeBegin = nodeList.get(j);
			String strRule = "";
			for(int i=0;i<nUpLevel;i++)
			{	
				fatherNode = getComplexTypeFather(nodeBegin,nameSpace);
				if(fatherNode != null)
				{
					
					ArrayList<Node> nodes = getNodeByTypeName(_doc,getNodeName(fatherNode));
					fatherNode = null;
					if(nodes.size()>0)
						fatherNode = nodes.get(0);
					
					if(fatherNode != null)
					{
						nodeBegin = fatherNode;
					}
				}
			}
			
			tagList.add(getNodeName(nodeBegin));
			tagList.addAll(getSubtreeTags(_doc,nodeBegin));
		}
		
		return tagList;
	}
	
	
	ArrayList<String>  getSubtreeTags(Document _doc, Node nodeBegin)
	{
		ArrayList<String> tagSubTree = new ArrayList<String>();
		
		if(nodeBegin == null)
			return tagSubTree;
		 
		ArrayList<String> lastTagchilds = getChildsNodeNames( _doc, nodeBegin);
		tagSubTree.addAll(lastTagchilds);
		
		 for(int i=0; i< lastTagchilds.size();i++)
		 {
			 ArrayList<Node> nodeChildList  = getNodeByName(_doc,lastTagchilds.get(i));
			 if(nodeChildList.size()>0)
				 tagSubTree.addAll( getSubtreeTags(_doc,nodeChildList.get(0))); 
		 }
		 
		 return tagSubTree;
	}
	
	
	private ArrayList<String> getRulesByLevel(Document _doc,String _nameElementBegin, String _nameElementEnd, int _nLevel) 
	{
		NodeList listElements = _doc.getElementsByTagNameNS("*", "element");
		ArrayList<String> ItemPathList = new ArrayList<String>();
		for (int i = 0; i < listElements.getLength(); i++) 
		{
			Node elementNode = listElements.item(i);

			if (!elementNode.getAttributes().getNamedItem("name").getNodeValue().equals(_nameElementEnd))
				continue;

			Node searchNode = elementNode;
			String strPath = elementNode.getAttributes().getNamedItem("name")
					.getNodeValue();
			for (int j = 0; j < _nLevel; j++) 
			{
				if (searchNode != null) 
				{
					
					String nameSpace = _doc.getDocumentElement().getPrefix();
					searchNode = getComplexTypeFather(searchNode,nameSpace);
					
					if(searchNode != null)
					{
						String complexName = searchNode.getAttributes().getNamedItem("name").getNodeValue();

						if (searchNode != null) 
						{
							for (int k = 0; k < listElements.getLength(); k++)
							{
								Node elementComplexNode = listElements.item(k);

								if (elementComplexNode.getAttributes().getNamedItem("type")!= null &&
										elementComplexNode.getAttributes().getNamedItem("type").getNodeValue().equals(complexName))
								{
									strPath = elementComplexNode.getAttributes().getNamedItem("name").getNodeValue()+ "/" + strPath;
									searchNode = elementComplexNode;
									break;
								}
							}
								
						}
					}
					
				}
			}

			if (searchNode != null) 
			{
				String nameBeginElement = searchNode.getAttributes().getNamedItem("name").getNodeValue();
				if (nameBeginElement.equals(_nameElementBegin)) 
				{
					String[] splitPath = strPath.split("/");
					
					if (splitPath.length >= _nLevel)
					{
						String buildPath = "";
						for(int l=1;l<splitPath.length;l++)
						{
							buildPath+=splitPath[l];
						}
						
						if(!buildPath.isEmpty())
							ItemPathList.add(buildPath);
					}
				}
			}

		}

		return ItemPathList;

	}

	private Node getComplexTypeFather(Node childNode,String nameSpace)
	{
		
		Node nodeParent = null;
		if(childNode == null)
			return childNode;
		Node nodeChildName = childNode.getAttributes().getNamedItem("name");
		String childName = "";
		if(nodeChildName != null)
			childName = nodeChildName.getNodeValue();
		
		nodeParent = childNode.getParentNode();
		if(nodeParent != null)
		{
			Node nodeParentName = nodeParent.getAttributes().getNamedItem("name");
			if (nodeParentName != null)
			{
				String nameElement = "";
				nameElement = nodeParentName.getNodeValue();
				
				if (!(nameElement.isEmpty()))
				{
					if(isComplexType(nameSpace, nameElement))
					{
					   return nodeParent;
					}
					else
					{
						nodeParent =  getComplexTypeFather(nodeParent,nameSpace);
					}
				}
			}
			else
			{
				nodeParent =  getComplexTypeFather(nodeParent,nameSpace);
			}
		}
		
		return nodeParent;
			
	}
	
	
	private String allTagRules(Document document, String strTag, String strTagParent,boolean bWildCard,boolean bConsiderNamespaces ,String StrCurrentPrologQuery) 
	{
		
		 ArrayList<String>  completeRuleList = getRuleSchema(document,strTag,bConsiderNamespaces);
		 //queryConvert+=" .";
		 String strCompleteRule = "";
		 boolean bMultRules = false;
		 
		 boolean bHasChildren = hasChildNodes(document, "element", strTag,bConsiderNamespaces);
		 
		 if(completeRuleList.size()>0)
		 {
			 if(completeRuleList.size()>1)
			 {
				 strCompleteRule= " setof(_,( ";
			 }
			 
			 String addRule = "";
			 if(bHasChildren)
			 {
				 RuleStringParser stringParser = new RuleStringParser();
				 if(stringParser.getRuleParametersNumber(completeRuleList.get(0)) >2)
					 addRule = stringParser.replaceParentIDRule(completeRuleList.get(0),strTagParent);
			 }
			 else
			 {
				 addRule= completeRuleList.get(0);	 
			 }
			 
			 if(!StrCurrentPrologQuery.contains(addRule.trim()))
			 {
				 strCompleteRule+= addRule;
				 //bMultRules= true;
			 }
		 }
		 
		 for(int i=1;i<completeRuleList.size();i++)
		 {
			 
			 String addRule = "";
			 if(bHasChildren)
			 {
				 RuleStringParser stringParser = new RuleStringParser();
				 
				 if(stringParser.getRuleParametersNumber(completeRuleList.get(i)) >2)
					 addRule = stringParser.replaceParentIDRule(completeRuleList.get(i),strTagParent);
			 }
			 else
			 {
				 addRule =completeRuleList.get(i);
			 }
			 
			 if(!addRule.isEmpty() && !StrCurrentPrologQuery.contains(addRule.trim()))
			 {
				 String strJoin = "";
				 if(bMultRules)
				 {
					 if(bWildCard)
					 {
						 strJoin = " , "; 
					 }
					 else
					 {
						 strJoin = " , ! ; ";
					 }
				 }
				 
				 strCompleteRule+=strJoin+ addRule;
				 bMultRules= true;
			 }
		 }
		 
		 if(bMultRules)
			 strCompleteRule +=" ),_) ";
		 
		 return strCompleteRule;
	}
	
	
	private String allTagNamespaceRules(Document document, String strNamespaceTag, String strTagParent,boolean bWildCard,boolean bConsiderNamespaces ,String StrCurrentPrologQuery) 
	{
		
		 ArrayList<String>  completeRuleList = getNamespaceRuleSchema(document,strNamespaceTag);
		 //queryConvert+=" .";
		 String strCompleteRule = "";
		 boolean bMultRules = false;
		 
		 boolean bHasChildren = hasChildNodes(document, "element", strNamespaceTag,bConsiderNamespaces);
		 
		 if(completeRuleList.size()>0)
		 {
			 if(completeRuleList.size()>1)
			 {
				 strCompleteRule= " setof(_,( ";
			 }
			 
			 /*String addRule = "";
			 if(bHasChildren)
			 {
				 RuleStringParser stringParser = new RuleStringParser();
				 if(stringParser.getRuleParametersNumber(completeRuleList.get(0)) >2)
					 addRule = stringParser.replaceParentIDRule(completeRuleList.get(0),strTagParent);
			 }
			 else
			 {
				 String [] splitRule  = completeRuleList.get(0).split("\\(");
				 String ruleName = "";
				 if(splitRule.length > 0)
					 ruleName= splitRule[0];
				 addRule= completeRuleList.get(0);
				 
				 addRule = "("+ruleName.toUpperCase() +" = NAMESPACEVALUE , "+completeRuleList.get(0)+")";
				 
				 //addRule= completeRuleList.get(0);
			 }
			 
			 if(!StrCurrentPrologQuery.contains(addRule.trim()))
			 {
				 strCompleteRule+= addRule;
				 //bMultRules= true;
			 }*/
		 }
		 
		 for(int i=0;i<completeRuleList.size();i++)
		 {
			 
			 String addRule = "";
			 if(bHasChildren)
			 {
				 RuleStringParser stringParser = new RuleStringParser();
				 
				 if(stringParser.getRuleParametersNumber(completeRuleList.get(i)) >2)
					 addRule = stringParser.replaceParentIDRule(completeRuleList.get(i),strTagParent);
			 }
			 else
			 {
				 addRule =completeRuleList.get(i);
				 
				 String [] splitRule  = completeRuleList.get(i).split("\\(");
				 String ruleName = "";
				 if(splitRule.length > 0)
					 ruleName= splitRule[0];
				 addRule= completeRuleList.get(i);
				 
				 addRule = ruleName.toUpperCase() +" = NAMESPACEVALUE , "+completeRuleList.get(i);
			 }
			 
			 if(!addRule.isEmpty() && !StrCurrentPrologQuery.contains(addRule.trim()))
			 {
				 String strJoin = "";
				 if(bMultRules)
				 {
					 /*if(bWildCard)
					 {
						 strJoin = " , "; 
					 }
					 else
					 {
						 strJoin = " , ! ; ";
					 }*/
					 
					 strJoin = " ; ";
				 }
				 
				 strCompleteRule+=strJoin+ addRule;
				 bMultRules= true;
			 }
		 }
		 
		 if(bMultRules)
			 strCompleteRule +=" ),_) ";
		 
		 return strCompleteRule;
	}
	
	/*private String getRulesByLevel(Document _doc, String _nameTypeElementBegin, String _nameTypeElementEnd, int _nLevel){
		String strRules = "";
		
		
		NodeList listElements = _doc.getElementsByTagNameNS("*", "element");
		for ( int i = 0; i < listElements.getLength(); i++ )
		{
			Node elementNode = listElements.item(i);
			String nameElement = elementNode.getAttributes().getNamedItem("name").getNodeValue();
			
			if (nameElement.equals(_nameTypeElementBegin) )
			{
				
				
			
			}
			
		}
		
		return strRules;
	}
	
	
	private ArrayList<String> getNameItemPathLevel(Node _elementNode,String _nameTypeElementBegin, String _nameTypeElementEnd, int _nLevel)
	{
		
		int nCountLevel = 1;
		ArrayList<String> ItemList = new ArrayList<String>();
		NodeList childListElements  =  _elementNode.getChildNodes();
		for ( int j = 0; j < childListElements.getLength(); j++ )
		{
			Node childNode = childListElements.item(j);
			String ChildNameElement = childNode.getAttributes().getNamedItem("name").getNodeValue();
			if (ChildNameElement.equals(_nameTypeElementEnd) && _nLevel == nCountLevel)
			{
				//Achei um elemento no nivel desejado
				ItemList.add(e)
			}
			else
			{
				//Chamar funcao para os filhos
				 if(_nLevel>nCountLevel)
					 getNameItemPathLevel(childNode,_nameTypeElementBegin, _nameTypeElementEnd, nCountLevel++);
			}
		}
	}*/
	
	

}

