package wrapper;

import java.io.StringWriter;
import java.rmi.server.ExportException;
import java.security.acl.LastOwnerException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.logging.Level;

import javax.lang.model.element.ElementVisitor;
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
import wrapper.expressionFilter.OperatorLessThan;

import org.junit.runners.ParentRunner;
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
		//tempQuery = tempQuery.replace("@", "");
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
		
		QueryElement joinQueryElement = null;
		boolean bJoin = false;
		
		while (posBar > -1)
		{
			String strSubString = tempQuery.substring(posInit, posBar);
			
			int posFilter = -1;
			if(! strSubString.isEmpty())
			{
				if(bJoin && joinQueryElement != null)
				{
					arrayElementsQuery.add(joinQueryElement);
					bJoin = false;
				}
				
				if(strSubString.contains(" |"))
				{
					joinQueryElement = new QueryElement();
					bJoin = true;
					joinQueryElement.setIsJoin(bJoin);
					strSubString = strSubString.replace(" |", "");
				}
				
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
						//posInit = tempQuery.indexOf("[", posInit);
					}
					
					
					/*if(posInit<=2)
					{
						String strFirst = tempQuery.substring(posInit,tempQuery.indexOf("[", posInit));
						QueryElement queryElement = new QueryElement();
						queryElement.parseElement(strFirst);
						strLastItem = queryElement.getElement();
						arrayElementsQuery.add(queryElement );
					}*/
					
					
					List<Pair<Integer,Integer>> filterList = mapfilter(tempQuery);
					
					for(int nFilter=filterList.size()-1;nFilter>=0;nFilter--)
					{
						if(filterList.get(nFilter).getKey()+1>=posInit)
						{
							
							if(filterList.get(nFilter).getKey()+1 == posInit)
								posInit = filterList.get(nFilter).getKey()+1;
							else
								posInit = filterList.get(nFilter).getKey();
							
							posFilter = filterList.get(nFilter).getValue();
							break;
						}
						/*else if(filterList.get(nFilter).getValue()>posFilter)
						{
							posFilter = filterList.get(nFilter).getValue();
							break;
						}*/
							
						
					}
					
					//#### TEST 14
					//posInit = tempQuery.indexOf("[", posInit);
					//posFilter = tempQuery.lastIndexOf("]");
					
					
					/*if(tempQuery.indexOf("[", posInit+1)==-1)
					{
						posFilter = tempQuery.indexOf("]", posInit);
							
					}
					else
					{
						posFilter = tempQuery.lastIndexOf("]");
					}*/
					
					strSubString = tempQuery.substring(posInit,posFilter+1 );
					
					
					parseFilter(strSubString);
					
				}
				else
				{
					QueryElement queryElement = new QueryElement();
					queryElement.parseElement(strSubString.replace("/", ""));
					arrayElementsQuery.add(queryElement);
				}	
					
//					int internalFilter = strSubString.indexOf("/");
//					
//					//#################################################
//					int beginPosPlicFilter = strSubString.indexOf("'",0);
//					int endPosPlicFilter = -1;
//					if(beginPosPlicFilter!= -1 )
//					{
//						endPosPlicFilter = strSubString.indexOf("'",beginPosPlicFilter+1);
//					}
//					if(internalFilter>=beginPosPlicFilter && internalFilter<=endPosPlicFilter)
//						internalFilter = -1;
//					
//					List<Pair<Integer,Integer>> pairParenthesisList = mapParenthsis(strSubString);
//					
//					for(int i=0; i< pairParenthesisList.size();i++)
//					{
//						Pair<Integer,Integer> pair = pairParenthesisList.get(i);
//						if(internalFilter>=pair.getKey() && internalFilter<=pair.getValue())
//						{
//							internalFilter = -1;
//							break;
//						}
//						
//					}
//					//#################################################
//					
//					if(internalFilter > -1)
//					{
//						//String strSub = tempQuery.substring(posInit+1, strSubString.length()-1);
//						String[] internalElements = strSubString.split("/");
//						int nCount=1;
//						for (String string : internalElements) 
//						{
//							string = string.replace("[", "");
//							string = string.replace("]", "");
//							if(nCount == internalElements.length)
//							{
//								strSubString = "["+string+"]";
//								break;
//							}
//							
//							QueryElement queryElement = new QueryElement();
//							queryElement.parseElement(string);
//							queryElement.setIsFilterpart(true);
//							arrayElementsQuery.add(queryElement);
//							
//							nCount++;
//						}
//							
//					}
//				}
//				
//				
//				ArrayList<String> andElements = getAndElements(strSubString);
//				ArrayList<String> orElements = getOrElements(strSubString);
//				
//				if(andElements.size()>0)
//				{
//					for (String stringAnd : andElements)
//					{
//						
//						
//						orElements = getOrElements(stringAnd);
//						if(orElements.size()>0)
//						{
//							for(String stringOR : orElements)
//							{
//								/*QueryElement parenthesis = verifyElementParenthesis(stringOR);
//								
//								if(stringOR.trim().startsWith("(") && parenthesis != null)
//								{
//									arrayElementsQuery.add(parenthesis);
//								}*/
//								
//								QueryElement queryElement = new QueryElement();
//								if(stringOR.trim().startsWith("(") || (stringOR.trim().endsWith(")") && !stringOR.trim().contains("(")))
//									stringOR = stringOR.replace("(", "").replace(")", "");
//								
//								queryElement.parseElement("["+stringOR+"]");
//								queryElement.setIsFilterpart(true);
//								queryElement.setIsOrFilterpart(true);
//								arrayElementsQuery.add(queryElement);
//								
//								/*if(stringOR.trim().endsWith(")") && parenthesis != null)
//								{
//									arrayElementsQuery.add(parenthesis);
//								}*/
//							}	
//						}
//						else
//						{
//							/*QueryElement parenthesis = verifyElementParenthesis(stringAnd);
//							
//							if(stringAnd.trim().startsWith("(") && parenthesis != null)
//							{
//								arrayElementsQuery.add(parenthesis);
//							}*/
//							
//							QueryElement queryElement = new QueryElement();
//							if(stringAnd.trim().startsWith("(") || (stringAnd.trim().endsWith(")") && !stringAnd.trim().contains("(")))
//								stringAnd = stringAnd.replace("(", "").replace(")", "");
//							
//							queryElement.parseElement("["+stringAnd+"]");
//							queryElement.setIsFilterpart(true);
//							arrayElementsQuery.add(queryElement);
//							
//							/*if(stringAnd.trim().endsWith("(") && parenthesis != null)
//							{
//								arrayElementsQuery.add(parenthesis);
//							}*/
//						}
//						
//					}	
//				}
//				else if(orElements.size()>0)
//				{
//					for (String stringOR : orElements)
//					{
//						/*QueryElement parenthesis = verifyElementParenthesis(stringOR);
//						
//						if(stringOR.trim().startsWith("(") && parenthesis != null)
//						{
//							arrayElementsQuery.add(parenthesis);
//						}*/
//						
//						QueryElement queryElement = new QueryElement();
//						if(stringOR.trim().startsWith("(") || (stringOR.trim().endsWith(")") && !stringOR.trim().contains("(")))
//							stringOR = stringOR.replace("(", "").replace(")", "");
//						
//						queryElement.parseElement("["+stringOR+"]");
//						queryElement.setIsFilterpart(true);
//						queryElement.setIsOrFilterpart(true);
//						arrayElementsQuery.add(queryElement);
//						
//						/*if(stringOR.trim().endsWith("(") && parenthesis != null)
//						{
//							arrayElementsQuery.add(parenthesis);
//						}*/
//					}	
//				}
//				//else if(! (strSubString.indexOf("[", 0) != -1))
//				else if( (strSubString.indexOf("[", 0) != -1))
//				{
//					QueryElement queryElement = new QueryElement();
//					
//					String strfilterElement =  strSubString;
//					strfilterElement = strfilterElement.replace("[", "");
//					strfilterElement = strfilterElement.replace("]", "");
//					queryElement.parseElement(strSubString);
//					
//					if(isNumber(queryElement.getVariable()))
//					{
//						QueryPosition queryElementPosition = new QueryPosition();
//						queryElementPosition.parseElement(strSubString);
//						
//						queryElementPosition.setItemFilter(strLastItem);
//						queryElementPosition.setSearchValue(strLastItem);
//						
//						
//						queryElementPosition.setCompareVariable(strLastItem);
//						if(bFilter)
//						{
//							//queryElementPosition.setCompareVariable(strLastItem);
//							bFilter = false;
//						}
//						
//						queryElement = queryElementPosition;
//					}
//					
//					if(strSubString.indexOf("[", 0) != -1)
//					{
//						queryElement.setIsFilterpart(true);
//						strLastItem = queryElement.getVariable();
//						bFilter = true;
//					}
//					
//					if(arrayElementsQuery.get(arrayElementsQuery.size()-1) != queryElement)
//						arrayElementsQuery.add(queryElement);
//					
//					if(!queryElement.isFilterpart())
//					{
//						strLastItem = queryElement.getElement();
//						bFilter = false;
//					}
//				
//				}
//				else //if(strSubString.indexOf("(", 0) != -1)
//				{
//					QueryElement queryElement = new QueryElement();
//					queryElement.parseElement(strSubString);
//					arrayElementsQuery.add(queryElement);
//					
//					
//					/*if(strSubString.indexOf("(", 0) != -1)
//					{
//						
//					}*/
//				}
					
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
	
	
	private void parseFilter(String filterQuery)
	{
		    String tempQuery = filterQuery;
		    //String bkpQuery = tempQuery;
		    int posInit =0;
		    int posEnd  = tempQuery.indexOf("]",posInit);
		    
		    String strLastItem = "";
		    while(posEnd != -1 && posInit != -1)
		    {
		    	//boolean bUseBkp = false;
		    	String strFirst = "";
		    	if(filterQuery.indexOf("[", posInit+1) != -1)
		    		strFirst = filterQuery.substring(posInit+1,filterQuery.indexOf("[", posInit+1));
				strFirst = strFirst.replace("/", "");
				if(!strFirst.isEmpty())
				{
					QueryElement queryElement = new QueryElement();
					queryElement.parseElement(strFirst);
					queryElement.setIsFilterpart(true);
					strLastItem = queryElement.getElement();
					arrayElementsQuery.add(queryElement);
					
					posInit = filterQuery.indexOf("[", posInit+1);
				}
				
				
				//posEnd = tempQuery.indexOf("]", posInit);
				
				//if(posEnd<0)
					//break;
				
				tempQuery = filterQuery.substring(posInit,posEnd+1 );
				
				int internalFilter = tempQuery.indexOf("/");
					
				//#################################################
				int beginPosPlicFilter = tempQuery.indexOf("'",0);
				int endPosPlicFilter = -1;
				if(beginPosPlicFilter!= -1 )
				{
					endPosPlicFilter = tempQuery.indexOf("'",beginPosPlicFilter+1);
				}
				if(internalFilter>=beginPosPlicFilter && internalFilter<=endPosPlicFilter)
					internalFilter = -1;
				
				List<Pair<Integer,Integer>> pairParenthesisList = mapParenthsis(tempQuery);
				
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
					String[] internalElements = tempQuery.split("/");
					int nCount=1;
					for (String string : internalElements) 
					{
						string = string.replace("[", "");
						string = string.replace("]", "");
						
						if(nCount == internalElements.length)
						{
							//bkpQuery = tempQuery;
							//bUseBkp = true;
							tempQuery = "["+string+"]";
							break;
						}
						
						QueryElement queryElement = new QueryElement();
						queryElement.parseElement(string);
						queryElement.setIsFilterpart(true);
						arrayElementsQuery.add(queryElement);
						
						nCount++;
					}	
				}
				
				ArrayList<String> andElements = getAndElements(tempQuery);
				ArrayList<String> orElements = getOrElements(tempQuery);
				
				if(andElements.size()>0)
				{
					for (String stringAnd : andElements)
					{
						orElements = getOrElements(stringAnd);
						if(orElements.size()>0)
						{
							for(String stringOR : orElements)
							{
								QueryElement queryElement = new QueryElement();
								if(stringOR.trim().startsWith("(") || (stringOR.trim().endsWith(")") && !stringOR.trim().contains("(")))
									stringOR = stringOR.replace("(", "").replace(")", "");
								
								queryElement.parseElement("["+stringOR+"]");
								queryElement.setIsFilterpart(true);
								queryElement.setIsOrFilterpart(true);
								arrayElementsQuery.add(queryElement);
							}	
						}
						else
						{
							
							QueryElement queryElement = new QueryElement();
							if(stringAnd.trim().startsWith("(") || (stringAnd.trim().endsWith(")") && !stringAnd.trim().contains("(")))
								stringAnd = stringAnd.replace("(", "").replace(")", "");
							
							queryElement.parseElement("["+stringAnd+"]");
							queryElement.setIsFilterpart(true);
							arrayElementsQuery.add(queryElement);
						}
						
					}	
				}
				else if(orElements.size()>0)
				{
					for (String stringOR : orElements)
					{
						QueryElement queryElement = new QueryElement();
						if(stringOR.trim().startsWith("(") || (stringOR.trim().endsWith(")") && !stringOR.trim().contains("(")))
							stringOR = stringOR.replace("(", "").replace(")", "");
						
						queryElement.parseElement("["+stringOR+"]");
						queryElement.setIsFilterpart(true);
						queryElement.setIsOrFilterpart(true);
						arrayElementsQuery.add(queryElement);
					}	
				}
				else if( (tempQuery.indexOf("[", 0) != -1))
				{
					QueryElement queryElement = new QueryElement();
					
					String strfilterElement =  tempQuery;
					strfilterElement = strfilterElement.replace("[", "");
					strfilterElement = strfilterElement.replace("]", "");
					queryElement.parseElement(tempQuery);
					
					if(isNumber(queryElement.getVariable()))
					{
						QueryPosition queryElementPosition = new QueryPosition();
						queryElementPosition.parseElement(tempQuery);
						
						queryElementPosition.setItemFilter(strLastItem);
						queryElementPosition.setSearchValue(strLastItem);
						
						
						queryElementPosition.setCompareVariable(strLastItem);
						//if(bFilter)
						//{
							//bFilter = false;
						//}
						
						queryElement = queryElementPosition;
					}
					
					if(tempQuery.indexOf("[", 0) != -1)
					{
						queryElement.setIsFilterpart(true);
						strLastItem = queryElement.getVariable();
						//bFilter = true;
					}
					
					if(arrayElementsQuery.get(arrayElementsQuery.size()-1) != queryElement)
						arrayElementsQuery.add(queryElement);
					
					if(!queryElement.isFilterpart())
					{
						strLastItem = queryElement.getElement();
						//bFilter = false;
					}
				
				}
				else
				{
					QueryElement queryElement = new QueryElement();
					queryElement.parseElement(tempQuery);
					arrayElementsQuery.add(queryElement);
				}
				
				//if(bUseBkp)
					//tempQuery = bkpQuery;
				
				//posInit = filterQuery.indexOf("[", posEnd);
				posInit=posEnd+1;
				posEnd = filterQuery.indexOf("]", posInit);
				
				if(posInit == posEnd)
					break;
		    }
	}
	
	private QueryElement verifyElementParenthesis(String _element)
	{
		String parenthesis = "";
		
		if(_element.trim().startsWith("("))
		{
			parenthesis="(";
			_element = _element.replace("(","");
		}
		else if(_element.trim().endsWith(")"))
		{
			parenthesis=")";
			_element = _element.replace(")","");
		}
		
		QueryElement queryElement = null;
		
		if(!parenthesis.isEmpty())
		{
			queryElement = new QueryElement();
			queryElement.parseElement(parenthesis);
			queryElement.setIsParenthesis(true);
		}
		
		return queryElement;
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
	
	private List<Pair<Integer,Integer>> mapfilter(String text)  
	{
		
		List<Pair<Integer,Integer>> pairParenthesisList = new ArrayList<Pair<Integer,Integer>>();
		Stack<Integer> tmpStack  =new Stack<Integer>();
		int beginPosParenthesis = text.indexOf("[",0);
		while(beginPosParenthesis > -1)
		{
			tmpStack.add(beginPosParenthesis);
			beginPosParenthesis = text.indexOf("[",beginPosParenthesis+1);
		}
		
		while(!tmpStack.isEmpty())
		{
			beginPosParenthesis = tmpStack.pop();
			int endPosParenthesis = text.indexOf("]",beginPosParenthesis+1);
			
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
				
				//if ( isComplexType(nameSpace, typeNodeElement) && typeSchema.toLowerCase().equals("element") )
				if ( isNodeComplexType(nodeElement) && typeSchema.toLowerCase().equals("element") )
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
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement,"NOPARENT",false);
		
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
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement,fatherElement,false);
		
		if ( nodeElement == null )
		{
			
			if(fatherElement.compareToIgnoreCase("NOPARENT")==0)
			{
				ArrayList<String> alltags = obtainAllTagsNames(document);
				query = "setof(_,(";
				int nCount =0;
				for(String tag : alltags)
				{
					
					if(nameElement.contains("@"))
					{
						nameElement = nameElement.replace("@", "");
						query += fatherElement.trim()+"_attribute_"+nameElement.trim()+"(ID";
					}
					else
					{
						query += nameElement.trim()+"(ID";	
					}
					
					query += tag.toUpperCase();
					query += ", ";
					query += "ID";
					query += nameElement.trim().toUpperCase();
					query += ",";
					query += nameElement.trim().toUpperCase();
					query += ")";
					
					if(nCount+1 < alltags.size())
						query +=" , ! ; ";
					
					nCount++;
				}
				query+=" ),_)";
			}
			else
			{
				//##query = nameElement.trim()+"(ID";
				if(nameElement.contains("@"))
				{
					nameElement = nameElement.replace("@", "");
					query += fatherElement.trim()+"_attribute_"+nameElement.trim()+"(ID";
				}
				else
				{
					query += nameElement.trim()+"(ID";	
				}
				query += fatherElement.toUpperCase();
				query += ", ";
				query += "ID";
				query += nameElement.trim().toUpperCase();
				query += ",";
				query += nameElement.trim().toUpperCase();
				query += ")";
			}
			
			return query;
		}
			
		
		//Element root = document.getDocumentElement();
		 Node root = getRootElement(document);
		
		query = nameElement.trim()+"(ID";
		if(root.isSameNode(nodeElement))
		{
			query += nameElement.trim().toUpperCase();
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
			query += nameElement.trim().toUpperCase();
			boolean bHasComplexChilds = false;
			
			
			//bHasComplexChilds = isNodeComplexType(nodeElement);
			//####################
			bHasComplexChilds = hasChildNodes(document, typeSchema, nameElement, fatherElement, false);
			/*if(nodeElement.getAttributes().getLength() >0)
			{
				String nameSpace = document.getDocumentElement().getPrefix();
				Node nodeType =  nodeElement.getAttributes().getNamedItem("type");
				String typeElement = "";
				if(nodeType != null)
				{
					typeElement = nodeType.getNodeValue();
				    bHasComplexChilds = isComplexType(nameSpace, typeElement);
				}
					
			}*/
			/*if(nodeElement.getChildNodes().getLength() == 1)
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
			  bHasComplexChilds = true;*/
			
			//if ( nodeElement.getChildNodes().getLength() <= 0 )
			if(!bHasComplexChilds)
			{
				query += ",";
				query += nameElement.trim().toUpperCase();
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
        Node nodeElement = getElementByTagName(document, typeSchema, nameElement,"NOPARENT",false);
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
	
	
	private Pair<String,Boolean> getPrologOperatorFunction(Document document,String strGrandFather,String strFather,QueryElement element,int[] nPositionVet)
	{
		String strPrologFunction = "";
		Boolean bConsiderNamespaces = true;
		StringBuilder sbReturn = new StringBuilder("");
		if(element.hasOperator())
		{
			IExpression expression = element.getExpressionFormula();
			
			strPrologFunction = getPrologOperatorFunction3(document,strGrandFather,strFather,expression,nPositionVet);
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
		    				//getPrologOperatorFunction3(document,strFather,exp,nPositionVet);
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
		    				//getPrologOperatorFunction3(document,strFather,exp,nPositionVet);
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
	
	
	private String getPrologOperatorFunction3(Document document,String strGrandFather,String strFather,IExpression expression,int[] nPositionVet)
	{
		String result = "";
		
		IExpression left = null;
		IExpression right = null;
		String strOperator = "";
		boolean bException = false; 
		
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
    		strOperator = " =< ";
		}
		
		if(expression instanceof OperatorLessThan)
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
	    		
	    		Function leftFunc = (Function)left;	
	    		String strFuncName = leftFunc.getFunctionName();
	    		if((strFuncName.compareToIgnoreCase(Function.FUNCTION_LOCAL_NAME)==0 && leftFunc.arguments().size()<=0) ||
	    				strFuncName.compareToIgnoreCase(Function.FUNCTION_NAME)==0)
	    			bException = true;
	    		
	    		if(strFuncName.compareToIgnoreCase(Function.FUNCTION_BOOLEAN)==0 || 
	    				strFuncName.compareToIgnoreCase(Function.FUNCTION_NOT)==0)
	    			bException = true;
	    		
	    		if(strFuncName.compareToIgnoreCase(Function.FUNCTION_NAMESPACE)==0)
	    				bException = true;
	    		
	    		result = translateFunction(document,left,strGrandFather,strFather,nPositionVet);
	    		bLeftIsFunction = true;	
	    		leftValue  = Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]);
	    		Function function = (Function) left;
	    		
	    		bLeftIsTextFunction = function.isTextFunction();
	    	}
	    	
	    	if(!bLeftIsFunction)
	    		leftValue = left.interpret();
	    	
	    	if(right instanceof Function)
	    	{
	    		if(bLeftIsFunction)
	    			nPositionVet[0]++;
	    		result += ", "+translateFunction(document,right,strGrandFather,strFather,nPositionVet);	    		
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
	    	
	    	if(!bException)
	    		result += ", " +leftValue + strOperator +rightValue;
	    	else
	    		result = translateFunctionExceptions(document, strGrandFather, strFather, left, right, strOperator,nPositionVet);
	    }
		
		return result;
		
	}
	
	private String translateFunctionExceptions(Document document,String strGrandFather,String strFather,IExpression left,IExpression right,String strOperator,int[] nPositionVet)
	{
		String strResult = "";
		
		if(left instanceof Function)
		{
			Function leftFunc = (Function)left;
			String functionName = leftFunc.getFunctionName();		
			if(functionName.compareToIgnoreCase(Function.FUNCTION_LOCAL_NAME)==0 ||
					functionName.compareToIgnoreCase(Function.FUNCTION_NAME)==0 )
			{
				
				boolean bIsLocalName = functionName.compareToIgnoreCase(Function.FUNCTION_LOCAL_NAME)==0;
				ArrayList<String>  completeRuleList = getRuleSchema(document,strFather,true);
				 
				 String strCompleteRule  = "";
				 String strCompareLocalname = right.interpret();
				 
				 if(!bIsLocalName)
					 strCompareLocalname = strCompareLocalname.replace(":", "_");
				 
				 boolean bPrevious = false;
				 for (int i=0; i< completeRuleList.size();i++) 
				 {
					 String rule = completeRuleList.get(i);
					 
					 String [] splitRule = rule.split("\\(");
					 if(splitRule.length >0)
					 {
						 
						 String localName = splitRule[0];
						 if(splitRule[0].contains("_") && bIsLocalName)
						 {
							 String [] splitLocalName = localName.split("\\_"); 
							 if(splitLocalName.length ==2)
								 localName = splitLocalName[1];
						 }
						 
						 if(!(localName.compareToIgnoreCase(strCompareLocalname)==0))
							 continue;
						 
						 if(bPrevious)
							 strCompleteRule+="; ";	 
						 
						 strCompleteRule+=rule;
				    	 bPrevious = true;
					 }
				 }
				 
				 if(bPrevious)
					 strResult =" setof(_,( "+strCompleteRule+ " ),_) ";
			}
			else if(functionName.compareToIgnoreCase(Function.FUNCTION_BOOLEAN)==0)
			{
				ArrayList<IExpression> listArgs = leftFunc.arguments();
				StringBuilder sbReturn = new StringBuilder("");
				String recursiveResult = "";
				String strBooleanCompare = right.interpret();
				strBooleanCompare = strBooleanCompare.replace("(","");
				strBooleanCompare = strBooleanCompare.replace(")","");
				
				if(listArgs.size()>0)
				{
					List<String> functionArgs  = new ArrayList<String>();
					String simpleArg = listArgs.get(0).interpret().trim();
					simpleArg = simpleArg.replace("(", "");
					simpleArg = simpleArg.replace(")", "");
					functionArgs.add(simpleArg);
					
					if(strBooleanCompare.compareToIgnoreCase(Function.FUNCTION_TRUE)==0)
					{
						List<String> finalArgs = obtainFinalFunctionArgs(  functionArgs,document, strFather, 1, sbReturn);
						if (finalArgs.size() > 0)
							strResult = sbReturn.toString();
					}
					else if (strBooleanCompare.compareToIgnoreCase(Function.FUNCTION_FALSE)==0)
					{
						nPositionVet[0]++;
						strResult = "findall( ID"+strFather.toUpperCase()+nPositionVet[0]+", "+strFather.toLowerCase()+"(_,ID"+strFather.toUpperCase()+nPositionVet[0]+"), LISTFALSE"+nPositionVet[0]+"), ";
						nPositionVet[0]++;
						strResult += "findall( ID"+strFather.toUpperCase()+nPositionVet[0]+", ("+strFather.toLowerCase()+"(_,ID"+strFather.toUpperCase()+nPositionVet[0]+"),";
						strResult += simpleArg.toLowerCase()+"( ID"+strFather.toUpperCase()+nPositionVet[0]+",_,_) ), LISTFALSE"+nPositionVet[0]+"), ";
						strResult += " minus(LISTFALSE"+(nPositionVet[0]-1)+",LISTFALSE"+(nPositionVet[0])+",";
						nPositionVet[0]++;
						strResult += " LISTFALSE"+nPositionVet[0]+") , ";
						//nPositionVet[0]++;
						//strResult += "member(ID"+strFather.toUpperCase()+nPositionVet[0]+", ";
						strResult += "member(ID"+strFather.toUpperCase()+", ";
						strResult += " LISTFALSE"+(nPositionVet[0])+") , ";
						//strResult += strFather.toLowerCase()+"(_, ID"+strFather.toUpperCase()+")";
						//findall(IDPERSON,person(_,IDPERSON),LIST), findall(IDPERSON1,(person(_,IDPERSON1),homepage(IDPERSON1,_,_)),LIST1),minus(LIST,LIST1,LIST2).
					}
				}
			
			}
			else if(functionName.compareToIgnoreCase(Function.FUNCTION_NOT)==0)
			{
				ArrayList<IExpression> listArgs = leftFunc.arguments();
				String strBooleanCompare = right.interpret();
				strBooleanCompare = strBooleanCompare.replace("(","");
				strBooleanCompare = strBooleanCompare.replace(")","");
				
				if(listArgs.size()>0)
				{
					boolean bArgIs = true;
					if(strBooleanCompare.compareToIgnoreCase(Function.FUNCTION_TRUE)==0)
					{
						//Arg is false
						bArgIs = false;
					}
					
					bArgIs = !bArgIs;
					
					if(listArgs.get(0) instanceof Function)
					{
						//Function argFunction = (Function)listArgs.get(0);
						String booleanFunctionName = Function.FUNCTION_FALSE;
						if(!bArgIs)
							booleanFunctionName = Function.FUNCTION_TRUE;
						
						Function funcBooleanResult = new Function(booleanFunctionName, new ArrayList<IExpression>());
						
						/*if(argFunction.getFunctionName().compareToIgnoreCase(Function.FUNCTION_BOOLEAN)==0)
						{*/
							strResult+=
									translateFunctionExceptions( document, strGrandFather, strFather,listArgs.get(0),funcBooleanResult, strOperator,nPositionVet);
						/*}
						else if(argFunction.getFunctionName().compareToIgnoreCase(Function.FUNCTION_NOT)==0)
						{
							
						}*/
						
					}
					
				}
			}
			else if(functionName.compareToIgnoreCase(Function.FUNCTION_NAMESPACE)==0)
			{
				OperatorEqual opEqual = new OperatorEqual(left,right);	
				QueryElement element = new QueryElement();
				element.parseElement("["+opEqual.interpret()+"]");
				strResult+= obtainAxisNamespace(document,strFather,element);
			}
		}
		
		
		return strResult;
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
		else if(functionName.compareToIgnoreCase(Function.FUNCTION_LAST)==0)
		{
			
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
	
	
	String translateFunction(Document document,IExpression expression,String strGrandFather, String strTagFather,int[] nPositionVet)
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
				recursiveResult = translateFunction(document,exp,strGrandFather,strTagFather,nPositionVet) +", "+recursiveResult;
				
				functionArgs.add(Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]));
				nPositionVet[0]++;
			}
			else 
			{
				//if(exp.interpret().compareTo("(")!=0 && exp.interpret().compareTo(")")!=0)
				String simpleArg = exp.interpret().trim();
				simpleArg = simpleArg.replace("(", "");
				simpleArg = simpleArg.replace(")", "");
				functionArgs.add(simpleArg);
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
		else if(functionName.compareToIgnoreCase(Function.FUNCTION_LANG)==0)
		{
			if(functionArgs.size() > 0)
			{
				String strTag = functionArgs.get(0);
				sbReturn.append(obtainLangTags(document,strTagFather,strTag));
			}
			
		}
		else if (functionName.compareToIgnoreCase(Function.FUNCTION_NAMESPACE)==0)
		{
			if(functionArgs.size() > 0 )
			{
				String namespaceResult = "!";
				if( !(functionArgs.get(0).compareToIgnoreCase("xml")==0))
				{
					String strTag = functionArgs.get(0);
					QueryElement element = new QueryElement();
					element.parseElement("["+Function.FUNCTION_NAMESPACE+strTag+"]");
					namespaceResult = "("+obtainAxisNamespace(document,strTagFather,element)+", !)";
				}
				sbReturn.append(namespaceResult);
				
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
			
			//String strPositionValue = right.interpret();
			QueryPosition queryElementPosition = new QueryPosition();
			queryElementPosition.setItemFilter(strTagFather);
			queryElementPosition.setSearchValue(strTagFather);
			queryElementPosition.setCompareVariable(strTagFather);
			queryElementPosition.setHasChildren(hasChildNodes(document, "element", queryElementPosition.getItemFilter(),"NOPARENT",false));
			queryElementPosition.setIsRoot(isRoot(document, "element", queryElementPosition.getItemFilter()));	
			
			/*if(strPositionValue.toUpperCase().compareTo("LAST()") ==0 )
			{
				strPrologFunction += queryElementPosition.getPositionFormulaForLastItem(nVariable);
			}
			else
			{
    			queryElementPosition.parseElement(strPositionValue);
    			strPrologFunction += queryElementPosition.getPositionFormula(nPosition);
			}*/
			
		    sbReturn.append(queryElementPosition.getPosition(strGrandFather,nPositionVet[0]));
			
			/*if(nPositionVet.length>0)
				nPositionVet[0]++;*/
		}
		else if(functionName.compareToIgnoreCase(Function.FUNCTION_LAST)==0)
		{
			QueryPosition queryElementPosition = new QueryPosition();
			queryElementPosition.setItemFilter(strTagFather);
			queryElementPosition.setSearchValue(strTagFather);
			queryElementPosition.setCompareVariable(strTagFather);
			queryElementPosition.setHasChildren(hasChildNodes(document, "element", queryElementPosition.getItemFilter(),"NOPARENT",false));
			queryElementPosition.setIsRoot(isRoot(document, "element", queryElementPosition.getItemFilter()));
			
			sbReturn.append(queryElementPosition.getPositionFormulaForLastItem(strGrandFather,nPositionVet[0]));
		}
		else if (functionName.compareToIgnoreCase(Function.FUNCTION_NUMBER)==0
				|| functionName.compareToIgnoreCase(Function.FUNCTION_FLOOR)==0
				|| functionName.compareToIgnoreCase(Function.FUNCTION_CEILING)==0
				|| functionName.compareToIgnoreCase(Function.FUNCTION_ROUND)==0)
		{
			 /*if(functionArgs.size()>0)
			 {
				 String arg = functionArgs.get(0);
				 String strResultValue = Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]);
				 	boolean bArgIsresult = arg.toUpperCase().contains(Function.FUNCTION_RESULT); 
				 
				 if(arg.toUpperCase().compareTo(strTagFather)!=0
 						&& !bArgIsresult)
 				{
				    if(arg.contains("/") && !arg.contains("'"))
				    {
				       String [] vetArgs =  arg.split("/");
				       String strTempFather = strTagFather;
				       String strPreviousRules = "";
				       for(int i=0;i<vetArgs.length;i++)
				       {
				    	   if(vetArgs[i].toUpperCase().compareTo(strTagFather)!=0)
				    	   {
				    		   
				    		   if(i+1 == vetArgs.length)
				    		   {   
				    			  break;  
				    		   }
				    		   else
				    		   {
				    			   strPreviousRules += getQueryPrologFromSchema3(document,"element",vetArgs[i],strTempFather)+", ";
				    			   strTempFather = vetArgs[i];   
				    		   }
				    	   }
				       }
				       
				       sbReturn.append(strPreviousRules);
				    }
 				}
				 
				 // Pass Function Name
			    sbReturn.append(functionName+" ( ");
				sbReturn.append(arg.toUpperCase()+", ");
				sbReturn.append(strResultValue + ") ");
			 }*/
			 
			 List<String> finalArgs = obtainFinalFunctionArgs(functionArgs,document,strTagFather,1,sbReturn);
			 if(finalArgs.size()>0)
			 {
				 String strResultValue = Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]);
				 // Pass Function Name
			    sbReturn.append("my"+functionName+"( ");
				sbReturn.append(finalArgs.get(0).toUpperCase()+", ");
				sbReturn.append(strResultValue + ") ");
			 }
		}
		else if(functionName.compareToIgnoreCase(Function.FUNCTION_DIV)==0)
		{
			if(functionArgs.size()>1)
			{
				 boolean bHasMath = false;
				
				 if(functionArgs.size()>2)
				 {
					 if(functionArgs.contains("-") || functionArgs.contains("+"))
					 {
						 sbReturn.append(parseDivMathExpression(functionArgs,document,strTagFather,nPositionVet));
						 bHasMath = true;
					 }
				 }
				 
				 if(bHasMath)
					 sbReturn.append(", ");
				
				  
				 List<String>  listArgsDiv = new ArrayList<String>();
				 
				 if(bHasMath)
				 {
					 listArgsDiv.add(Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]));
					 for(int nArg =0; nArg<functionArgs.size();nArg++)
					 {
						 if(!(functionArgs.get(nArg).trim().length()<=0))
						 {
							 listArgsDiv.add(functionArgs.get(nArg));
							 break;
						 }	 
					 }
					 
					 nPositionVet[0]++;
				 }
				 else
				 {
				   listArgsDiv.add(functionArgs.get(0));
				   listArgsDiv.add(functionArgs.get(1)); 
				 }
				 
				 
				 /*for(int j=0;j<2;j++)
				 {
					 String arg = listArgsDiv.get(j);
					 
					 	boolean bArgIsresult = arg.toUpperCase().contains(Function.FUNCTION_RESULT); 
					 
					 if(arg.toUpperCase().compareTo(strTagFather)!=0
							&& !bArgIsresult)
					{
					    if(arg.contains("/") && !arg.contains("'"))
					    {
					       String [] vetArgs =  arg.split("/");
					       String strTempFather = strTagFather;
					       String strPreviousRules = "";
					       for(int i=0;i<vetArgs.length;i++)
					       {
					    	   if(vetArgs[i].toUpperCase().compareTo(strTagFather)!=0)
					    	   {
					    		   
					    		   if(i+1 == vetArgs.length)
					    		   {   
					    			   listArgsDiv.set(j, vetArgs[i]);
					    		   }
					    		   else
					    		   {
					    			   strPreviousRules += getQueryPrologFromSchema3(document,"element",vetArgs[i],strTempFather)+", ";
					    			   strTempFather = vetArgs[i];   
					    		   }
					    	   }
					       }
					       
					       sbReturn.append(strPreviousRules);
					    }
					    
					}
				}*/
				 List<String> finalArgs = obtainFinalFunctionArgs(listArgsDiv,document,strTagFather,2,sbReturn);
				 if(finalArgs.size()>1)
				 {
					// Pass Function Name
					String strDivResultVariable = Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]);
					sbReturn.append(functionName+"("+finalArgs.get(0).toUpperCase()+","+finalArgs.get(1).toUpperCase()+", "+strDivResultVariable+") "); 
				 }
			 }
		}
		else if(functionName.compareToIgnoreCase(Function.FUNCTION_SUM)==0
				|| functionName.compareToIgnoreCase(Function.FUNCTION_COUNT)==0) 
		{
			//boolean bIsSum = functionName.compareToIgnoreCase(Function.FUNCTION_SUM)==0;
			 if(functionArgs.size()>0)
			 {
				 String arg = functionArgs.get(0);
				 String strResultValue = Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]);
				 boolean bArgIsresult = arg.toUpperCase().contains(Function.FUNCTION_RESULT); 
				 
				 if(arg.toUpperCase().compareTo(strTagFather)!=0
 						&& !bArgIsresult)
 				{
				    if(arg.contains("/") && !arg.contains("'"))
				    {
				       String [] vetArgs =  arg.split("/");
				       String strTempFather = strTagFather;
				       String strPreviousRules = "";
				       for(int i=0;i<vetArgs.length;i++)
				       {
				    	   if(vetArgs[i].toUpperCase().compareTo(strTagFather)!=0)
				    	   {
				    		   
				    		   boolean bHasComplexChilds = hasChildNodes(document, "element", vetArgs[i], strTempFather, false);
				    		   
				    		   if(i+1 == vetArgs.length)
				    		   {   
				    			  // Pass Function Name
				    			    sbReturn.append(Function.mountMathListFunction(functionName,vetArgs[i], strPreviousRules,strTempFather, strResultValue,bHasComplexChilds));   
				    		   }
				    		   else
				    		   {
				    			   strPreviousRules += getQueryPrologFromSchema3(document,"element",vetArgs[i],strTempFather)+", ";
				    			   strTempFather = vetArgs[i];   
				    		   }
				    	   }
				       }
				    }
				    else
				    {
				    	boolean bHasComplexChilds = hasChildNodes(document, "element", arg, strTagFather, false);
				    	sbReturn.append(Function.mountMathListFunction(functionName,arg, "",strTagFather, strResultValue,bHasComplexChilds));
				    }
					 
 				}
				//else //Mount Function With Result
			 }
			 
		}
		else if(/*functionName.compareToIgnoreCase(Function.FUNCTION_BOOLEAN)==0
				||*/ functionName.compareToIgnoreCase(Function.FUNCTION_NOT)==0)
		{
			List<String> finalArgs = obtainFinalFunctionArgs(functionArgs,document,strTagFather,1,sbReturn);
			if (finalArgs.size() > 0)
			{
				sbReturn.delete(0, sbReturn.length()-1);
				nPositionVet[0]++;
				sbReturn.append( "findall( ID"+strTagFather.toUpperCase()+nPositionVet[0]+", "+strTagFather.toLowerCase()+"(_,ID"+strTagFather.toUpperCase()+nPositionVet[0]+"), LISTFALSE"+nPositionVet[0]+"), ");
				nPositionVet[0]++;
				sbReturn.append("findall( ID"+strTagFather.toUpperCase()+nPositionVet[0]+", ("+strTagFather.toLowerCase()+"(_,ID"+strTagFather.toUpperCase()+nPositionVet[0]+"),");
				sbReturn.append( finalArgs.get(0).toLowerCase()+"( ID"+strTagFather.toUpperCase()+nPositionVet[0]+",_,_) ), LISTFALSE"+nPositionVet[0]+") , ");
				sbReturn.append( " minus(LISTFALSE"+(nPositionVet[0]-1)+",LISTFALSE"+(nPositionVet[0])+",");
				nPositionVet[0]++;
				sbReturn.append( " LISTFALSE"+nPositionVet[0]+") , ");
				//nPositionVet[0]++;
				//strResult += "member(ID"+strFather.toUpperCase()+nPositionVet[0]+", ";
				sbReturn.append( "member(ID"+strTagFather.toUpperCase()+", ");
				sbReturn.append( " LISTFALSE"+(nPositionVet[0])+") , ");	
			}
			
			/*List<String> finalArgs = obtainFinalFunctionArgs(functionArgs,document,strTagFather,1,sbReturn);
			if (finalArgs.size() > 0) 
			{
				String strResultValue = Function.FUNCTION_RESULT+ String.valueOf(nPositionVet[0]);
				sbReturn.append(functionName+"( ");
				sbReturn.append(finalArgs.get(0).toUpperCase()+", ");
				sbReturn.append(strResultValue + ") ");
			}*/
			
		}
		else if(functionName.compareToIgnoreCase(Function.FUNCTION_TRUE)==0
				|| functionName.compareToIgnoreCase(Function.FUNCTION_FALSE)==0)
		{
			nPositionVet[0]++;
			String strResultValue = Function.FUNCTION_RESULT+ String.valueOf(nPositionVet[0]);
			sbReturn.append(strResultValue + " = "+ functionName);
		}
		else if(functionName.compareToIgnoreCase(Function.FUNCTION_STRING)==0)
		{
			/*if (functionArgs.size() > 0) 
			{
				nPositionVet[0]++;
				String strResultValue = Function.FUNCTION_RESULT+ String.valueOf(nPositionVet[0]);
				String arg = functionArgs.get(0);
				
				boolean bArgIsresult = functionArgs.get(0).toUpperCase().contains(Function.FUNCTION_RESULT); 
				if(arg.toUpperCase().compareTo(strTagFather)!=0
						&& !bArgIsresult)
				{
					String ruleItem = getQueryPrologFromSchema3(document,"element",arg,strTagFather);
					if(!ruleItem.isEmpty())
						sbReturn.insert(0, ruleItem+", ");	
				}
				
				sbReturn.append(strResultValue + " = "+ arg.toUpperCase());
			}*/
			
			List<String> finalArgs = obtainFinalFunctionArgs(functionArgs,document,strTagFather,1,sbReturn);
			if (finalArgs.size() > 0) 
			{
				String strResultValue = Function.FUNCTION_RESULT+ String.valueOf(nPositionVet[0]);
				sbReturn.append(strResultValue + " = "+ finalArgs.get(0).toUpperCase());	
			}
			
		}
		else if(functionName.compareToIgnoreCase(Function.FUNCTION_SUBSTRING)==0
				|| functionName.compareToIgnoreCase(Function.FUNCTION_SUBSTRING_AFTER)==0
				|| functionName.compareToIgnoreCase(Function.FUNCTION_SUBSTRING_BEFORE)==0
				|| functionName.replace("-", "").compareToIgnoreCase(Function.FUNCTION_NORMALIZE_SPACE)==0
				|| functionName.replace("-", "").compareToIgnoreCase(Function.FUNCTION_STRING_LENGTH)==0) 
		{
			
			 //ArrayList<IExpression> listArguments = func.arguments();
			 
			 /*if(functionArgs.size()>0)
			 {
				 String strResultValue = Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]);
				  
				 sbReturn.insert(0,functionName+"( ");
				 for(int i=0; i<functionArgs.size();i++)
				 {
					boolean bArgIsresult = functionArgs.get(i).toUpperCase().contains(Function.FUNCTION_RESULT); 
    				String arg = functionArgs.get(i);
    				if(arg.toUpperCase().compareTo(strTagFather)!=0
    						&& !bArgIsresult)
    				{
    					String ruleItem = getQueryPrologFromSchema3(document,"element",arg,strTagFather);
    					if(!ruleItem.isEmpty())
    						sbReturn.insert(0, ruleItem+", ");	
    				}
    				
    				 sbReturn.append(arg.toUpperCase());
		    				 
					 sbReturn.append(", ");
				 }*/
				 
			     List<String> finalArgs = obtainFinalFunctionArgs(functionArgs,document,strTagFather,1,sbReturn);
			     String strResultValue = Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]);
			     sbReturn.append(functionName+"( ");
			     for(int i=0; i<finalArgs.size();i++)
				 {
			    	 String arg = finalArgs.get(i);
			    	 sbReturn.append(arg.toUpperCase());
					 sbReturn.append(", ");
				 }
				 sbReturn.append(strResultValue+") ");
		}
		else if(functionName.compareToIgnoreCase(Function.FUNCTION_CONCAT)==0)
		{
			 if(functionArgs.size()>1)
			 {
				 	
				    List<String> pairArgs = new ArrayList<String>(); 
				    for(int j=0;j<functionArgs.size();j++)
				 	{
				 		String arg = functionArgs.get(j);
						boolean bArgIsresult = arg.toUpperCase().contains(Function.FUNCTION_RESULT); 
						if(arg.toUpperCase().compareTo(strTagFather)!=0
			 						&& !bArgIsresult)
			 			{
							    if(arg.contains("/") && !arg.contains("'"))
							    {
							    	String [] vetArgs =  arg.split("/");
								       String strTempFather = strTagFather;
								       String strPreviousRules = "";
								       for(int i=0;i<vetArgs.length;i++)
								       {
								    	   if(vetArgs[i].toUpperCase().compareTo(strTagFather)!=0)
								    	   {
								    		   
								    		   if(i+1 == vetArgs.length)
								    		   {   
								    			   arg = vetArgs[i]; 
								    			   strPreviousRules += getQueryPrologFromSchema3(document,"element",vetArgs[i],strTempFather);
								    			   break;
								    		   }
								    		   else
								    		   {
								    			   strPreviousRules += getQueryPrologFromSchema3(document,"element",vetArgs[i],strTempFather)+", ";
								    			   strTempFather = vetArgs[i];   
								    		   }
								    	   }
								       }
								       
								       sbReturn.append(strPreviousRules);
							    }  
			 			}
						
						
						if(j == 1)
						{
							nPositionVet[0]++;
							String strResultValue = Function.FUNCTION_RESULT+ String.valueOf(nPositionVet[0]);	
							
							if(!sbReturn.toString().endsWith(", "))
								sbReturn.append(", ");
							
							sbReturn.append("atom_concat( ");
							sbReturn.append(pairArgs.get(0).toUpperCase()+", ");
							//sbReturn.append(pairArgs.get(1).toUpperCase()+", ");
							sbReturn.append(arg.toUpperCase()+", ");
							sbReturn.append(strResultValue + ") ");
							
							pairArgs.clear();
							pairArgs.add(strResultValue);
						}
						//else if(j>2)
						else if(j>1)
						{
							if(!sbReturn.toString().endsWith(", "))
								sbReturn.append(", ");
							
							String strPreviousResultValue = Function.FUNCTION_RESULT+ String.valueOf(nPositionVet[0]);
							sbReturn.append("atom_concat( ");
							sbReturn.append(strPreviousResultValue+", ");
							sbReturn.append(arg.toUpperCase()+", ");
							
							nPositionVet[0]++;
							String strResultValue = Function.FUNCTION_RESULT+ String.valueOf(nPositionVet[0]);
							sbReturn.append(strResultValue + ") ");
							
						}
						else
						{
							pairArgs.add(arg);
						}
						
						if(j+1 < functionArgs.size())
							sbReturn.append(", ");
				 	}
				    
			 }
		}
		else if(functionName.compareToIgnoreCase(Function.FUNCTION_TRANSLATE)==0)
		{
			 /*if(functionArgs.size()>2)
			 {
				 	
				    List<String> finalArgs = new ArrayList<String>(); 
				    for(int j=0;j<functionArgs.size();j++)
				 	{
				 		String arg = functionArgs.get(j);
						boolean bArgIsresult = arg.toUpperCase().contains(Function.FUNCTION_RESULT); 
						if(arg.toUpperCase().compareTo(strTagFather)!=0
			 						&& !bArgIsresult)
			 			{
							    if(arg.contains("/") && !arg.contains("'"))
							    {
							    	String [] vetArgs =  arg.split("/");
								       String strTempFather = strTagFather;
								       String strPreviousRules = "";
								       for(int i=0;i<vetArgs.length;i++)
								       {
								    	   if(vetArgs[i].toUpperCase().compareTo(strTagFather)!=0)
								    	   {
								    		   
								    		   if(i+1 == vetArgs.length)
								    		   {   
								    			   arg = vetArgs[i]; 
								    			   break;
								    		   }
								    		   else
								    		   {
								    			   strPreviousRules += getQueryPrologFromSchema3(document,"element",vetArgs[i],strTempFather)+", ";
								    			   strTempFather = vetArgs[i];   
								    		   }
								    	   }
								       }					    
							    }  
			 			}
						
					  finalArgs.add(arg);
				 	}
				    
				    if(finalArgs.size() > 2)
				    {
				    	String strResultValue = Function.FUNCTION_RESULT+ String.valueOf(nPositionVet[0]);
						sbReturn.append(functionName+"( ");
						sbReturn.append(finalArgs.get(0)+", ");
						sbReturn.append(finalArgs.get(1)+", ");
						sbReturn.append(finalArgs.get(2)+", ");
						sbReturn.append(strResultValue + ") ");
				    }
				    
			 }*/
			List<String> finalArgs = obtainFinalFunctionArgs(functionArgs,document,strTagFather,3,sbReturn);
			if(finalArgs.size() > 2)
		    {
		    	String strResultValue = Function.FUNCTION_RESULT+ String.valueOf(nPositionVet[0]);
				sbReturn.append(functionName+"( ");
				sbReturn.append(finalArgs.get(0).toUpperCase()+", ");
				sbReturn.append(finalArgs.get(1).toUpperCase()+", ");
				sbReturn.append(finalArgs.get(2).toUpperCase()+", ");
				sbReturn.append(strResultValue + ") ");
		    }
		}
		
		sbReturn.insert(0, recursiveResult);
		
		return sbReturn.toString();
	}
	
	
	private List<String> obtainFinalFunctionArgs( List<String> argsList,Document document,String strTagFather, int nNeededArgs,StringBuilder sbReturn)
	{
		 
		 List<String> finalArgs = new ArrayList<String>();
		 if(argsList.size()>=nNeededArgs)
		 {	     
        	    for(int j=0;j<argsList.size();j++)
			 	{
			 		String arg = argsList.get(j);
					boolean bArgIsresult = arg.toUpperCase().contains(Function.FUNCTION_RESULT);
					String strTempFather = strTagFather;
					if(arg.toUpperCase().compareTo(strTagFather)!=0
		 						&& !bArgIsresult)
		 			{
						    if(arg.contains("/") && !arg.contains("'"))
						    {
						    	   String [] vetArgs =  arg.split("/");
							       String strPreviousRules = "";
							       for(int i=0;i<vetArgs.length;i++)
							       {
							    	   if(vetArgs[i].toUpperCase().compareTo(strTagFather)!=0)
							    	   {
							    		   
							    		   if(i+1 == vetArgs.length)
							    		   {   
							    			   arg = vetArgs[i]; 
							    			   break;
							    		   }
							    		   else
							    		   {
							    			   String previousRule = getQueryPrologFromSchema3(document,"element",vetArgs[i],strTempFather);
							    			   if(!previousRule.isEmpty())
							    				   strPreviousRules += previousRule+", ";
							    			   strTempFather = vetArgs[i];   
							    		   }
							    	   }
							       }
							       
							       sbReturn.append(strPreviousRules);
						    }
						    
						    if(!arg.startsWith("'") && !arg.matches("[0-9]") && arg.trim().length() > 0 && !arg.startsWith("\"") )
						    	sbReturn.append(getQueryPrologFromSchema3(document,"element",arg,strTempFather)+", ");
		 			}
					
				  finalArgs.add(arg);
			 	}   
		 }
		 
		 return finalArgs;
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
	
	public boolean hasAttributes(Document document, String typeSchema, String nameElement,String nameParentElement)
	{
        Node nodeElement = getElementByTagName(document, typeSchema, nameElement,nameParentElement,true);
		
		if ( nodeElement == null )
			return false;
		
		if(isNodeComplexType(nodeElement))
		{
			NodeList childNodes = nodeElement.getChildNodes(); 
			for(int i=0; i< childNodes.getLength();i++)
		     {
				 String childNodeName = childNodes.item(i).getNodeName();
				if(childNodeName.compareToIgnoreCase("xs:attribute") != 0)
		    	{
					 return true;
		    	}
		     }
		}
		
		if(nodeElement.getAttributes().getLength() >0)
		{
			String nameSpace = document.getDocumentElement().getPrefix();
			Node nodeType =  nodeElement.getAttributes().getNamedItem("type");
			String typeElement = "";
			if(nodeType != null)
				typeElement = nodeType.getNodeValue();
			
			 ArrayList<Node> complexNode = getComplexNodeByName(document,typeElement);
			 if(complexNode.size()>0)
			 {
				 //if(isComplexType(nameSpace, typeElement))
				 NodeList childNodes = complexNode.get(0).getChildNodes();
				 boolean bHasAttribute = false;
				 for(int i=0; i< childNodes.getLength();i++)
			     {
					 String childNodeName = childNodes.item(i).getNodeName();
					if(childNodeName.compareToIgnoreCase("xs:attribute") == 0)
			    	{
						 return true;
			    	}
			     }
			 }	
		}
		
		return false;
	}
	
	public boolean hasChildNodes(Document document, String typeSchema, String nameElement,String nameParentElement,boolean bConsiderNamespaces)
	{
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement,nameParentElement,bConsiderNamespaces);
		
		if ( nodeElement == null )
			return false;
		
		//if ( nodeElement.getChildNodes().getLength() != 0 )
			//return true;
		
		
		if(isNodeComplexType(nodeElement))
		{
			if(!hasOnlyAttributes(document, typeSchema, nameElement, nameParentElement, bConsiderNamespaces))
				return true;
		}
			//return true;
		
		if(nodeElement.getAttributes().getLength() >0)
		{
			String nameSpace = document.getDocumentElement().getPrefix();
			Node nodeType =  nodeElement.getAttributes().getNamedItem("type");
			String typeElement = "";
			if(nodeType != null)
				typeElement = nodeType.getNodeValue();
			
			 ArrayList<Node> complexNode = getComplexNodeByName(document,typeElement);
			 if(complexNode.size()>0)
			 {
				 //if(isComplexType(nameSpace, typeElement))
				 NodeList childNodes = complexNode.get(0).getChildNodes();
				 boolean bHasOnlyAttribute = true;
				 for(int i=0; i< childNodes.getLength();i++)
			     {
					 String childNodeName = childNodes.item(i).getNodeName();
					if(childNodeName.compareToIgnoreCase("#text")!=0 && childNodeName.compareToIgnoreCase("xs:attribute") != 0)
			    	{
			    		bHasOnlyAttribute = false;
			    		break;
			    	}
			     }
				 
				 if(!bHasOnlyAttribute)
					 return true;
			 }	
		}
		
		
		return false;
	}
	
	
	public boolean hasAllChildrenChoice(Document document, String typeSchema, String nameElement,String nameParentElement,boolean bConsiderNamespaces)
	{
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement,nameParentElement,bConsiderNamespaces);
		
		if ( nodeElement == null )
			return false;
		
		
		if(isNodeComplexType(nodeElement))
		{
			if(!hasOnlyAttributes(document, typeSchema, nameElement, nameParentElement, bConsiderNamespaces))
				return false;
			
			 NodeList childNodes = nodeElement.getChildNodes();
			 boolean bHasAllChildrenChoice = false;
			 for(int i=0; i< childNodes.getLength();i++)
		     {
				 String childNodeName = childNodes.item(i).getNodeName();
				 if(isNodeChoice(childNodes.item(i)))
					 bHasAllChildrenChoice = true;
				 
				 if(!isNodeChoice(childNodes.item(i)) && (childNodeName.compareToIgnoreCase("#text")!=0) 
						 && (childNodeName.compareToIgnoreCase("xs:attribute") != 0) )
					 bHasAllChildrenChoice = false;
		     }
			 
			 return bHasAllChildrenChoice;
		}
			
		
		if(nodeElement.getAttributes().getLength() >0)
		{
			String nameSpace = document.getDocumentElement().getPrefix();
			Node nodeType =  nodeElement.getAttributes().getNamedItem("type");
			String typeElement = "";
			if(nodeType != null)
				typeElement = nodeType.getNodeValue();
			
			 ArrayList<Node> complexNode = getComplexNodeByName(document,typeElement);
			 if(complexNode.size()>0)
			 {
				 
				 NodeList childNodes = complexNode.get(0).getChildNodes();
				 boolean bHasAllChildrenChoice = false;
				 for(int i=0; i< childNodes.getLength();i++)
			     {
					 String childNodeName = childNodes.item(i).getNodeName();
					 
					 if(isNodeChoice(childNodes.item(i)))
						 bHasAllChildrenChoice = true;
					 
					 if(!isNodeChoice(childNodes.item(i)) && (childNodeName.compareToIgnoreCase("#text")!=0) 
							 && (childNodeName.compareToIgnoreCase("xs:attribute") != 0) )
						 bHasAllChildrenChoice = false;
			     }
				 
				 return bHasAllChildrenChoice;
			 }	
		}
		
		
		return false;
		
	}
	
	public boolean isMixed(Document document, String typeSchema, String nameElement,String nameParentElement,boolean bConsiderNamespaces)
	{
        Node nodeElement = getElementByTagName(document, typeSchema, nameElement,nameParentElement,bConsiderNamespaces);
		
		if ( nodeElement == null )
			return false;
		
		if(isNodeComplexType(nodeElement))
		{
			if(nodeElement.hasAttributes())
			{
				Node nodeMixed =  nodeElement.getAttributes().getNamedItem("mixed");
				if(nodeMixed != null)
					if(nodeMixed.getNodeValue().compareToIgnoreCase("true")==0)
				         return true;
			}
		}
		
		
		if(nodeElement.getAttributes().getLength() >0)
		{
			String nameSpace = document.getDocumentElement().getPrefix();
			Node nodeType =  nodeElement.getAttributes().getNamedItem("type");
			String typeElement = "";
			if(nodeType != null)
				typeElement = nodeType.getNodeValue();
			
			 ArrayList<Node> complexNode = getComplexNodeByName(document,typeElement);
			 if(complexNode.size()>0)
			 {
				    if(complexNode.get(0).hasAttributes())
					{
						Node nodeMixed =  complexNode.get(0).getAttributes().getNamedItem("mixed");
						if(nodeMixed != null)
							if(nodeMixed.getNodeValue().compareToIgnoreCase("true")==0)
						         return true;
					}
			 }
		}
			 
		return false;
	}
	
	private boolean hasOnlyAttributes(Document document, String typeSchema, String nameElement,String nameParentElement,boolean bConsiderNamespaces)
	{
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement,nameParentElement,bConsiderNamespaces);
		
		if ( nodeElement == null )
			return false;
		
		if(isNodeComplexType(nodeElement))
		{
			 NodeList childNodes = nodeElement.getChildNodes();
			 boolean bHasOnlyAttribute = true;
			 for(int i=0; i< childNodes.getLength();i++)
		     {
				String childNodeName = childNodes.item(i).getNodeName();
				if(childNodeName.compareToIgnoreCase("#text")!=0 && childNodeName.compareToIgnoreCase("xs:attribute") != 0)
		    	{
		    		bHasOnlyAttribute = false;
		    		break;
		    	}
		     }
			 
			 if(bHasOnlyAttribute)
				 return true;
			 
			 return false;
		}
		
		if(nodeElement.getAttributes().getLength() >0)
		{
			String nameSpace = document.getDocumentElement().getPrefix();
			Node nodeType =  nodeElement.getAttributes().getNamedItem("type");
			String typeElement = "";
			if(nodeType != null)
				typeElement = nodeType.getNodeValue();
			
			 ArrayList<Node> complexNode = getComplexNodeByName(document,typeElement);
			 if(complexNode.size()>0)
			 {
				 //if(isComplexType(nameSpace, typeElement))
				 NodeList childNodes = complexNode.get(0).getChildNodes();
				 boolean bHasOnlyAttribute = true;
				 for(int i=0; i< childNodes.getLength();i++)
			     {
					 String childNodeName = childNodes.item(i).getNodeName();
					if(childNodeName.compareToIgnoreCase("#text")!=0 && childNodeName.compareToIgnoreCase("xs:attribute") != 0)
			    	{
			    		bHasOnlyAttribute = false;
			    		break;
			    	}
			     }
				 
				 if(bHasOnlyAttribute)
					 return true;
			 }	
		}
		
		return false;
	}
	
	private boolean hasOnlyRequiredAttributes(Document document, String typeSchema, String nameElement,String nameParentElement,boolean bConsiderNamespaces)
	{
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement,nameParentElement,bConsiderNamespaces);
		
		if ( nodeElement == null )
			return false;
		
		if(isNodeComplexType(nodeElement))
		{
			 NodeList childNodes = nodeElement.getChildNodes();
			 boolean bHasOnlyRequiredAttributes = true;
			 for(int i=0; i< childNodes.getLength();i++)
		     {
				String childNodeName = childNodes.item(i).getNodeName();
				if(childNodeName.compareToIgnoreCase("xs:attribute") == 0)
		    	{
		    		
					 if(childNodes.item(i).hasAttributes() &&  childNodes.item(i).getAttributes().getNamedItem("required")!= null)
					 {
						 if(childNodes.item(i).getAttributes().getNamedItem("required").getNodeValue().compareToIgnoreCase("true") !=0)
						 {
							 bHasOnlyRequiredAttributes = false;
							 break;
						 }
					 }
					 else
					 {
						 bHasOnlyRequiredAttributes = false;
						 break;
					 }
		    	}
				
		     }
			 
			 return bHasOnlyRequiredAttributes;
		}
		
		if(nodeElement.getAttributes().getLength() >0)
		{
			String nameSpace = document.getDocumentElement().getPrefix();
			Node nodeType =  nodeElement.getAttributes().getNamedItem("type");
			String typeElement = "";
			if(nodeType != null)
				typeElement = nodeType.getNodeValue();
			
			 ArrayList<Node> complexNode = getComplexNodeByName(document,typeElement);
			 if(complexNode.size()>0)
			 {
				 //if(isComplexType(nameSpace, typeElement))
				 NodeList childNodes = complexNode.get(0).getChildNodes();
				 boolean bHasOnlyRequiredAttributes = true;
				 for(int i=0; i< childNodes.getLength();i++)
			     {
					 String childNodeName = childNodes.item(i).getNodeName();
					 if(childNodeName.compareToIgnoreCase("xs:attribute") == 0)
				     {
				    		
							 if(childNodes.item(i).hasAttributes() &&  childNodes.item(i).getAttributes().getNamedItem("use")!= null)
							 {
								 if(childNodes.item(i).getAttributes().getNamedItem("use").getNodeValue().compareToIgnoreCase("required") !=0)
								 {
									 bHasOnlyRequiredAttributes = false;
									 break;
								 }
							 }
							 else
							 {
								 bHasOnlyRequiredAttributes = false;
								 break;
							 }
				    }
			     }
				 
				return bHasOnlyRequiredAttributes;
			 }	
		}
		
		return false;
	}
	public boolean isRoot(Document document, String typeSchema, String nameElement)
	{
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement,"NOPARENT",false);
		
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
		boolean bJoin = false;
		boolean bParentFilter = false;
		boolean bFilter = false;
		String strLastCommonParent = "";
		String strLastCommonGrandParent = "";
		String strLastBkpCommonParent = "";
		String strLastBkpCommonGrandParent = "";
		
		String strFunction = "";
		boolean  bWildCard = false;
		boolean bPrecOrFolw = false;
		Document document = null;
		int nWildCardLevel = 0;
		boolean  bHasUsedWildCard = false;
		String   strLastWildCardItem = "NOLASTWILDCARD";
		int nLastWildCardLevel = 0;
		int nRefParent = 0;
		int nCompareTag = 0;
		ArrayList<String> parentFilterTags = new ArrayList<String>();
		//ArrayList<String> listaTags = new ArrayList<String>();
		ArrayList<Pair<String,Boolean>> pairListTags = new ArrayList<Pair<String,Boolean>>();
		//HashMap<String,Boolean> tagHash = new HashMap<String,Boolean>();
		ArrayList<String> targetNodeNameList = new ArrayList<String>();
		
		for (String name : values)
		{
			document = documentList.get(name);
			//normalizeTreeDocument(document);
			
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
				
				if(element.isParenthesis())
				{
					queryConvert += element.getElement();
					continue;
				}
				
				if(element.isJoin())
				{
					queryConvert = "setof(_,(("+ queryConvert;
					if(queryConvert.endsWith(", "))
						queryConvert = queryConvert.substring(0, queryConvert.length()-2);
					
					queryConvert +=" ) ; ( ";
					bJoin = true;
					strLastCommonParent = "NOPARENT";
					strLastCommonGrandParent = "NOGRANDPARENT";
					continue;
				}
				
				
				if(element.getElement().trim().endsWith(":*"))
				{
					queryConvert += obtainAxisWildCard(document,strLastCommonParent,element);
					continue;
				}
				
				if(element.getElement().trim().contains(Function.FUNCTION_NAMESPACE))
				{
					queryConvert += obtainAxisNamespace(document,strLastCommonParent,element);
					continue;
				}
				
				if(element.getVariable().toLowerCase().contains(Function.FUNCTION_PARENT))
				{
					
					if(element.isFilterpart())
					{
						bParentFilter = true;
						String[] filterParentArray = element.getVariable().split(Function.FUNCTION_PARENT);
						if(filterParentArray.length > 1)
							parentFilterTags.add(filterParentArray[1]);
					}
					else
					{
						 queryConvert +=getQueryPrologFromSchema3(document,"element",element.getVariable(),"NOPARENT");
						 strLastCommonGrandParent = "NOGRANDPARENT";
						 strLastCommonParent = element.getVariable();
					}
					
					continue;
				}
				
				if(element.getVariable().toLowerCase().contains("ancestor::"))
				{
					String[] ancestorArray = element.getVariable().split("ancestor::");
					if(ancestorArray.length > 1)
					{
						ArrayList<String> ancestorRules =  getAncestorRule(document,strLastCommonParent,ancestorArray[1],new ArrayList<String>());
						for(int j=0;i<ancestorRules.size();j++)
						{
							
						}
						
					}
					
					
				}
				
				//##### WildCard Test
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
						 /*if(strLastCommonParent.compareToIgnoreCase("NOPARENT")!=0)
						 {
							 queryConvert +=getWildCardQuery(document,strLastCommonParent,nWildCardLevel);
							 //nWildCardLevel =0;
						 }
						 else
						 {
							 
							 
							 ArrayList<String>  completeRuleList = getRuleSchema(document,strLastCommonParent,true);
							 String strCompleteRule  = "";
							 if(completeRuleList.size()>1)
							 {
								 strCompleteRule= " setof(_,( ";
							 }
							 
							 boolean bPrevious = false;
							 
							 for (int j=0; j< completeRuleList.size();j++) 
							 {
								  

								 String rule= completeRuleList.get(j);
								 if(element.getVariable().contains("@"))
								 {
									 String elementName = element.getVariable().replace("@", "");
									 if(rule.contains("_attribute_"+elementName.trim()))
									 {
									     String [] splitRule = rule.split("_attribute_"+elementName.trim());
									     if(splitRule.length >0)
									     {
									    	 if(bPrevious)
												 strCompleteRule+="; ";	 
									    	 
									    	 strCompleteRule += getQueryPrologFromSchema3(document,"element",splitRule[0],"_");
									    	 String  currentElementRule =getQueryPrologFromSchema3(document,"element",element.getVariable(),splitRule[0]);
									    	 strWildCardItem = element.getVariable();
									    	 strCompleteRule +=" , "+currentElementRule;
									    	 bPrevious = true;
									     }
										 
									 } 
								 }
								 else
								 {
									 String [] splitRule = rule.split("(");
									 if(splitRule.length >0)
									 {
										 if(bPrevious)
											 strCompleteRule+="; ";	 
										 
										 strCompleteRule+=rule; 
										 String  currentElementRule =getQueryPrologFromSchema3(document,"element",element.getElement(),splitRule[0]);
										 strWildCardItem = element.getElement();
								    	 strCompleteRule +=" , "+currentElementRule;
								    	 bPrevious = true;
									 }
								 }
								
							 }
							 
							 if(completeRuleList.size()>1)
								 strCompleteRule +=" ),_) ";
							 
							 queryConvert += strCompleteRule;
						 }*/
						 
						 String strAfterWildCardFunction = "";
						 boolean bHasOnlyFunction = false;
						 if(element.hasFunction())
						 {
							int[] nPositionVet = {nSearch};
							if(strLastCommonParent.compareToIgnoreCase("NOPARENT")==0)
								bHasOnlyFunction = true;
							if(element.hasOperator() )
							{
								Pair<String,Boolean> pair = getPrologOperatorFunction(document,strLastCommonGrandParent,strLastCommonParent,element,nPositionVet);
								strAfterWildCardFunction = pair.getKey();
								/*else
									queryConvert += ", "+pair.getKey();*/	
							}
							else
							{
								strAfterWildCardFunction = 	translateFunction(document,element.getExpressionFormula(), strLastCommonGrandParent, strLastCommonParent, nPositionVet);
							}
						}
						 
						 
						 //if((strLastCommonParent.compareToIgnoreCase("NOPARENT")!=0))
						// {
							 if(element.getVariable().contains("@") && !element.getVariable().isEmpty() )
								 strLastWildCardItem = element.getVariable();
							 else if(!element.getElement().isEmpty())
								 strLastWildCardItem = element.getElement(); 
						 //}
						 
						 if(bHasOnlyFunction)
							 queryConvert = strAfterWildCardFunction;
						 else
						 {
							 queryConvert+= getWildCardRules(document,element,strLastCommonParent,nWildCardLevel,nCompareTag);
							 queryConvert += ", "+strAfterWildCardFunction;
						 }
						 bWildCard = true;
						 nLastWildCardLevel = nWildCardLevel;
						 nWildCardLevel = 0;
						 bHasUsedWildCard = true;
						 
					 }
					 else if(nRefParent >0)
					 {
						 queryConvert +=getRulesBottomUp(document,strLastCommonParent,nRefParent);
						 nRefParent =0; 
					 }
					 
					 if(bWildCard)
					 {
						 if(!element.getElement().isEmpty())
						 {
							 strLastCommonGrandParent = strLastCommonParent; 
							 strLastCommonParent = element.getElement();
						 }
						 
						 queryConvert +=", ";
						 bWildCard = false;
						 continue;
					 }
					 
					 queryConvert +=", ";
					 ///
					/* queryConvert +=", "+getQueryPrologFromSchema3(document,"element",element.getElement(),strLastCommonParent);
					 strLastCommonGrandParent = strLastCommonParent;
					 strLastCommonParent = element.getElement();
					 
					 pairListTags.add(new Pair<String, Boolean>(strLastCommonParent,true));*/
				 }
				
				
				if(!element.isFilterpart())
				{
					if(bFilter)
					{
						strLastCommonParent = strLastBkpCommonParent;
						strLastCommonGrandParent = strLastBkpCommonGrandParent;
					}
					
					 bFilter = false; 
					 //queryConvert +=getQueryPrologFromSchema3(document,"*",element.getElement(),strLastCommonFather);
					 
					 //##### WildCard Test
					 /*if(element.getElement().trim().compareTo("*")==0)
					 {
						 nWildCardLevel++;
						 continue;
					 }
					 
					 if(element.getElement().trim().compareTo("..")==0)
					 {
						 nRefParent++;
						 continue;
					 }*/
					 
					 if(element.getElement().toLowerCase().contains("preceding::") || element.getElement().toLowerCase().contains("following::")
							 || element.getElement().toLowerCase().contains("preceding-sibling::") || element.getElement().toLowerCase().contains("following-sibling"))
					 {
						 
						 int [] vetNCompareTag = {nCompareTag};
						 queryConvert+= obtainPrecedinOrFollowingRules(document, queryConvert ,element, strLastCommonParent,strLastCommonGrandParent
									,vetNCompareTag,bHasUsedWildCard,strLastWildCardItem, nLastWildCardLevel );
									
						 nCompareTag  = vetNCompareTag[0];			
						 bPrecOrFolw = true;
					 }
					 
					 
					 /*if(element.getElement().toLowerCase().contains("preceding::"))
					 {
						 String[] filterSiblingArray = element.getVariable().split("preceding::");
						 if(filterSiblingArray.length > 1)
						 {
							 nCompareTag++;
							 String strFilterSibling = filterSiblingArray[1];
							 String commonParent = strLastCommonParent;
							 if(commonParent.trim().equalsIgnoreCase(strFilterSibling))
									 commonParent = strLastCommonGrandParent;	 
								
							 String tempQuery = getQueryPrologFromSchema3(document,"element",strFilterSibling,commonParent);
							 tempQuery = tempQuery.replace(strFilterSibling.toUpperCase(), strFilterSibling.toUpperCase()+nCompareTag);
							 tempQuery = tempQuery.replace(commonParent.toUpperCase(), commonParent.toUpperCase()+nCompareTag);
							 
							 queryConvert+=tempQuery;
							 queryConvert +=", ID"+strFilterSibling.toUpperCase() +" > ID"+strFilterSibling.toUpperCase()+nCompareTag;
							 
							 bPrecOrFolw = true;
						 }
					 }
					 else if(element.getElement().toLowerCase().contains("following::"))
					 {
						 String[] filterSiblingArray = element.getVariable().split("following::");
						 if(filterSiblingArray.length > 1)
						 {
							 nCompareTag++;
							 String strFilterSibling = filterSiblingArray[1];
							 String commonParent = strLastCommonParent;
							 if(commonParent.trim().equalsIgnoreCase(strFilterSibling))
								commonParent = strLastCommonGrandParent;
							 
							 String tempQuery = getQueryPrologFromSchema3(document,"element",strFilterSibling,commonParent);
							 tempQuery = tempQuery.replace(strFilterSibling.toUpperCase(), strFilterSibling.toUpperCase()+nCompareTag);
							 tempQuery = tempQuery.replace(commonParent.toUpperCase(), commonParent.toUpperCase()+nCompareTag);
							 
							 queryConvert+=tempQuery;
							 queryConvert +=", ID"+strFilterSibling.toUpperCase() +" < ID"+strFilterSibling.toUpperCase()+nCompareTag;
							 
							 bPrecOrFolw = true;
						 }
					 }
					 else if(element.getElement().toLowerCase().contains("preceding-sibling::"))
					 {
							
							String[] filterSiblingArray = element.getVariable().split("preceding-sibling::");
							if(filterSiblingArray.length > 1)
							{
								nCompareTag++;
								String strFilterSibling = filterSiblingArray[1];
								String commonParent = strLastCommonParent;
								if(commonParent.trim().equalsIgnoreCase(strFilterSibling))
									commonParent = strLastCommonGrandParent;
								
								String tempQuery = getQueryPrologFromSchema3(document,"element",strFilterSibling,commonParent);
								tempQuery = tempQuery.replace(strFilterSibling.toUpperCase(), strFilterSibling.toUpperCase()+nCompareTag);
								
								queryConvert = " findall(ID"+strFilterSibling.toUpperCase()+", ("+queryConvert;
								int nComma = queryConvert.lastIndexOf(", ");
								if(nComma != -1)
									queryConvert = queryConvert.substring(0, nComma);
								queryConvert+=") , PRECEDINDLIST), preceding(PRECEDINDLIST,PRECEDINDFINALLIST), member(ID"+strFilterSibling.toUpperCase()+nCompareTag+", PRECEDINDFINALLIST)";
								queryConvert+=" ,"+tempQuery;
								nCompareTag++;
								tempQuery = getQueryPrologFromSchema3(document,"element",strFilterSibling,commonParent);
								tempQuery = tempQuery.replace(strFilterSibling.toUpperCase(), strFilterSibling.toUpperCase()+nCompareTag);
								queryConvert+=" ,"+tempQuery;
								queryConvert +=", ID"+strFilterSibling.toUpperCase()+(nCompareTag-1) +" < ID"+strFilterSibling.toUpperCase()+nCompareTag;
								
								
								//##queryConvert += tempQuery;
								//##queryConvert +=", ID"+strFilterSibling.toUpperCase()+nCompareTag +" < ID"+strFilterSibling.toUpperCase(); 
								//bSibling = true;
							}
					 }
					 else if(element.getElement().toLowerCase().contains("following-sibling::"))
					 {
							
							String[] filterSiblingArray = element.getVariable().split("following-sibling::");
							if(filterSiblingArray.length > 1)
							{
								//queryConvert +=
								nCompareTag++;
								String strFilterSibling = filterSiblingArray[1];
								String commonParent = strLastCommonParent;
								if(commonParent.trim().equalsIgnoreCase(strFilterSibling))
									commonParent = strLastCommonGrandParent;
								String tempQuery = getQueryPrologFromSchema3(document,"element",strFilterSibling,commonParent);
								tempQuery = tempQuery.replace(strFilterSibling.toUpperCase(), strFilterSibling.toUpperCase()+nCompareTag);
								
								queryConvert = " findall(ID"+strFilterSibling.toUpperCase()+", ("+queryConvert;
								int nComma = queryConvert.lastIndexOf(", ");
								if(nComma != -1)
									queryConvert = queryConvert.substring(0, nComma);
								queryConvert+=") , FOLLOWINGLIST), following(FOLLOWINGLIST,FOLLOWINGLISTFINALLIST), member(ID"+strFilterSibling.toUpperCase()+nCompareTag+", FOLLOWINGLISTFINALLIST)";
								queryConvert+=" ,"+tempQuery;
								nCompareTag++;
								tempQuery = getQueryPrologFromSchema3(document,"element",strFilterSibling,commonParent);
								tempQuery = tempQuery.replace(strFilterSibling.toUpperCase(), strFilterSibling.toUpperCase()+nCompareTag);
								queryConvert+=" ,"+tempQuery;
								queryConvert +=", ID"+strFilterSibling.toUpperCase()+(nCompareTag-1) +" > ID"+strFilterSibling.toUpperCase()+nCompareTag;
								
								//##queryConvert += tempQuery;
								//###queryConvert +=", ID"+strFilterSibling.toUpperCase()+nCompareTag +" > ID"+strFilterSibling.toUpperCase(); 
								//bSibling = true;
							}
					 }*/
					 else
					 {
						 queryConvert +=getQueryPrologFromSchema3(document,"element",element.getElement(),strLastCommonParent);
						 strLastCommonGrandParent = strLastCommonParent;
						 strLastCommonParent = element.getElement();
						 pairListTags.add(new Pair<String, Boolean>(strLastCommonParent,true));
					 }
					 
					/* if(nWildCardLevel>0 || nRefParent>0)
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
					 }*/
					 
				}
				else
				{
					
					if(!bFilter)
					{
						strLastBkpCommonParent = strLastCommonParent;
						strLastBkpCommonGrandParent = strLastCommonGrandParent; 
					}
					
					bFilter = true;
					if(element.getFormula().isEmpty())
					{
						String strLastFilterFather ="";
						
						if(element.getElement().toLowerCase().contains("preceding::") || element.getElement().toLowerCase().contains("following::")
								 || element.getElement().toLowerCase().contains("preceding-sibling::") || element.getElement().toLowerCase().contains("following-sibling"))
						 {
							 
							String strSplit = "preceding-sibling::";
							if(element.getElement().toLowerCase().contains("following-sibling::"))
								strSplit ="following-sibling::";
							else if (element.getElement().toLowerCase().contains("preceding::"))
								strSplit ="preceding::";
							else if (element.getElement().toLowerCase().contains("following::"))
								strSplit ="following::";
						 
							String[] filterSiblingArray = element.getVariable().split(strSplit);
							if(filterSiblingArray.length > 1)
								strLastFilterFather = filterSiblingArray[0];
							
							int [] vetNCompareTag = {nCompareTag};
							 queryConvert+= obtainPrecedinOrFollowingRules(document, queryConvert ,element, strLastCommonParent,strLastCommonGrandParent
										,vetNCompareTag,bHasUsedWildCard,strLastWildCardItem, nLastWildCardLevel );
										
							 nCompareTag  = vetNCompareTag[0];			
							 bPrecOrFolw = true;
						 }
						
						//bPrecOrFolw = false;
						/*if(element.getElement().toLowerCase().contains("following-sibling::"))
						{
							
							String[] filterSiblingArray = element.getVariable().split("following-sibling::");
							if(filterSiblingArray.length > 1)
							{
								//queryConvert +=
								nCompareTag++;
								strLastFilterFather = filterSiblingArray[1];
								String tempQuery = getQueryPrologFromSchema3(document,"element",strLastFilterFather,strLastCommonParent);
								tempQuery = tempQuery.replace(strLastFilterFather.toUpperCase(), strLastFilterFather.toUpperCase()+nCompareTag);
								
								queryConvert = " findall(ID"+strLastFilterFather.toUpperCase()+", ("+queryConvert;
								int nComma = queryConvert.lastIndexOf(", ");
								if(nComma != -1)
									queryConvert = queryConvert.substring(0, nComma);
								queryConvert+=") , FOLLOWINGLIST), following(FOLLOWINGLIST,FOLLOWINGLISTFINALLIST), member(ID"+strLastFilterFather.toUpperCase()+nCompareTag+", FOLLOWINGLISTFINALLIST)";
								queryConvert+=" ,"+tempQuery;
								nCompareTag++;
								tempQuery = getQueryPrologFromSchema3(document,"element",strLastFilterFather,strLastCommonParent);
								tempQuery = tempQuery.replace(strLastFilterFather.toUpperCase(), strLastFilterFather.toUpperCase()+nCompareTag);
								queryConvert+=" ,"+tempQuery;
								queryConvert +=", ID"+strLastFilterFather.toUpperCase()+(nCompareTag-1) +" > ID"+strLastFilterFather.toUpperCase()+nCompareTag;
								
								
								//##queryConvert += tempQuery;
								//##queryConvert +=", ID"+strLastFilterFather.toUpperCase()+nCompareTag +" > ID"+strLastFilterFather.toUpperCase(); 
								bPrecOrFolw = true;
							}
						}
						else  if(element.getElement().toLowerCase().contains("preceding-sibling::"))
					    {
							
							String[] filterSiblingArray = element.getVariable().split("preceding-sibling::");
							if(filterSiblingArray.length > 1)
							{
								nCompareTag++;
								strLastFilterFather = filterSiblingArray[1];
								
								String tempQuery = getQueryPrologFromSchema3(document,"element",strLastFilterFather,strLastCommonParent);
								tempQuery = tempQuery.replace(strLastFilterFather.toUpperCase(), strLastFilterFather.toUpperCase()+nCompareTag);
								
								
								queryConvert = " findall(ID"+strLastFilterFather.toUpperCase()+", ("+queryConvert;
								int nComma = queryConvert.lastIndexOf(", ");
								if(nComma != -1)
									queryConvert = queryConvert.substring(0, nComma);
								queryConvert+=") , PRECEDINDLIST), preceding(PRECEDINDLIST,PRECEDINDFINALLIST), member(ID"+strLastFilterFather.toUpperCase()+nCompareTag+", PRECEDINDFINALLIST)";
								queryConvert+=" ,"+tempQuery;
								nCompareTag++;
								tempQuery = getQueryPrologFromSchema3(document,"element",strLastFilterFather,strLastCommonParent);
								tempQuery = tempQuery.replace(strLastFilterFather.toUpperCase(), strLastFilterFather.toUpperCase()+nCompareTag);
								queryConvert+=" ,"+tempQuery;
								queryConvert +=", ID"+strLastFilterFather.toUpperCase()+(nCompareTag-1) +" < ID"+strLastFilterFather.toUpperCase()+nCompareTag;
								
								
								
								//##queryConvert += tempQuery;
								//##queryConvert +=", ID"+strLastFilterFather.toUpperCase()+nCompareTag +" < ID"+strLastFilterFather.toUpperCase(); 
								bPrecOrFolw = true;
							}
					    }*/
						else
						{
							//queryConvert +=getQueryPrologFromSchema3(document,"*",element.getElement(),strLastCommonFather);
							String tempQuery = getQueryPrologFromSchema3(document,"element",element.getElement(),strLastCommonParent);
							if(bPrecOrFolw)
							{
								tempQuery = tempQuery.replace(strLastCommonParent.toUpperCase(), strLastCommonParent.toUpperCase()+nCompareTag);
								tempQuery = tempQuery.replace(element.getElement().toUpperCase(), element.getElement().toUpperCase()+nCompareTag);
							}
							queryConvert += tempQuery;
							strLastFilterFather = element.getElement();
						}
						
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
								if(bPrecOrFolw)
								{
									String strSibling = elementFilter.getElement();
									
									String tempQuery = getQueryPrologFromSchema3(document,"element",strSibling,strLastFilterFather);
									tempQuery = tempQuery.replace(strSibling.toUpperCase(), strSibling.toUpperCase()+nCompareTag);
									tempQuery = tempQuery.replace(strLastFilterFather.toUpperCase(), strLastFilterFather.toUpperCase()+nCompareTag);
									queryConvert +=tempQuery;
									//strLastFilterFather = strSibling+nCompareTag;
									strLastFilterFather = strSibling;
								}
								else
								{
									queryConvert +=getQueryPrologFromSchema3(document,"element",elementFilter.getElement(),strLastFilterFather);
									strLastFilterFather = elementFilter.getElement();
								}
								
								
							}
							else
							{
								if(elementFilter.hasOperator())
								{
									queryConvert += elementFilter.getExperimentalFormula(strLastFilterFather,nCompareTag);
								}
								// Final do Filtro
								else if(elementFilter instanceof  QueryPosition)
								{
									QueryPosition queryPos = (QueryPosition) elementFilter;
									//queryPos.setHasChildren(hasChildNodes(document, "*", queryPos.getItemFilter()));
									queryPos.setHasChildren(hasChildNodes(document, "element", queryPos.getItemFilter(),strLastCommonParent,false));
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
									queryConvert += elementFilter.getExperimentalFormula(strLastFilterFather,0);
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
							queryPos.setHasChildren(hasChildNodes(document, "element", queryPos.getItemFilter(),strLastCommonParent,false));
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
								//strFunction = getPrologFunction(document,strLastCommonParent,element);
								int[] nPositionVet = {nSearch};
								strFunction = translateFunction(document,element.getExpressionFormula(),strLastCommonGrandParent, strLastCommonParent,nPositionVet);
								nPositionVet[0]++;
								nSearch = nPositionVet[0];
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

										Pair<String,Boolean> pair = getPrologOperatorFunction(document,strLastCommonGrandParent,strLastCommonParent,element,nPositionVet);

										strFunction = pair.getKey();
										ArrayList<String> tagOperatorList = getPrologOperatorTags(element,document);
										
										for (String string : tagOperatorList) 
										{
											pairListTags.add(new Pair<String, Boolean>(string, pair.getValue()));	
										}
										//listaTags.addAll(tagOperatorList);
										nPositionVet[0]++;
										nSearch = nPositionVet[0];
									}
									else
										strFunction = element.getExperimentalFormula(strLastCommonParent,0);
								}
								else
								{
									//queryConvert +=getQueryPrologFromSchema3(document,"element",element.getElement(),strLastCommonParent);
								    //queryConvert += element.getExperimentalFormula(strLastCommonParent);
									String expFormula  = element.getExperimentalFormula(strLastCommonParent,0);
									if(expFormula.compareToIgnoreCase(element.getVariable())==0)
										queryConvert +=getQueryPrologFromSchema3(document,"element",element.getVariable(),strLastCommonParent);
									else
										queryConvert +=expFormula;
								}
									
								
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
						 if(!queryConvert.trim().endsWith(",") || !queryConvert.trim().endsWith("),"))
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
		
		if(bParentFilter)
		{
			ArrayList<String > parentTags = getTagParents(document,strLastCommonParent,1);
			
			for(int k=0; k< parentTags.size();k++)
			{
				for(int j=0;j<parentFilterTags.size();j++)
				{
					if(parentTags.get(k).toLowerCase().compareTo(parentFilterTags.get(j)) == 0)
						parentTags.remove(k);
				}
			}
			
			
			
			queryConvert = invalidateTags(parentTags)+ queryConvert;
			
			
			bParentFilter = false;
		}
		
		
		
		//String element = getElement(query);		
		 if(bOrFilter || bJoin)
	     {
	    	if(bJoin)
	    		queryConvert +=" ) ";
	    	
			queryConvert +=" ),_)";
	    	bOrFilter = false;
	     }
		 
		 boolean bInsertAllRulesFromTag = false;
		 
		 if(nWildCardLevel>0 || nRefParent >0)
		 {
			 if(nWildCardLevel >0 
					 && ! queryConvert.isEmpty()) //WildCard With parents
			 {
				 if(strLastCommonParent != "NOPARENT")
					 queryConvert += getWildCardQuery(document,strLastCommonParent,nWildCardLevel,nCompareTag);
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
			 if(strLastCommonParent.compareToIgnoreCase("NOPARENT")!= 0)
				 bInsertAllRulesFromTag = true;
		 }
		 
		 if(!strFunction.isEmpty())
		 {
			 if(!queryConvert.replace(".", "").trim().isEmpty())
				 queryConvert += " , "+strFunction;
			 /*else
				 queryConvert =  strFunction + " .";*/
		 }
			 
		 
		 if(bInsertAllRulesFromTag)
		 {
			 HashMap<String,Pair<Integer,Integer>> recursionMap = new HashMap<String,Pair<Integer,Integer>>(); 
			 int nRecursionLevel = 0;
			 String strCompleteRule = insertAllRulesFromTag7(document,strLastCommonGrandParent,strLastCommonParent,nCompareTag,recursionMap,nRecursionLevel);
			 if(strLastCommonGrandParent.compareToIgnoreCase("NOPARENT")==0)
			 {
				 queryConvert = "";
				 /*if(strCompleteRule.startsWith(",  "))
				 {
					 strCompleteRule = strCompleteRule.substring(strCompleteRule.indexOf(",  "), strCompleteRule.length());
				 }*/
			 }
			 
			 //String strCompleteRule = insertAllRulesFromTag5(document,strLastCommonGrandParent,strLastCommonParent,nCompareTag);
			 /*if(strCompleteRule.startsWith("; "))
			 {
				 strCompleteRule  = strCompleteRule.substring(strCompleteRule.indexOf("; ")+1,strCompleteRule.length()-1);
			 }*/
			 
	
			 /*ArrayList<String>  completeRuleList = getRuleSchema(document,strLastCommonParent,true);
			 queryConvert+=" .";
			 String strCompleteRule = "";
			 boolean bMultRules = false;
			 
			 boolean bHasChildren = hasChildNodes(document, "element", strLastCommonParent,strLastCommonGrandParent,false);
			 
			 if(completeRuleList.size()>0)
			 {
				 if(completeRuleList.size()>1)
				 {
					 strCompleteRule= " setof(_,( ";
					 bMultRules= true;
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
					 String strJoin = ",";
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
					 
					 if(bMultRules)
						 strCompleteRule+=strJoin+ addRule;
					 else
						 strCompleteRule+=addRule;
					 bMultRules= true;
				 }
			 }
			 
			 if(bMultRules)
				 strCompleteRule +=" ),_) ";*/
			 
			 queryConvert = queryConvert.replace( ", ." , " .");
			 
			 //if(bMultRules && !strCompleteRule.isEmpty())
			 if(!strCompleteRule.isEmpty())
			 {
				 if(!queryConvert.isEmpty())
				 {
					 if(queryConvert.endsWith(" ."))
						 queryConvert = queryConvert.replace(" .", ", "+strCompleteRule+".");
					 else
						 queryConvert += ", "+strCompleteRule;
				 }
				 else
					 queryConvert = strCompleteRule;
			 }
			 
			 queryConvert = queryConvert.replace( " ." , "");
		 }
		 
		 
		 queryConvert = queryConvert.replace(", ,", ",");
		 queryConvert = queryConvert.replace(",  ,", ",");
		 
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
					 Node nodeLastElement = getElementByTagName(document, "element", lastTag,"IDNOPARENT",pair.getValue());
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
					 Node nodeLastElement = getElementByTagName(document, "element", lastTag,"IDNOPARENT",pair.getValue());
					 
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
				  
				 Node nodeElement = getElementByTagName(document, "element", pair.getKey(),"IDNOPARENT",pair.getValue());
				 
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
		 
		 finalQuery = finalQuery.trim().replace(", .","");
		 finalQuery = finalQuery.trim().replace(",.",""); 
		 
		 if(!finalQuery.trim().endsWith("."))
			 finalQuery += ". ";
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
	
	private String insertAllRulesFromTag(Document document, String strGrandParent, String strParent,int nVariableNumber)
	{
		 String strAllRules = "";
		 ArrayList<String>  completeRuleList = getRuleSchema(document,strParent,true);
		 //queryConvert+=" .";
		 String strCompleteRule = "";
		 boolean bMultRules = false;
		 
		 boolean bHasChildren = hasChildNodes(document, "element", strParent,strGrandParent,true);
		 ArrayList<String> tagchilds = new ArrayList<String>();
		 if(bHasChildren)
		 {
			 Node nodeLastElement = getElementByTagName(document, "element", strParent,"IDNOPARENT",true); 
		 	 tagchilds = getChildsNodeNames( document, nodeLastElement);
		 }
		 
		 boolean bRuleAdded = false;
		 if(completeRuleList.size()>0)
		 {
			 if(completeRuleList.size()>1)
			 {
				 strCompleteRule= " setof(_,( ";
				 bMultRules= true;
			 }
			 
			 if(tagchilds.size()>0)
			 {
				 String baseRule = strParent.replace(":", "_").toLowerCase()+"(";
				 baseRule+="ID"+strGrandParent.toUpperCase()+", ";
				 baseRule+="ID"+strParent.replace(":", "_").toUpperCase()+") ";
				 strCompleteRule+= baseRule + ", ";
			 }
			 
			 String addRule = "";
			 if(bHasChildren)
			 {
				 RuleStringParser stringParser = new RuleStringParser();
				 if(stringParser.getRuleParametersNumber(completeRuleList.get(0)) >2)
				 {
					 String strToReplace = strGrandParent;
					 if(completeRuleList.get(0).contains("_attribute_"))
						 strToReplace = strParent;
						 
					 addRule = stringParser.replaceParentIDRule(completeRuleList.get(0),strToReplace);
				 }
			 }
			 else
			 {
				 addRule= completeRuleList.get(0);	 
			 }
			 
			 
			 /*if(!strAllRules.contains(addRule.trim()))
			 {
				 strCompleteRule+= addRule;
				 //bMultRules= true;
			 }*/
			 if(!addRule.isEmpty())
			 {
				 strCompleteRule+= addRule;
				 bRuleAdded = true;
			 }
			 
		 }
		 
		 for(int i=1;i<completeRuleList.size();i++)
		 {
			 
			 String addRule = "";
			 if(bHasChildren)
			 {
				 RuleStringParser stringParser = new RuleStringParser();
				 
				 if(stringParser.getRuleParametersNumber(completeRuleList.get(i)) >2)
				 {
					 String strToReplace = strGrandParent;
					 if(completeRuleList.get(0).contains("_attribute_"))
						 strToReplace = strParent;
						 
					 addRule = stringParser.replaceParentIDRule(completeRuleList.get(i),strToReplace);
				 }
			 }
			 else
			 {
				 addRule =completeRuleList.get(i);
			 }
			 
			 if(!addRule.isEmpty() /*&& !strAllRules.contains(addRule.trim())*/)
			 {
				 String strJoin = ",";
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
					 
					 strJoin = "; ";
				 }
				 
				 if(bMultRules && bRuleAdded)
					 strCompleteRule+=strJoin+ addRule;
				 else
					 strCompleteRule+=addRule;
				 
				 bMultRules= true;
				 if(!addRule.isEmpty())
					 bRuleAdded = true;
			 }
		 }
		 
		 if(bMultRules)
			 strCompleteRule +=" ),_) ";
		 
		 if(nVariableNumber > 0 )
			 strCompleteRule = strCompleteRule.replace(strParent.toUpperCase(), strParent.toUpperCase()+nVariableNumber);
		 
		 String childRules = "";
		 for(int j=0; j< tagchilds.size();j++)
		 {
			 boolean bChildHasChildren = hasChildNodes(document, "element", tagchilds.get(j),strParent,true);
			 boolean bChildHasOnlyAttributes = hasOnlyAttributes(document, "element", tagchilds.get(j),strParent,true);
			 
			 String strAnd = "";
			 if(j>0 && !childRules.isEmpty())
				 strAnd = "; ";
			 
			 if(bChildHasChildren || bChildHasOnlyAttributes)
			 {
				 String childRule = insertAllRulesFromTag(document, strParent, tagchilds.get(j),nVariableNumber);
				 if(!childRule.isEmpty())
					 childRules+=strAnd+ childRule;
			 }
			 else
			 {
				 childRules += strAnd+tagchilds.get(j).toLowerCase()+"(ID"+strParent.toUpperCase()+",ID"+tagchilds.get(j).toUpperCase()+","+tagchilds.get(j).toUpperCase()+") ";
			 }
		 }
		 
		 if(bHasChildren && !childRules.isEmpty())
			 strCompleteRule += "; "+ childRules;
		 
		 /*queryConvert = queryConvert.replace( ", ." , " .");
		 
		 if(bMultRules && !strCompleteRule.isEmpty())
			 queryConvert = queryConvert.replace(" .", ", "+strCompleteRule+".");
		 
		 queryConvert = queryConvert.replace( " ." , "");*/
		 
		 if(strGrandParent.compareToIgnoreCase("NOPARENT")!= 0)
		 {
			 String toReplace = strGrandParent.toUpperCase().replace(":", "_");
			 if(nVariableNumber > 0)		 
				 toReplace += nVariableNumber;
			 
			 strCompleteRule = strCompleteRule.replace("IDPARENT", "ID"+toReplace);
			 
			 strCompleteRule = strCompleteRule.replace(strGrandParent.replace(":", "_").toUpperCase(), toReplace);
		 }
		 
		 return strCompleteRule;
	}
	
	private String insertAllRulesFromTag2(Document document, String strGrandParent, String strParent,int nVariableNumber)
	{
		 String strAllRules = "";
		 ArrayList<String>  completeRuleList = getRuleSchema(document,strParent,true);
		 //queryConvert+=" .";
		 String strCompleteRule = "";
		 boolean bMultRules = false;
		 
		 boolean bHasChildren = hasChildNodes(document, "element", strParent,strGrandParent,true);
		 boolean bHasOnlyAttributes = hasOnlyAttributes(document, "element", strParent,strGrandParent,true);
		 boolean bIsMixed = isMixed(document, "element", strParent,strGrandParent,true);
		 
		 ArrayList<String> tagchilds = new ArrayList<String>();
		 if(bHasChildren)
		 {
			 Node nodeLastElement = getElementByTagName(document, "element", strParent,"IDNOPARENT",true); 
		 	 tagchilds = getChildsNodeNames( document, nodeLastElement);
		 }
		 
		 boolean bRuleAdded = false;
		 String baseRule = "";
		 if(tagchilds.size()>0 || bHasOnlyAttributes )
		 {
			 baseRule = strParent.replace(":", "_").toLowerCase()+"(";
			 baseRule+="ID"+strGrandParent.replace(":", "_").toUpperCase()+", ";
			 baseRule+="ID"+strParent.replace(":", "_").toUpperCase();
			 if(bIsMixed)		 
				 baseRule+=", "+strParent.replace(":", "_").toUpperCase();
			 
			 baseRule+=") ";
			 strCompleteRule+= baseRule;
		 }
		  
		 int nRulesAdded = 0;
		 for(int i=0;i<completeRuleList.size();i++)
		 {
			 
			 if(!completeRuleList.get(i).contains("_attribute_"))
				 continue;
			 
			 String addRule = "";
			 
			 if(bHasChildren)
			 {
				 RuleStringParser stringParser = new RuleStringParser();
				 if(stringParser.getRuleParametersNumber(completeRuleList.get(i)) >2)
				 {
					 //String strToReplace = strGrandParent;
					 String strToReplace = strParent;
					 //strToReplace = strParent;
						 
					 addRule = stringParser.replaceParentIDRule(completeRuleList.get(i),strToReplace);
				 }
			 }
			 else
			 {
				 addRule= completeRuleList.get(i);	 
			 }
			 
			 if(!addRule.isEmpty())
			 {
				 String strJoin = ",";
				 if(!baseRule.isEmpty() && nRulesAdded==0)
					 strCompleteRule+=", ";
				 
				 if(bMultRules)
					 strJoin = ", ";
					 //strJoin = "; ";
				 
				 if(bMultRules && bRuleAdded)
					 strCompleteRule+=strJoin+ addRule;
				 else
					 strCompleteRule+=addRule;
				 
				 nRulesAdded ++;
				 bMultRules= true;
				 if(!addRule.isEmpty())
					 bRuleAdded = true;
			 }
		 }
		 
		 if(bMultRules)
			 strCompleteRule = " setof(_,( "+strCompleteRule+" ),_) ";
		 
		 if(nVariableNumber > 0 )
			 strCompleteRule = strCompleteRule.replace(strParent.toUpperCase(), strParent.toUpperCase()+nVariableNumber);
		 
		 String childRules = "";
		 for(int j=0; j< tagchilds.size();j++)
		 {
			 boolean bChildHasChildren = hasChildNodes(document, "element", tagchilds.get(j),strParent,true);
			 boolean bChildHasOnlyAttributes = hasOnlyAttributes(document, "element", tagchilds.get(j),strParent,true);
			 
			 String strAnd = "";
			 if(j>0 && !childRules.isEmpty())
				 strAnd = "; ";
			 
			 if(bChildHasChildren || bChildHasOnlyAttributes)
			 {
				 String childRule = insertAllRulesFromTag2(document, strParent, tagchilds.get(j),nVariableNumber);
				 if(!childRule.isEmpty())
					 childRules+=strAnd+ childRule;
			 }
			 else
			 {
				 childRules += strAnd+tagchilds.get(j).toLowerCase()+"(ID"+strParent.toUpperCase()+",ID"+tagchilds.get(j).toUpperCase()+","+tagchilds.get(j).toUpperCase()+") ";
			 }
		 }
		 
		 if(bHasChildren && !childRules.isEmpty())
			 strCompleteRule += "; "+ childRules;
		 
		 if(strGrandParent.compareToIgnoreCase("NOPARENT")!= 0)
		 {
			 String toReplace = strGrandParent.toUpperCase().replace(":", "_");
			 if(nVariableNumber > 0)		 
				 toReplace += nVariableNumber;
			 
			 strCompleteRule = strCompleteRule.replace("IDPARENT", "ID"+toReplace);
			 
			 strCompleteRule = strCompleteRule.replace(strGrandParent.replace(":", "_").toUpperCase(), toReplace);
		 }
		 
		 return strCompleteRule;
	}
	
	private String insertAllRulesFromTag3(Document document, String strGrandParent, String strParent,int nVariableNumber)
	{
		 String strAllRules = "";
		 ArrayList<String>  completeRuleList = getRuleSchema(document,strParent,true);
		 //queryConvert+=" .";
		 RuleStringParser stringParser = new RuleStringParser();
		 String strCompleteRule = "";
		 boolean bMultRules = false;
		 
		 boolean bHasChildren = hasChildNodes(document, "element", strParent,strGrandParent,true);
		 boolean bHasOnlyAttributes = hasOnlyAttributes(document, "element", strParent,strGrandParent,true);
		 boolean bIsMixed = isMixed(document, "element", strParent,strGrandParent,true);
		 boolean bIsRoot = isRoot(document, "element", strParent);
		 
		 ArrayList<String> tagchilds = new ArrayList<String>();
		 if(bHasChildren)
		 {
			 Node nodeLastElement = getElementByTagName(document, "element", strParent,"IDNOPARENT",true); 
		 	 tagchilds = getChildsNodeNames( document, nodeLastElement);
		 }
		 
		 boolean bRuleAdded = false;
		 String baseRule = "";
		 if(tagchilds.size()>0 || bHasOnlyAttributes )
		 {
			 baseRule = strParent.replace(":", "_").toLowerCase()+"(";
			 if(!bIsRoot)
				 baseRule+="ID"+strGrandParent.replace(":", "_").toUpperCase()+", ";
			 baseRule+="ID"+strParent.replace(":", "_").toUpperCase();
			 if(bIsMixed)		 
				 baseRule+=", "+strParent.replace(":", "_").toUpperCase();
			 
			 baseRule+=") ";
			 
			 /*if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
			 {
				 baseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");	 
			 }*/
			 
			 //strCompleteRule+= baseRule;
		 }
		  
		 int nRulesAdded = 0;
		 for(int i=0;i<completeRuleList.size();i++)
		 {
			 
			 if(!completeRuleList.get(i).contains("_attribute_"))
				 continue;
			 
			 String addRule = "";
			 
			 if(bHasChildren)
			 {
				 if(stringParser.getRuleParametersNumber(completeRuleList.get(i)) >2)
				 {
					 //String strToReplace = strGrandParent;
					 String strToReplace = strParent;
					 //strToReplace = strParent;
						 
					 addRule = stringParser.replaceParentIDRule(completeRuleList.get(i),strToReplace);
				 }
			 }
			 else
			 {
				 addRule= completeRuleList.get(i);	 
			 }
			 
			 if(!addRule.isEmpty())
			 {
				 String strJoin = ",";
				 //if(!baseRule.isEmpty() && nRulesAdded==0)
					 //strCompleteRule+=", (";
				 addRule = stringParser.replaceIDRule(addRule,"IDCHILDATTRIBUTE"+strParent.replace(":", "_").toUpperCase()); 
				 addRule = stringParser.replaceParentIDRule(addRule,"CHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
				 
				 if(bMultRules)
					 strJoin = "; ";
				 
				 if(bMultRules && bRuleAdded)
					 strCompleteRule+=strJoin+ addRule;
				 else
					 strCompleteRule+=addRule;
				 
				 nRulesAdded ++;
				 bMultRules= true;
				 if(!addRule.isEmpty())
					 bRuleAdded = true;
			 }
		 }
		 
		 if(bMultRules && nRulesAdded>1)
		 {
			 String bkpRule = strCompleteRule;
			 String  modifiedBaseRule = baseRule;
			 
			 if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedBaseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");	 
			 
			 String normalizedParent = strParent.replace(":", "_");
			 strCompleteRule = " findall(IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+", ("+modifiedBaseRule+",(  "+strCompleteRule+"  ";
			 
			 strCompleteRule+=";"+stringParser.replaceIDRule(baseRule,"IDCHILDATTRIBUTE"+normalizedParent.toUpperCase())+") ) ";
			 strCompleteRule+= ",LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+") ";
			 
			 //2º Passada- Ordenado
			 strCompleteRule+= ",quick_sort(LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+",LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED),member(IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+
					 "SORTED,LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED)";
			 
			 strCompleteRule+= ", ( "+modifiedBaseRule;
			 strCompleteRule+=",( "+ bkpRule.replace("IDCHILDATTRIBUTE"+normalizedParent.toUpperCase(), "IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED");
			 
			 //##########
			 String orderedBaseRule =  stringParser.replaceIDRule(baseRule,"IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED");
			 //orderedBaseRule =  stringParser.replaceParentIDRule(orderedBaseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
			 strCompleteRule+=" ;"+orderedBaseRule;
			 
			 strCompleteRule+=") ) ";
			 
		 }
		 else if(bMultRules)
		 {
             String  modifiedBaseRule = baseRule;
			 
			 if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedBaseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
			 
			 strCompleteRule = "( "+modifiedBaseRule+",( "+strCompleteRule+" ; "+modifiedBaseRule+" ) ) ";
		 }
		 
		 if(nVariableNumber > 0 )
			 strCompleteRule = strCompleteRule.replace(strParent.toUpperCase(), strParent.toUpperCase()+nVariableNumber);
		 
		 String childRules = "";
		 String orChildRule = "";
		 for(int j=0; j< tagchilds.size();j++)
		 {
			 boolean bChildHasChildren = hasChildNodes(document, "element", tagchilds.get(j),strParent,true);
			 boolean bChildHasOnlyAttributes = hasOnlyAttributes(document, "element", tagchilds.get(j),strParent,true);
			 boolean bChildIsMixed = isMixed(document, "element", tagchilds.get(j),strParent,true);
			 
			 String strAnd = "";
			 if(j>0 && !childRules.isEmpty())
				 strAnd = "; ";
			 
			 if(bChildHasChildren || bChildHasOnlyAttributes)
			 {
				 String childRule = insertAllRulesFromTag3(document, strParent, tagchilds.get(j),nVariableNumber);
				 if(!childRule.isEmpty())
					 childRules+=strAnd+  childRule;
			 }
			 else
			 {
				 String simpleChildRule = tagchilds.get(j).toLowerCase()+"(ID"+strParent.replace(":", "_").toUpperCase()+",ID"+tagchilds.get(j).toUpperCase()+","+tagchilds.get(j).toUpperCase()+") ";
				 
				 simpleChildRule = stringParser.replaceIDRule(simpleChildRule,"IDCHILD"+strParent.replace(":", "_").toUpperCase()+"SORTED");
				 
				 childRules += strAnd+simpleChildRule;
				 
			 }
			 
			 String childBaseRule = tagchilds.get(j).replace(":", "_").toLowerCase()+"(";
			 childBaseRule+="ID"+strParent.replace(":", "_").toUpperCase()+", ";
			 childBaseRule+="ID"+tagchilds.get(j).replace(":", "_").toUpperCase();
			 if(bChildIsMixed || (!bChildHasOnlyAttributes && !bChildHasChildren))		 
				 childBaseRule+=", "+tagchilds.get(j).replace(":", "_").toUpperCase();
			 childBaseRule+=") ";
			 	 
			 childBaseRule =stringParser.replaceIDRule(childBaseRule,"IDCHILD"+strParent.replace(":", "_").toUpperCase());
			 if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
				 childBaseRule =stringParser.replaceParentIDRule(childBaseRule,"CHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
			 
			 orChildRule += strAnd+ childBaseRule;
		 }
		 
		 if(bHasChildren && !childRules.isEmpty())
		 {
			 String normalizedParent = strParent.replace(":", "_");
             String  modifiedBaseRule = baseRule;
			 
			 if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedBaseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
			  
			 strCompleteRule += "; "+"findall(IDCHILD"+normalizedParent.toUpperCase()+", ( "+modifiedBaseRule+", ("+orChildRule+") ) ";
             strCompleteRule+= ",LISTCHILD"+normalizedParent.toUpperCase()+") ";
			 strCompleteRule+= ",quick_sort(LISTCHILD"+normalizedParent.toUpperCase()+",LISTCHILD"+normalizedParent.toUpperCase()+"SORTED),member(IDCHILD"+normalizedParent.toUpperCase()+
					 "SORTED,LISTCHILD"+normalizedParent.toUpperCase()+"SORTED)";
			 
			 strCompleteRule += ", ("+ childRules+") ";
		 }
		 
		 if(strGrandParent.compareToIgnoreCase("NOPARENT")!= 0)
		 {
			 String toReplace = strGrandParent.toUpperCase().replace(":", "_");
			 if(nVariableNumber > 0)		 
				 toReplace += nVariableNumber;
			 
			 strCompleteRule = strCompleteRule.replace("IDPARENT", "ID"+toReplace);
			 
			 strCompleteRule = strCompleteRule.replace(strGrandParent.replace(":", "_").toUpperCase(), toReplace);
		 }
		 
		 if(strCompleteRule.startsWith("; "))
		 {
			 strCompleteRule  = strCompleteRule.substring(strCompleteRule.indexOf("; ")+1,strCompleteRule.length()-1);
		 }
		 
		 return strCompleteRule;
	}
	
	
	
	private String obtainAxisWildCard(Document document, String strFather, QueryElement element)
	{
		 String axisWildCard = "";
		 ArrayList<String>  completeRuleList = getRuleSchema(document,strFather,true);
		 
		 String strCompleteRule  = "";
		 
		 String strAxes = element.getElement();
		 String [] vetAxes = strAxes.split("\\:");
		 
		 if(vetAxes.length<1)
			 return axisWildCard;
				 
		 String strRootAxes = vetAxes[0];
		 
		 boolean bPrevious = false;
		 List<String> alreadyInsertedTags = new ArrayList<String>();
		 
		 for (int i=0; i< completeRuleList.size();i++) 
		 {
			 String rule = completeRuleList.get(i);
			 
			 //if(!rule.contains("_attribute_"))
				 //continue;
			 
			 if(rule.contains("attribute_xmlns_"+strRootAxes.toLowerCase()))
			 {
				 String [] vetAttributeName = rule.split("\\_attribute_xmlns_");
				 if(vetAttributeName.length >0 && !alreadyInsertedTags.contains(vetAttributeName[0]))
				   alreadyInsertedTags.add(vetAttributeName[0]);
			 }
			 
			 /*String [] splitRule = rule.split("\\(");
			 if(splitRule.length >0)
			 {
                 String localName = splitRule[0]; 
				 if(localName.contains("attribute_xmlns_"+strRootAxes.toLowerCase()))
				 {
					 String [] vetAttributeName = localName.split("\\attribute_xmlns_");
					 if(vetAttributeName.length >0 && !alreadyInsertedTags.contains(vetAttributeName[0]))
					   alreadyInsertedTags.add(vetAttributeName[0]);
				 }
			 }*/ 
		 }
		 
		 for (int i=0; i< alreadyInsertedTags.size();i++) 
		 {
			 String namespaceElement = alreadyInsertedTags.get(i);
			 boolean bHasChilds = hasChildNodes(document, "element", namespaceElement, "NOPARENT", false);
			 
			 
			 if(bPrevious)
				 strCompleteRule+="; ";
			 
			 if(isRoot(document,"element",namespaceElement))
				 strCompleteRule+= namespaceElement.toLowerCase()+"(ID"+namespaceElement.toUpperCase()+")";
			 else
			 {
				 if(bHasChilds)
					 strCompleteRule+=namespaceElement.toLowerCase()+"(_,ID"+namespaceElement.toUpperCase()+")";
				 else
					 strCompleteRule+=namespaceElement.toLowerCase()+"(_,ID"+namespaceElement.toUpperCase()+",_)";
			 }
			 
			 bPrevious = true;
				 
		 }
		  
		 
		 if(bPrevious)
			 axisWildCard =" setof(_,( ("+strCompleteRule+ "),! ),_) ";
		 /*
		 for (int i=0; i< completeRuleList.size();i++) 
		 {
			 String rule = completeRuleList.get(i);
			 
			 //if(!rule.contains("_attribute_"))
				 //continue;
			 
			 String [] splitRule = rule.split("\\(");
			 if(splitRule.length >0)
			 {
				 
				 String localName = splitRule[0];
				 
				 if(localName.contains("attribute_xmlns_"+strRootAxes.toLowerCase()))
				 {
					 String [] vetAttributeName = localName.split("\\attribute_xmlns_"+strRootAxes.toLowerCase());
					 
					 
				 }
				 else
				 {
					 if(splitRule[0].contains("_"))
					 {
						 String [] splitLocalName = localName.split("\\_"); 
						 if(splitLocalName.length ==2)
							 localName = splitLocalName[0];
					 }
					 
					 if(!(localName.compareToIgnoreCase(strRootAxes)==0))
						 continue;
					 
				 }
				 
				 if(bPrevious)
					 strCompleteRule+="; ";	 
				 
				 strCompleteRule+=rule;
		    	 bPrevious = true;
			 }
		 }
		 
		 if(bPrevious)
			 axisWildCard =" setof(_,( "+strCompleteRule+ " ),_) ";
		*/
		
		return axisWildCard;
	}
	
	private String insertAllRulesFromTag4(Document document, String strGrandParent, String strParent,int nVariableNumber)
	{
		 String strAllRules = "";
		 ArrayList<String>  completeRuleList = getRuleSchema(document,strParent,true);
		 //queryConvert+=" .";
		 RuleStringParser stringParser = new RuleStringParser();
		 String strCompleteRule = "";
		 boolean bMultRules = false;
		 
		 boolean bHasChildren = hasChildNodes(document, "element", strParent,strGrandParent,true);
		 boolean bHasOnlyAttributes = hasOnlyAttributes(document, "element", strParent,strGrandParent,true);
		 boolean bIsMixed = isMixed(document, "element", strParent,strGrandParent,true);
		 boolean bIsRoot = isRoot(document, "element", strParent);
		 
		 ArrayList<String> tagchilds = new ArrayList<String>();
		 if(bHasChildren)
		 {
			 Node nodeLastElement = getElementByTagName(document, "element", strParent,"IDNOPARENT",true); 
		 	 tagchilds = getChildsNodeNames( document, nodeLastElement);
		 }
		 
		 boolean bRuleAdded = false;
		 String baseRule = "";
		 if(tagchilds.size()>0 || bHasOnlyAttributes )
		 {
			 baseRule = strParent.replace(":", "_").toLowerCase()+"(";
			 if(!bIsRoot)
				 baseRule+="ID"+strGrandParent.replace(":", "_").toUpperCase()+", ";
			 baseRule+="ID"+strParent.replace(":", "_").toUpperCase();
			 if(bIsMixed)		 
				 baseRule+=", "+strParent.replace(":", "_").toUpperCase();
			 
			 baseRule+=") ";
			 
			 /*if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
			 {
				 baseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");	 
			 }*/
			 
			 //strCompleteRule+= baseRule;
		 }
		  
		 int nRulesAdded = 0;
		 String strPrintAttributes= "";
		 for(int i=0;i<completeRuleList.size();i++)
		 {
			 
			 if(!completeRuleList.get(i).contains("_attribute_"))
				 continue;
			 
			 String addRule = "";
			 
			 if(bHasChildren)
			 {
				 if(stringParser.getRuleParametersNumber(completeRuleList.get(i)) >2)
				 {
					 //String strToReplace = strGrandParent;
					 String strToReplace = strParent;
					 //strToReplace = strParent;
						 
					 addRule = stringParser.replaceParentIDRule(completeRuleList.get(i),strToReplace);
				 }
			 }
			 else
			 {
				 addRule= completeRuleList.get(i);	 
			 }
			 
			 if(!addRule.isEmpty())
			 {
				 String strJoin = ",";
				 //if(!baseRule.isEmpty() && nRulesAdded==0)
					 //strCompleteRule+=", (";
				 addRule = stringParser.replaceIDRule(addRule,"IDCHILDATTRIBUTE"+strParent.replace(":", "_").toUpperCase()); 
				 addRule = stringParser.replaceParentIDRule(addRule,"CHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
				 
				 if(bMultRules)
					 strJoin = "; ";
				 
				 if(bMultRules && bRuleAdded)
				 {
					 strCompleteRule+=strJoin+ addRule;
				     strPrintAttributes+=strJoin+ "( "+ addRule;
				 }
				 else
				 {
					 strCompleteRule+=addRule;
				     strPrintAttributes+=" ( "+addRule;
				 }
				 
				 String[] vetAttribute = completeRuleList.get(i).split("\\_attribute_");
				 if(vetAttribute.length>1)
				 {
					 String [] vetAttributeName = vetAttribute[1].split("\\(");
					 if(vetAttributeName.length>0)
						 strPrintAttributes += ", print(' "+ vetAttributeName[0].replace("_", ":")+" = '), print("+vetAttributeName[0].toUpperCase()+")";
				 }
				 
				 nRulesAdded ++;
				 bMultRules= true;
				 if(!addRule.isEmpty())
					 bRuleAdded = true;
				 
				 strPrintAttributes+=" ) ";
			 }
		 }
		 
		 if(bMultRules && nRulesAdded>1)
		 {
			 String bkpRule = strCompleteRule;
			 String  modifiedBaseRule = baseRule;
			 
			 if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedBaseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");	 
			 
			 String normalizedParent = strParent.replace(":", "_");
			 strCompleteRule = " findall(IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+", ("+modifiedBaseRule+",(  "+strCompleteRule+"  ";
			 
			 strCompleteRule+=";"+stringParser.replaceIDRule(baseRule,"IDCHILDATTRIBUTE"+normalizedParent.toUpperCase())+") ) ";
			 strCompleteRule+= ",LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+") ";
			 
			 //2º Passada- Ordenado
			 strCompleteRule+= ",quick_sort(LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+",LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED),"
					 //+" listSize(LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED ,SIZELISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED), "
					 //+ " SIZELISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED@>0 -> print('<"+strParent+" '), "
					 //+"nlprint('<"+strParent+" '), "
			 		+ " member(IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED,LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED)";
			 
			 strCompleteRule+= ",  "+modifiedBaseRule;
			 strCompleteRule+=",( "+ strPrintAttributes.replace("IDCHILDATTRIBUTE"+normalizedParent.toUpperCase(), "IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED");
			 
			 //##########
			 String orderedBaseRule =  stringParser.replaceIDRule(baseRule,"IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED");
			 //orderedBaseRule =  stringParser.replaceParentIDRule(orderedBaseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
			 strCompleteRule+=" ; "+orderedBaseRule;
			 strCompleteRule+=", printnl('>') ";
			 strCompleteRule+=") ";
			 //strCompleteRule+=", print("+normalizedParent.toUpperCase()+") ";
			 //strCompleteRule+= ") ";
			 // , print(' >') 
			 
		 }
		 else if(bMultRules)
		 {
             String  modifiedBaseRule = baseRule;
			 
			 if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedBaseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
			 
			 strCompleteRule = "( "+modifiedBaseRule+",( nlprint('<"+strParent+"') , "+strPrintAttributes
			 		+ ", print(' >') "
			 		+ "; nlprint('<"+strParent+">'),"+modifiedBaseRule+" ) ) ";
		 }
		 
		 if(nVariableNumber > 0 )
			 strCompleteRule = strCompleteRule.replace(strParent.toUpperCase(), strParent.toUpperCase()+nVariableNumber);
		 
		 String childRules = "";
		 String orChildRule = "";
		 for(int j=0; j< tagchilds.size();j++)
		 {
			 boolean bChildHasChildren = hasChildNodes(document, "element", tagchilds.get(j),strParent,true);
			 boolean bChildHasOnlyAttributes = hasOnlyAttributes(document, "element", tagchilds.get(j),strParent,true);
			 boolean bChildIsMixed = isMixed(document, "element", tagchilds.get(j),strParent,true);
			 
			 String strAnd = "";
			 if(j>0 && !childRules.isEmpty())
				 strAnd = "; ";
			 
			 if(bChildHasChildren || bChildHasOnlyAttributes)
			 {
				 String childRule = insertAllRulesFromTag4(document, strParent, tagchilds.get(j),nVariableNumber);
				 if(!childRule.isEmpty())
					 childRules+=strAnd+  childRule;
			 }
			 else
			 {
				 String simpleChildRule = tagchilds.get(j).toLowerCase()+"(ID"+strParent.replace(":", "_").toUpperCase()+",ID"+tagchilds.get(j).toUpperCase()+","+tagchilds.get(j).toUpperCase()+") ";
				 
				 simpleChildRule = stringParser.replaceIDRule(simpleChildRule,"IDCHILD"+strParent.replace(":", "_").toUpperCase()+"SORTED");
				 
				 childRules += strAnd+simpleChildRule;
				 
			 }
			 
			 String childBaseRule = tagchilds.get(j).replace(":", "_").toLowerCase()+"(";
			 childBaseRule+="ID"+strParent.replace(":", "_").toUpperCase()+", ";
			 childBaseRule+="ID"+tagchilds.get(j).replace(":", "_").toUpperCase();
			 if(bChildIsMixed || (!bChildHasOnlyAttributes && !bChildHasChildren))		 
				 childBaseRule+=", "+tagchilds.get(j).replace(":", "_").toUpperCase();
			 childBaseRule+=") ";
			 	 
			 childBaseRule =stringParser.replaceIDRule(childBaseRule,"IDCHILD"+strParent.replace(":", "_").toUpperCase());
			 if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
				 childBaseRule =stringParser.replaceParentIDRule(childBaseRule,"CHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
			 
			 orChildRule += strAnd+ childBaseRule;
		 }
		 
		 if(bHasChildren && !childRules.isEmpty())
		 {
			 String normalizedParent = strParent.replace(":", "_");
             String  modifiedBaseRule = baseRule;
			 
			 if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedBaseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
			  
			 strCompleteRule += "; "+"findall(IDCHILD"+normalizedParent.toUpperCase()+", ( "+modifiedBaseRule+", ("+orChildRule+") ) ";
             strCompleteRule+= ",LISTCHILD"+normalizedParent.toUpperCase()+") ";
			 strCompleteRule+= ",quick_sort(LISTCHILD"+normalizedParent.toUpperCase()+",LISTCHILD"+normalizedParent.toUpperCase()+"SORTED),member(IDCHILD"+normalizedParent.toUpperCase()+
					 "SORTED,LISTCHILD"+normalizedParent.toUpperCase()+"SORTED)";
			 
			 strCompleteRule += ", ("+ childRules+") ";
		 }
		 
		 if(strGrandParent.compareToIgnoreCase("NOPARENT")!= 0)
		 {
			 String toReplace = strGrandParent.toUpperCase().replace(":", "_");
			 if(nVariableNumber > 0)		 
				 toReplace += nVariableNumber;
			 
			 strCompleteRule = strCompleteRule.replace("IDPARENT", "ID"+toReplace);
			 
			 strCompleteRule = strCompleteRule.replace(strGrandParent.replace(":", "_").toUpperCase(), toReplace);
		 }
		 
		 if(strCompleteRule.startsWith("; "))
		 {
			 strCompleteRule  = strCompleteRule.substring(strCompleteRule.indexOf("; ")+1,strCompleteRule.length()-1);
		 }
		 
		 return strCompleteRule;
	}
	
	private String insertAllRulesFromTag5(Document document, String strGrandParent, String strParent,int nVariableNumber)
	{
		 String strAllRules = "";
		 ArrayList<String>  completeRuleList = getRuleSchema(document,strParent,true);
		 //queryConvert+=" .";
		 RuleStringParser stringParser = new RuleStringParser();
		 String strCompleteRule = "";
		 boolean bMultRules = false;
		 
		 boolean bHasChildren = hasChildNodes(document, "element", strParent,strGrandParent,true);
		 boolean bHasOnlyAttributes = hasOnlyAttributes(document, "element", strParent,strGrandParent,true);
		 boolean bIsMixed = isMixed(document, "element", strParent,strGrandParent,true);
		 boolean bIsRoot = isRoot(document, "element", strParent);
		 
		 ArrayList<String> tagchilds = new ArrayList<String>();
		 if(bHasChildren)
		 {
			 Node nodeLastElement = getElementByTagName(document, "element", strParent,"IDNOPARENT",true); 
		 	 tagchilds = getChildsNodeNames( document, nodeLastElement);
		 }
		 
		 boolean bRuleAdded = false;
		 String baseRule = "";
		 if(tagchilds.size()>0 || bHasOnlyAttributes )
		 {
			 baseRule = strParent.replace(":", "_").toLowerCase()+"(";
			 if(!bIsRoot)
				 baseRule+="ID"+strGrandParent.replace(":", "_").toUpperCase()+", ";
			 baseRule+="ID"+strParent.replace(":", "_").toUpperCase();
			 if(bIsMixed)		 
				 baseRule+=", "+strParent.replace(":", "_").toUpperCase();
			 
			 baseRule+=") ";
			 
			 /*if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
			 {
				 baseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");	 
			 }*/
			 
			 //strCompleteRule+= baseRule;
		 }
		  
		 int nRulesAdded = 0;
		 for(int i=0;i<completeRuleList.size();i++)
		 {
			 
			 if(!completeRuleList.get(i).contains("_attribute_"))
				 continue;
			 
			 String addRule = "";
			 
			 if(bHasChildren)
			 {
				 if(stringParser.getRuleParametersNumber(completeRuleList.get(i)) >2)
				 {
					 //String strToReplace = strGrandParent;
					 String strToReplace = strParent;
					 //strToReplace = strParent;
						 
					 addRule = stringParser.replaceParentIDRule(completeRuleList.get(i),strToReplace);
				 }
			 }
			 else
			 {
				 addRule= completeRuleList.get(i);	 
			 }
			 
			 if(!addRule.isEmpty())
			 {
				 String strJoin = ",";
				 //if(!baseRule.isEmpty() && nRulesAdded==0)
					 //strCompleteRule+=", (";
				 addRule = stringParser.replaceIDRule(addRule,"IDCHILDATTRIBUTE"+strParent.replace(":", "_").toUpperCase());
				 if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
					 addRule = stringParser.replaceParentIDRule(addRule,"CHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
				 
				 if(bMultRules)
					 strJoin = "; ";
				 
				 if(bMultRules && bRuleAdded)
					 strCompleteRule+=strJoin+ addRule;
				 else
					 strCompleteRule+=addRule;
				 
				 nRulesAdded ++;
				 bMultRules= true;
				 if(!addRule.isEmpty())
					 bRuleAdded = true;
			 }
		 }
		 
		 if(bMultRules && nRulesAdded>1)
		 {
			 String bkpRule = strCompleteRule;
			 String  modifiedBaseRule = baseRule;
			 
			 if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedBaseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");	 
			 
			 String normalizedParent = strParent.replace(":", "_");
			 strCompleteRule = " findall(IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+", ("+modifiedBaseRule+",(  "+strCompleteRule+"  ";
			 
			 strCompleteRule+=";"+stringParser.replaceIDRule(baseRule,"IDCHILDATTRIBUTE"+normalizedParent.toUpperCase())+") ) ";
			 strCompleteRule+= ",LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+") ";
			 
			 //2º Passada- Ordenado
			 strCompleteRule+= ",quick_sort(LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+",LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED),member(IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+
					 "SORTED,LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED)";
			 
			 strCompleteRule+= ", ( "+modifiedBaseRule;
			 strCompleteRule+=",( "+ bkpRule.replace("IDCHILDATTRIBUTE"+normalizedParent.toUpperCase(), "IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED");
			 
			 //##########
			 String orderedBaseRule =  stringParser.replaceIDRule(baseRule,"IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED");
			 //orderedBaseRule =  stringParser.replaceParentIDRule(orderedBaseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
			 strCompleteRule+=" ;"+orderedBaseRule;
			 
			 strCompleteRule+=") ) ";
			 
		 }
		 else if(bMultRules)
		 {
             String  modifiedBaseRule = baseRule;
			 
			 if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedBaseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
			 
			 strCompleteRule = "( "+modifiedBaseRule+",( "+strCompleteRule+" ; "+modifiedBaseRule+" ) ) ";
		 }
		 
		 if(nVariableNumber > 0 )
			 strCompleteRule = strCompleteRule.replace(strParent.toUpperCase(), strParent.toUpperCase()+nVariableNumber);
		 
		 String childRules = "";
		 String orChildRule = "";
		 for(int j=0; j< tagchilds.size();j++)
		 {
			 boolean bChildHasChildren = hasChildNodes(document, "element", tagchilds.get(j),strParent,true);
			 boolean bChildHasOnlyAttributes = hasOnlyAttributes(document, "element", tagchilds.get(j),strParent,true);
			 boolean bChildIsMixed = isMixed(document, "element", tagchilds.get(j),strParent,true);
			 
			 String strAnd = "";
			 if(j>0 && !childRules.isEmpty())
				 strAnd = "; ";
			 
			 if(bChildHasChildren || bChildHasOnlyAttributes)
			 {
				 String childRule = insertAllRulesFromTag5(document, strParent, tagchilds.get(j),nVariableNumber);
				 if(!childRule.isEmpty())
					 childRules+=strAnd+  childRule;
			 }
			 else
			 {
				 String simpleChildRule = tagchilds.get(j).toLowerCase()+"(ID"+strParent.replace(":", "_").toUpperCase()+",ID"+tagchilds.get(j).toUpperCase()+","+tagchilds.get(j).toUpperCase()+") ";
				 
				 simpleChildRule = stringParser.replaceIDRule(simpleChildRule,"IDCHILD"+strParent.replace(":", "_").toUpperCase()+"SORTED");
				 
				 childRules += strAnd+simpleChildRule;
				 
			 }
			 
			 String childBaseRule = tagchilds.get(j).replace(":", "_").toLowerCase()+"(";
			 childBaseRule+="ID"+strParent.replace(":", "_").toUpperCase()+", ";
			 childBaseRule+="ID"+tagchilds.get(j).replace(":", "_").toUpperCase();
			 if(bChildIsMixed || (!bChildHasOnlyAttributes && !bChildHasChildren))		 
				 childBaseRule+=", "+tagchilds.get(j).replace(":", "_").toUpperCase();
			 childBaseRule+=") ";
			 	 
			 childBaseRule =stringParser.replaceIDRule(childBaseRule,"IDCHILD"+strParent.replace(":", "_").toUpperCase());
			 if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
				 childBaseRule =stringParser.replaceParentIDRule(childBaseRule,"CHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
			 
			 orChildRule += strAnd+ childBaseRule;
		 }
		 
		 if(bHasChildren && !childRules.isEmpty())
		 {
			 String normalizedParent = strParent.replace(":", "_");
             String  modifiedBaseRule = baseRule;
			 
			 if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedBaseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
			  
			 strCompleteRule += "; "+"findall(IDCHILD"+normalizedParent.toUpperCase()+", ( "+modifiedBaseRule+", ("+orChildRule+") ) ";
             strCompleteRule+= ",LISTCHILD"+normalizedParent.toUpperCase()+") ";
			 strCompleteRule+= ",quick_sort(LISTCHILD"+normalizedParent.toUpperCase()+",LISTCHILD"+normalizedParent.toUpperCase()+"SORTED),member(IDCHILD"+normalizedParent.toUpperCase()+
					 "SORTED,LISTCHILD"+normalizedParent.toUpperCase()+"SORTED)";
			 
			 strCompleteRule += ", ("+ childRules+") ";
		 }
		 
		 if(strGrandParent.compareToIgnoreCase("NOPARENT")!= 0)
		 {
			 String toReplace = strGrandParent.toUpperCase().replace(":", "_");
			 if(nVariableNumber > 0)		 
				 toReplace += nVariableNumber;
			 
			 strCompleteRule = strCompleteRule.replace("IDPARENT", "ID"+toReplace);
			 
			 strCompleteRule = strCompleteRule.replace(strGrandParent.replace(":", "_").toUpperCase(), toReplace);
		 }
		 
		 if(strCompleteRule.startsWith("; "))
		 {
			 strCompleteRule  = strCompleteRule.substring(strCompleteRule.indexOf("; ")+1,strCompleteRule.length()-1);
		 }
		 
		 return strCompleteRule;
	}
	
	private String insertAllRulesFromTag6(Document document, String strGrandParent, String strParent,int nVariableNumber,HashMap<String,Integer> mapVisitedNodes)
	{
		 String strAllRules = "";
		 boolean bStopRecusrsion = false;
		 String strRecursiveParentName = strParent;
		 String strRecursiveGrandParentName = strGrandParent;
		 ArrayList<String>  completeRuleList = getRuleSchema(document,strParent,true);
		 //queryConvert+=" .";
		 RuleStringParser stringParser = new RuleStringParser();
		 String strCompleteRule = "";
		 boolean bMultRules = false;
		 
		 boolean bHasChildren = hasChildNodes(document, "element", strParent,strGrandParent,true);
		 boolean bHasOnlyAttributes = hasOnlyAttributes(document, "element", strParent,strGrandParent,true);
		 boolean bIsMixed = isMixed(document, "element", strParent,strGrandParent,true);
		 boolean bIsRoot = isRoot(document, "element", strParent);
		 
		 if(mapVisitedNodes.containsKey(strParent))
		 {
			 mapVisitedNodes.put(strParent, mapVisitedNodes.get(strParent)+1);
			 strRecursiveParentName+=mapVisitedNodes.get(strParent);
		 }
		 else
			 mapVisitedNodes.put(strParent, 1);
		 
		 if((mapVisitedNodes.containsKey(strGrandParent)) && mapVisitedNodes.get(strGrandParent)>1)
			 strRecursiveGrandParentName+=mapVisitedNodes.get(strGrandParent);
		 
		 if(mapVisitedNodes.containsKey(strParent) && mapVisitedNodes.get(strParent)>=1)
			 bStopRecusrsion = true;
		 
		 ArrayList<String> tagchilds = new ArrayList<String>();
		 if(bHasChildren)
		 {
			 Node nodeLastElement = getElementByTagName(document, "element", strParent,"IDNOPARENT",true); 
		 	 tagchilds = getChildsNodeNames( document, nodeLastElement);
		 }
		 
		 boolean bRuleAdded = false;
		 String baseRule = "";
		 if(tagchilds.size()>0 || bHasOnlyAttributes )
		 {
			 baseRule = strParent.replace(":", "_").toLowerCase()+"(";
			 if(!bIsRoot)
				 baseRule+="ID"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+", ";
			 baseRule+="ID"+strRecursiveParentName.replace(":", "_").toUpperCase();
			 if(bIsMixed)		 
				 baseRule+=", "+strRecursiveParentName.replace(":", "_").toUpperCase();
			 
			 baseRule+=") ";
			 
			 /*if(strGrandParent.compareToIgnoreCase("IDNOPARENT")!=0 && strGrandParent.compareToIgnoreCase("NOPARENT")!=0)
			 {
				 baseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");	 
			 }*/
			 
			 //strCompleteRule+= baseRule;
		 }
		  
		 int nRulesAdded = 0;
		 for(int i=0;i<completeRuleList.size();i++)
		 {
			 
			 if(!completeRuleList.get(i).contains("_attribute_"))
				 continue;
			 
			 String addRule = "";
			 
			 if(bHasChildren)
			 {
				 if(stringParser.getRuleParametersNumber(completeRuleList.get(i)) >2)
				 {
					 //String strToReplace = strGrandParent;
					 String strToReplace = strRecursiveParentName;
					 //strToReplace = strParent;
						 
					 addRule = stringParser.replaceParentIDRule(completeRuleList.get(i),strToReplace);
				 }
			 }
			 else
			 {
				 addRule= completeRuleList.get(i);	 
			 }
			 
			 if(!addRule.isEmpty())
			 {
				 String strJoin = ",";
				 //if(!baseRule.isEmpty() && nRulesAdded==0)
					 //strCompleteRule+=", (";
				 addRule = stringParser.replaceIDRule(addRule,"IDCHILDATTRIBUTE"+strRecursiveParentName.replace(":", "_").toUpperCase());
				 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
					 addRule = stringParser.replaceParentIDRule(addRule,"CHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
				 
				 if(bMultRules)
					 strJoin = "; ";
				 
				 if(bMultRules && bRuleAdded)
					 strCompleteRule+=strJoin+ addRule;
				 else
					 strCompleteRule+=addRule;
				 
				 nRulesAdded ++;
				 bMultRules= true;
				 if(!addRule.isEmpty())
					 bRuleAdded = true;
			 }
		 }
		 
		 if(bMultRules && nRulesAdded>1)
		 {
			 String bkpRule = strCompleteRule;
			 String  modifiedBaseRule = baseRule;
			 
			 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedBaseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");	 
			 
			 String normalizedParent = strRecursiveParentName.replace(":", "_");
			 strCompleteRule = " findall(IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+", ("+modifiedBaseRule+",(  "+strCompleteRule+"  ";
			 
			 strCompleteRule+=";"+stringParser.replaceIDRule(baseRule,"IDCHILDATTRIBUTE"+normalizedParent.toUpperCase())+") ) ";
			 strCompleteRule+= ",LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+") ";
			 
			 //2º Passada- Ordenado
			 strCompleteRule+= ",quick_sort(LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+",LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED),member(IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+
					 "SORTED,LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED)";
			 
			 strCompleteRule+= ", ( "+modifiedBaseRule;
			 strCompleteRule+=",( "+ bkpRule.replace("IDCHILDATTRIBUTE"+normalizedParent.toUpperCase(), "IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED");
			 
			 //##########
			 String orderedBaseRule =  stringParser.replaceIDRule(baseRule,"IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED");
			 //orderedBaseRule =  stringParser.replaceParentIDRule(orderedBaseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
			 strCompleteRule+=" ;"+orderedBaseRule;
			 
			 strCompleteRule+=") ) ";
			 
		 }
		 else if(bMultRules)
		 {
             String  modifiedBaseRule = baseRule;
			 
			 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedBaseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
			 
			 strCompleteRule = "( "+modifiedBaseRule+",( "+strCompleteRule+" ; "+modifiedBaseRule+" ) ) ";
		 }
		 
		 if(nVariableNumber > 0 )
			 strCompleteRule = strCompleteRule.replace(strRecursiveParentName.toUpperCase(), strRecursiveParentName.toUpperCase()+nVariableNumber);
		 
		 String childRules = "";
		 String orChildRule = "";
		 for(int j=0; j< tagchilds.size();j++)
		 {
			 boolean bChildHasChildren = hasChildNodes(document, "element", tagchilds.get(j),strParent,true);
			 boolean bChildHasOnlyAttributes = hasOnlyAttributes(document, "element", tagchilds.get(j),strParent,true);
			 boolean bChildIsMixed = isMixed(document, "element", tagchilds.get(j),strParent,true);
			 
			 String strAnd = "";
			 if(j>0 && !childRules.isEmpty())
				 strAnd = "; ";
			 
			 //if(mapVisitedNodes.containsKey( tagchilds.get(j)))
				 //mapVisitedNodes.put(strParent, mapVisitedNodes.get( tagchilds.get(j))+1);
			 
			 if((bChildHasChildren || bChildHasOnlyAttributes) && !bStopRecusrsion)
			 {
					 String childRule = insertAllRulesFromTag6(document, strParent, tagchilds.get(j),nVariableNumber,mapVisitedNodes);
					 if(!childRule.isEmpty())
						 childRules+=strAnd+  childRule;
			 }
			 else
			 {
				 String simpleChildRule = tagchilds.get(j).toLowerCase()+"(ID"+strRecursiveParentName.replace(":", "_").toUpperCase()+",ID"+tagchilds.get(j).toUpperCase()+","+tagchilds.get(j).toUpperCase()+") ";
				 if(bStopRecusrsion && (bChildHasChildren || bHasOnlyAttributes))
				 {
					 if(!bChildIsMixed)
						 simpleChildRule = tagchilds.get(j).toLowerCase()+"(ID"+strRecursiveParentName.replace(":", "_").toUpperCase()+",ID"+tagchilds.get(j).toUpperCase()+") ";		 
				 }
				 
				 simpleChildRule = stringParser.replaceIDRule(simpleChildRule,"IDCHILD"+strRecursiveParentName.replace(":", "_").toUpperCase()+"SORTED");
				 
				 childRules += strAnd+simpleChildRule;
				 
			 }
			 
			 String childBaseRule = tagchilds.get(j).replace(":", "_").toLowerCase()+"(";
			 childBaseRule+="ID"+strRecursiveParentName.replace(":", "_").toUpperCase()+", ";
			 childBaseRule+="ID"+tagchilds.get(j).replace(":", "_").toUpperCase();
			 if(bChildIsMixed || (!bChildHasOnlyAttributes && !bChildHasChildren))		 
				 childBaseRule+=", "+tagchilds.get(j).replace(":", "_").toUpperCase();
			 childBaseRule+=") ";
			 	 
			 childBaseRule =stringParser.replaceIDRule(childBaseRule,"IDCHILD"+strRecursiveParentName.replace(":", "_").toUpperCase());
			 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
				 childBaseRule =stringParser.replaceParentIDRule(childBaseRule,"CHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
			 
			 if(!orChildRule.isEmpty())
				 orChildRule += ";"+ childBaseRule;
			 else
				 orChildRule += childBaseRule;
		 }
		 
		 if(bHasChildren && !childRules.isEmpty())
		 {
			 String normalizedParent = strRecursiveParentName.replace(":", "_");
             String  modifiedBaseRule = baseRule;
             
             //Mixed Element
	             String strBaseMixedElement = "xmlMixedElement(";
	             strBaseMixedElement+="ID"+strParent.replace(":", "_").toUpperCase()+", ";
	             strBaseMixedElement+="IDxmlMixedElement".toUpperCase();
	             strBaseMixedElement =stringParser.replaceIDRule(strBaseMixedElement,"IDCHILD"+strParent.replace(":", "_").toUpperCase());
				 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
					 strBaseMixedElement =stringParser.replaceParentIDRule(strBaseMixedElement,"CHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
				 //orChildRule+=";"+strBaseMixedElement;
				 
                String simpleMixedElement = "xmlMixedElement(ID"+strRecursiveParentName.replace(":", "_").toUpperCase()+",IDxmlMixedElement".toUpperCase()+","+"xmlMixedElement".toUpperCase()+") ";
                simpleMixedElement = stringParser.replaceIDRule(simpleMixedElement,"IDCHILD"+strRecursiveParentName.replace(":", "_").toUpperCase()+"SORTED");
                //childRules+=";"+simpleMixedElement;
			 
			 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedBaseRule = stringParser.replaceIDRule(baseRule,"IDCHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
			  
			 strCompleteRule += "; "+"findall(IDCHILD"+normalizedParent.toUpperCase()+", ( "+modifiedBaseRule+", ("+orChildRule+") ) ";
             strCompleteRule+= ",LISTCHILD"+normalizedParent.toUpperCase()+") ";
			 strCompleteRule+= ",quick_sort(LISTCHILD"+normalizedParent.toUpperCase()+",LISTCHILD"+normalizedParent.toUpperCase()+"SORTED),member(IDCHILD"+normalizedParent.toUpperCase()+
					 "SORTED,LISTCHILD"+normalizedParent.toUpperCase()+"SORTED)";
			 
			 strCompleteRule += ", ("+ childRules+") ";
		 }
		 
		 if(strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!= 0)
		 {
			 String toReplace = strRecursiveGrandParentName.toUpperCase().replace(":", "_");
			 if(nVariableNumber > 0)		 
				 toReplace += nVariableNumber;
			 
			 strCompleteRule = strCompleteRule.replace("IDPARENT", "ID"+toReplace);
			 
			 strCompleteRule = strCompleteRule.replace(strRecursiveGrandParentName.replace(":", "_").toUpperCase(), toReplace);
		 }
		 
		 if(strCompleteRule.startsWith("; "))
		 {
			 strCompleteRule  = strCompleteRule.substring(strCompleteRule.indexOf("; ")+1,strCompleteRule.length()-1);
		 }
		 
		 return strCompleteRule;
	}
	
	private String insertAllRulesFromTag7(Document document, String strGrandParent, String strParent,int nVariableNumber,HashMap<String,Pair<Integer,Integer>> mapVisitedNodes,int nRecursionLevel)
	{
		 String strAllRules = "";
		 boolean bStopRecusrsion = false;
		 String strRecursiveParentName = strParent;
		 String strRecursiveGrandParentName = strGrandParent;
		 ArrayList<String>  completeRuleList = getRuleSchema(document,strParent,true);
		 //queryConvert+=" .";
		 RuleStringParser stringParser = new RuleStringParser();
		 String strCompleteRule = "";
		 boolean bMultRules = false;
		 
		 boolean bHasChildren = hasChildNodes(document, "element", strParent,strGrandParent,true);
		 boolean bHasOnlyAttributes = hasOnlyAttributes(document, "element", strParent,strGrandParent,true);
		 boolean bIsMixed = isMixed(document, "element", strParent,strGrandParent,true);
		 boolean bIsRoot = isRoot(document, "element", strParent);
		 boolean bHasChoiceChildren = hasAllChildrenChoice(document, "element", strParent,strGrandParent,true);
		 boolean bHasOnlyRequiredAttributes  = hasOnlyRequiredAttributes(document, "element", strParent,strGrandParent,true);
		 
		 /*if(mapVisitedNodes.isEmpty())
		 {
			 String tmpParent = strRecursiveParentName.replace(":", "_");
			 String tmpGrandParent = strRecursiveGrandParentName.replace(":", "_");
			 
			 strCompleteRule = " findall(ID"+tmpParent.toUpperCase()+"ORDERED, ("+tmpParent+"(ID"+tmpGrandParent.toUpperCase()+",ID"+tmpParent.toUpperCase()+"ORDERED);"+tmpParent+"(ID"+tmpGrandParent.toUpperCase()+",ID"+tmpParent.toUpperCase()+"ORDERED,"+tmpParent.toUpperCase()+")),LISTID"+tmpParent.toUpperCase()+"),"+
			 "quick_sort(LISTID"+tmpParent.toUpperCase()+",LISTID"+tmpParent.toUpperCase()+"SORTED),"+
			 " member(ID"+tmpParent.toUpperCase()+",LISTID"+tmpParent.toUpperCase()+"SORTED),";
		 }*/
		 
		 if(mapVisitedNodes.containsKey(strParent))
		 {
			 Pair<Integer,Integer> pair = mapVisitedNodes.get(strParent);
			 if(pair.getValue()>=1)
				 bStopRecusrsion = true;
		 }
		 
		 if(mapVisitedNodes.containsKey(strParent))
		 {
			 Pair<Integer,Integer> pair = mapVisitedNodes.get(strParent);
			 pair.setValue(pair.getValue()+1);
			 pair.setKey(pair.getKey()+1);
			 mapVisitedNodes.put(strParent, pair);
			 strRecursiveParentName+=pair.getKey();
		 }
		 else
			 mapVisitedNodes.put(strParent, new Pair<Integer, Integer>(1,1));
		 
		 if((mapVisitedNodes.containsKey(strGrandParent)) )
		 {
			 Pair<Integer,Integer> pair = mapVisitedNodes.get(strGrandParent);
			 if( pair.getKey()>1)
				 strRecursiveGrandParentName+=pair.getKey();
		 }
			 
			 
		 
		 
		 ArrayList<String> tagchilds = new ArrayList<String>();
		 if(bHasChildren)
		 {
			 Node nodeLastElement = getElementByTagName(document, "element", strParent,"IDNOPARENT",true); 
		 	 tagchilds = getChildsNodeNames( document, nodeLastElement);
		 }
		 
		 boolean bRuleAdded = false;
		 String idBaseRule = "";
		 String valueBaseRule = "";
		 if(tagchilds.size()>0 || bHasOnlyAttributes )
		 {
			 idBaseRule = strParent.replace(":", "_").toLowerCase()+"(";
			 if(!bIsRoot)
				 idBaseRule+="ID"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+", ";
			 idBaseRule+="ID"+strRecursiveParentName.replace(":", "_").toUpperCase();
			 
			 valueBaseRule = idBaseRule;
			 
			 //if(bIsMixed)		 
				 //baseRule+=", "+strRecursiveParentName.replace(":", "_").toUpperCase();
			 valueBaseRule+=", "+strRecursiveParentName.replace(":", "_").toUpperCase();
			 
			 idBaseRule+=") ";
			 valueBaseRule+=") ";
			 
			 
		 }
		  
		 int nRulesAdded = 0;
		 for(int i=0;i<completeRuleList.size();i++)
		 {
			 
			 if(!completeRuleList.get(i).contains("_attribute_"))
				 continue;
			 
			 String addRule = "";
			 
			 if(bHasChildren)
			 {
				 if(stringParser.getRuleParametersNumber(completeRuleList.get(i)) >2)
				 {
					 //String strToReplace = strGrandParent;
					 String strToReplace = strRecursiveParentName;
					 //strToReplace = strParent;
						 
					 addRule = stringParser.replaceParentIDRule(completeRuleList.get(i),strToReplace);
				 }
			 }
			 else
			 {
				 addRule= completeRuleList.get(i);	 
			 }
			 
			 if(!addRule.isEmpty())
			 {
				 String strJoin = ",";
				 //if(!baseRule.isEmpty() && nRulesAdded==0)
					 //strCompleteRule+=", (";
				 addRule = stringParser.replaceIDRule(addRule,"IDCHILDATTRIBUTE"+strRecursiveParentName.replace(":", "_").toUpperCase());
				 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
					 addRule = stringParser.replaceParentIDRule(addRule,"CHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
				 
				 if(bMultRules)
					 strJoin = "; ";
				 
				 if(bMultRules && bRuleAdded)
					 strCompleteRule+=strJoin+ addRule;
				 else
					 strCompleteRule+=addRule;
				 
				 nRulesAdded ++;
				 bMultRules= true;
				 if(!addRule.isEmpty())
					 bRuleAdded = true;
			 }
		 }
		 
		 if(bMultRules && nRulesAdded>1)
		 {
			 String bkpRule = strCompleteRule;
			 String  modifiedIDBaseRule = idBaseRule;
			 String  modifiedValueBaseRule = valueBaseRule;
			 
			 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedValueBaseRule = stringParser.replaceIDRule(valueBaseRule,"IDCHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
			 
			 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedIDBaseRule = stringParser.replaceIDRule(idBaseRule,"IDCHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
			 
			 
			 
			 String normalizedParent = strRecursiveParentName.replace(":", "_");
			 
			 String strTempRule = modifiedValueBaseRule;
			 
			 if(bIsMixed && bHasChoiceChildren)
				 strTempRule = modifiedIDBaseRule+";"+modifiedValueBaseRule;
				 else if(!bIsMixed)
					 strTempRule = modifiedIDBaseRule;
			 
			 strCompleteRule = " findall(IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+", ( ("+strTempRule+"),(  "+strCompleteRule+"  ";
			 
			 
			 if(bIsMixed && bHasChoiceChildren)
			 {
				 strCompleteRule+=") ; ("+stringParser.replaceIDRule(modifiedIDBaseRule,"IDCHILDATTRIBUTE"+normalizedParent.toUpperCase())+";"
						 +stringParser.replaceIDRule(modifiedValueBaseRule,"IDCHILDATTRIBUTE"+normalizedParent.toUpperCase());
			 }
			 else 
			 {
				 if(!bIsMixed)
				 {
					 if(!bHasChildren && !bHasOnlyRequiredAttributes)
					 {
						 strCompleteRule+=") ; ("+stringParser.replaceIDRule(modifiedIDBaseRule,"IDCHILDATTRIBUTE"+normalizedParent.toUpperCase());
					 }
				 }
				 else
				 {
					 if(!bHasChildren && !bHasOnlyRequiredAttributes)
					 {
						 strCompleteRule+=") ; ("+stringParser.replaceIDRule(modifiedValueBaseRule,"IDCHILDATTRIBUTE"+normalizedParent.toUpperCase());
								 
					 }
					 /*else
						 strCompleteRule+=")";*/
				 }
			 }
			 strCompleteRule+=") ) ";
			 
			 strCompleteRule+= ",LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+") ";
			 
			 //2º Passada- Ordenado
			 strCompleteRule+= ",quick_sort(LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+",LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED),member(IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+
					 "SORTED,LISTCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED)";
			 
             String strOrderedTempRule = modifiedValueBaseRule;
			 
			 if(bIsMixed && bHasChoiceChildren)
				 strOrderedTempRule = modifiedIDBaseRule+";"+modifiedValueBaseRule;
				 else if(!bIsMixed)
					 strOrderedTempRule = modifiedIDBaseRule;
			 
			 
			 strCompleteRule+= ", ( ("+strOrderedTempRule+")";
			 strCompleteRule+=",( "+ bkpRule.replace("IDCHILDATTRIBUTE"+normalizedParent.toUpperCase(), "IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED");
			 
			 //##########
			 String orderedBaseRule =  stringParser.replaceIDRule(modifiedValueBaseRule,"IDCHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
			 if(bIsMixed && bHasChoiceChildren)
				 orderedBaseRule =  "("+stringParser.replaceIDRule(modifiedIDBaseRule,"IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED")+"; "+stringParser.replaceIDRule(modifiedValueBaseRule,"IDCHILDATTRIBUTE"+normalizedParent.toUpperCase()+"SORTED")+")"; 
			 else if(!bIsMixed)
			 {
				 orderedBaseRule =  stringParser.replaceIDRule(modifiedIDBaseRule,"IDCHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
			 }
				
			 //orderedBaseRule =  stringParser.replaceParentIDRule(orderedBaseRule,"IDCHILD"+strGrandParent.replace(":", "_").toUpperCase()+"SORTED");
			 if(!bHasChildren && !bHasOnlyRequiredAttributes)
				 strCompleteRule+=") ;"+orderedBaseRule;
			 else
				 strCompleteRule+=")";
			 
			 strCompleteRule+=" ) ";
			 
		 }
		 else if(bMultRules)
		 {
			 String  modifiedIDBaseRule = idBaseRule;
			 String  modifiedValueBaseRule = valueBaseRule;
			 
			 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedIDBaseRule = stringParser.replaceIDRule(idBaseRule,"IDCHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
			 
			 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedValueBaseRule = stringParser.replaceIDRule(valueBaseRule,"IDCHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
			 
			 String parentRule =modifiedValueBaseRule; 
			 
			 if(bIsMixed && bHasChoiceChildren)
				 parentRule = modifiedIDBaseRule+";"+modifiedValueBaseRule;
			 else if(!bIsMixed)
					 parentRule = modifiedIDBaseRule;
			 
			 strCompleteRule = "( ( ("+parentRule+"),( "+strCompleteRule+") ) ; ("+parentRule+") ) ";
		 }
		 
		 if(nVariableNumber > 0 )
			 strCompleteRule = strCompleteRule.replace(strRecursiveParentName.toUpperCase(), strRecursiveParentName.toUpperCase()+nVariableNumber);
		 
		 String childRules = "";
		 String orChildRule = "";
		 for(int j=0; j< tagchilds.size();j++)
		 {
			 boolean bChildHasChildren = hasChildNodes(document, "element", tagchilds.get(j),strParent,true);
			 boolean bChildHasOnlyAttributes = hasOnlyAttributes(document, "element", tagchilds.get(j),strParent,true);
			 boolean bChildIsMixed = isMixed(document, "element", tagchilds.get(j),strParent,true);
			 boolean bChildHasChoiceChildren = hasAllChildrenChoice(document, "element",tagchilds.get(j), strParent,true);
			 boolean bChildHasOnlyRequiredAttributes  = hasOnlyRequiredAttributes(document, "element", tagchilds.get(j),strParent,true);
			 
			 String strAnd = "";
			 if(j>0 && !childRules.isEmpty())
				 strAnd = "; ";
			 
			 //if(mapVisitedNodes.containsKey( tagchilds.get(j)))
				 //mapVisitedNodes.put(strParent, mapVisitedNodes.get( tagchilds.get(j))+1);
			 
			 if((bChildHasChildren || bChildHasOnlyAttributes) && !bStopRecusrsion)
			 {
					 nRecursionLevel ++;
				     String childRule = insertAllRulesFromTag7(document, strParent, tagchilds.get(j),nVariableNumber,mapVisitedNodes,nRecursionLevel);
				     nRecursionLevel --;
				     
				     if(nRecursionLevel == 0)
				     {
				    	 for (String key : mapVisitedNodes.keySet()) 
				    	 {
				    		 Pair<Integer,Integer> pair = mapVisitedNodes.get(key);
				    		 if(key.compareToIgnoreCase(strParent)==0 || key.compareToIgnoreCase(strGrandParent)==0)
				    			 pair.setKey(0);
				    		 
							 pair.setValue(0);
							 mapVisitedNodes.put(key, pair);
				    	 }
				    	 
				    	 
				    		 
				    	
				     }
				     
					 if(!childRule.isEmpty())
						 childRules+=strAnd+  childRule;
			 }
			 else
			 {
				 String simpleChildRule = tagchilds.get(j).toLowerCase().replace(":", "_")+"(ID"+strRecursiveParentName.replace(":", "_").toUpperCase()+",ID"+tagchilds.get(j).toUpperCase()+","+tagchilds.get(j).toUpperCase()+") ";
				 if(bStopRecusrsion && (bChildHasChildren || bHasOnlyAttributes))
				 {
					 if(!bChildIsMixed)
						 simpleChildRule = tagchilds.get(j).toLowerCase().replace(":", "_")+"(ID"+strRecursiveParentName.replace(":", "_").toUpperCase()+",ID"+tagchilds.get(j).toUpperCase()+") ";		 
				 }
				 
				 simpleChildRule = stringParser.replaceIDRule(simpleChildRule,"IDCHILD"+strRecursiveParentName.replace(":", "_").toUpperCase()+"SORTED");
				 
				 childRules += strAnd+simpleChildRule;
				 
			 }
			 
			 String childBaseRule = tagchilds.get(j).replace(":", "_").toLowerCase()+"(";
			 childBaseRule+="ID"+strRecursiveParentName.replace(":", "_").toUpperCase()+", ";
			 childBaseRule+="ID"+tagchilds.get(j).replace(":", "_").toUpperCase();
			 if(bChildIsMixed || (!bChildHasOnlyAttributes && !bChildHasChildren))		 
				 childBaseRule+=", "+tagchilds.get(j).replace(":", "_").toUpperCase();
			 childBaseRule+=") ";
			 	 
			 childBaseRule =stringParser.replaceIDRule(childBaseRule,"IDCHILD"+strRecursiveParentName.replace(":", "_").toUpperCase());
			 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
				 childBaseRule =stringParser.replaceParentIDRule(childBaseRule,"CHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
			 
			 String orChildBaseRule ="";
			 if(bChildHasChoiceChildren)
			 {
				 boolean bHasValue =  bChildIsMixed || (!bChildHasOnlyAttributes && !bChildHasChildren);
				 if(bHasValue)
				 {
					 orChildBaseRule = tagchilds.get(j).replace(":", "_").toLowerCase()+"(";
					 orChildBaseRule+="ID"+strRecursiveParentName.replace(":", "_").toUpperCase()+", ";
					 orChildBaseRule+="ID"+tagchilds.get(j).replace(":", "_").toUpperCase()+") ";
					 
					 orChildBaseRule =stringParser.replaceIDRule(childBaseRule,"IDCHILD"+strRecursiveParentName.replace(":", "_").toUpperCase());
					 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
						 orChildBaseRule =stringParser.replaceParentIDRule(childBaseRule,"CHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
				 }
			 }
			 
			 if(!orChildBaseRule.isEmpty())
			 {
				 if(!orChildRule.isEmpty())
					 orChildRule += ";"+ "( "+childBaseRule+";"+orChildBaseRule+")";
				 else
					 orChildRule += "( "+childBaseRule+";"+orChildBaseRule+")";
			 }
			 else
			 {
				 if(!orChildRule.isEmpty())
					 orChildRule += ";"+ childBaseRule;
				 else
					 orChildRule += childBaseRule;	 
			 }
			 
		 }
		 
		 if(bHasChildren && !childRules.isEmpty())
		 {
			 String normalizedParent = strRecursiveParentName.replace(":", "_");
             //String  modifiedBaseRule = baseRule;
			 String  modifiedIDBaseRule = idBaseRule;
			 String  modifiedValueBaseRule = valueBaseRule;
             
             //Mixed Element
	             String strBaseMixedElement = "xmlMixedElement(";
	             strBaseMixedElement+="ID"+strRecursiveParentName.replace(":", "_").toUpperCase()+", ";
	             strBaseMixedElement+="IDxmlMixedElement".toUpperCase();
	             strBaseMixedElement =stringParser.replaceIDRule(strBaseMixedElement,"IDCHILD"+strRecursiveParentName.replace(":", "_").toUpperCase());
				 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
					 strBaseMixedElement =stringParser.replaceParentIDRule(strBaseMixedElement,"CHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
				 strBaseMixedElement+=","+"xmlMixedElement_".toUpperCase()+"IDCHILD"+strRecursiveParentName.replace(":", "_").toUpperCase();
				 strBaseMixedElement+= ") ";
						 
				//###
				 orChildRule+=";"+strBaseMixedElement;
				 
                String simpleMixedElement = "xmlMixedElement(ID"+strRecursiveParentName.replace(":", "_").toUpperCase()+",IDxmlMixedElement".toUpperCase()+","+"xmlMixedElement_".toUpperCase()+"IDCHILD"+strRecursiveParentName.replace(":", "_").toUpperCase()+") ";
                simpleMixedElement = stringParser.replaceIDRule(simpleMixedElement,"IDCHILD"+strRecursiveParentName.replace(":", "_").toUpperCase()+"SORTED");
                //###
                childRules+=";"+simpleMixedElement;
			 
			 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedIDBaseRule = stringParser.replaceIDRule(idBaseRule,"IDCHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
			 
			 if(strRecursiveGrandParentName.compareToIgnoreCase("IDNOPARENT")!=0 && strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!=0)
				 modifiedValueBaseRule = stringParser.replaceIDRule(valueBaseRule,"IDCHILD"+strRecursiveGrandParentName.replace(":", "_").toUpperCase()+"SORTED");
			  
			 strCompleteRule += "; "+"findall(IDCHILD"+normalizedParent.toUpperCase()+", ";
			 
			 
			 
			 String parentRule =modifiedValueBaseRule; 
			 
			 if(bIsMixed && bHasChoiceChildren)
				 parentRule = modifiedIDBaseRule+";"+modifiedValueBaseRule;
			 else if(!bIsMixed)
					 parentRule = modifiedIDBaseRule;
			 
			 if(!bMultRules) // Não tem atributos
			 {
				 strCompleteRule +="( ";
				 strCompleteRule += "( ("+parentRule+"), ("+orChildRule+") )";
				 strCompleteRule += " ; ";
				 
				 String tmpModifiedIDBaseRule = stringParser.replaceIDRule(modifiedIDBaseRule,"IDCHILD"+normalizedParent.toUpperCase());
				 String tmpModifiedValueBaseRule = stringParser.replaceIDRule(modifiedValueBaseRule,"IDCHILD"+normalizedParent.toUpperCase());
				 
				String  tmpParentRule=tmpModifiedValueBaseRule; 
				 
				 if(bIsMixed && bHasChoiceChildren)
					 tmpParentRule = tmpModifiedIDBaseRule+";"+tmpModifiedValueBaseRule;
				 else if(!bIsMixed)
					 tmpParentRule = tmpModifiedIDBaseRule;
				 
				 strCompleteRule += "("+tmpParentRule+")";
				 strCompleteRule +=") ";
			 }
			 else
				 strCompleteRule += "( ("+parentRule+") , ("+orChildRule+") )";
			 
			 
             strCompleteRule+= ",LISTCHILD"+normalizedParent.toUpperCase()+") ";
			 strCompleteRule+= ",quick_sort(LISTCHILD"+normalizedParent.toUpperCase()+",LISTCHILD"+normalizedParent.toUpperCase()+"SORTED),member(IDCHILD"+normalizedParent.toUpperCase()+
					 "SORTED,LISTCHILD"+normalizedParent.toUpperCase()+"SORTED)";
			 
			 if(!bMultRules) // Não tem atributos
			 {
			   strCompleteRule += ", ( ("+ childRules+") ";
			   
			   String tmpModifiedIDBaseRule = stringParser.replaceIDRule(modifiedIDBaseRule,"IDCHILD"+normalizedParent.toUpperCase()+"SORTED");
			   String tmpModifiedValueBaseRule = stringParser.replaceIDRule(modifiedValueBaseRule,"IDCHILD"+normalizedParent.toUpperCase()+"SORTED");
			   
			   
			   String  tmpParentRule=tmpModifiedValueBaseRule; 
				 
			  if(bIsMixed && bHasChoiceChildren)
				 tmpParentRule = tmpModifiedIDBaseRule+";"+tmpModifiedValueBaseRule;
			  else if(!bIsMixed)
				 tmpParentRule = tmpModifiedIDBaseRule;
			   
			   strCompleteRule += "; ("+tmpParentRule+") )";
			 }
			 else
				 strCompleteRule += ", ("+ childRules+") ";
		 }
		 
		 if(strRecursiveGrandParentName.compareToIgnoreCase("NOPARENT")!= 0)
		 {
			 String toReplace = strRecursiveGrandParentName.toUpperCase().replace(":", "_");
			 if(nVariableNumber > 0)		 
				 toReplace += nVariableNumber;
			 
			 strCompleteRule = strCompleteRule.replace("IDPARENT", "ID"+toReplace);
			 
			 strCompleteRule = strCompleteRule.replace(strRecursiveGrandParentName.replace(":", "_").toUpperCase(), toReplace);
		 }
		 
		 if(strCompleteRule.startsWith("; "))
		 {
			 strCompleteRule  = strCompleteRule.substring(strCompleteRule.indexOf("; ")+1,strCompleteRule.length());
		 }
		 
		 return strCompleteRule;
	}
	
	
	private String obtainAxisNamespace(Document document, String strFather, QueryElement element)
	{
		 String axisWildCard = "";
		 ArrayList<String>  completeRuleList = getRuleSchema(document,strFather,true);
		 boolean bPrevious = false;
		 String strCompleteRule  = "";
		 String strNamespaceName = "";
		 
		 if(element.hasOperator())
		 {
			 IExpression expression = element.getExpressionFormula();
			 if(expression instanceof OperatorEqual)
			 {
			    	OperatorEqual op = (OperatorEqual)expression;		    	
			    	IExpression left =	op.leftOperand();
			    	IExpression right =	op.rightOperand();
			    	
			    	//String namespaceToCompare = right.interpret();
			    	strNamespaceName = right.interpret();
			    	String namespace = left.interpret();
			    	
			    	if(strNamespaceName.contains("http://"))
			    	{
			    		String [] vetNamComp = strNamespaceName.split("\\/");
			    		if(vetNamComp.length>0)
			    			strNamespaceName = vetNamComp[vetNamComp.length-1];
			    	}
			    	
					 /*for (int i=0; i< completeRuleList.size();i++) 
					 {
						 String rule = completeRuleList.get(i);
						 
						 String [] splitRule = rule.split("\\(");
						 if(splitRule.length >0)
						 {
							 
							 String localName = splitRule[0];
							 if(splitRule[0].contains("_"))
							 {
								 String [] splitLocalName = localName.split("\\_"); 
								 if(splitLocalName.length ==2)
									 localName = splitLocalName[0];
							 }
							 
							 if(!(localName.compareToIgnoreCase(namespaceToCompare)==0))
								 continue;
							 
							 if(bPrevious)
								 strCompleteRule+="; ";	 
							 
							 strCompleteRule+=rule;
					    	 bPrevious = true;
						 }
					 }*/
			 }
		 }
		 else
		 { 
		      String strAxes = element.getElement();
		      if(strAxes.isEmpty())
		      {
		    	  if(element.hasFunction())
		    	  {
		    		  Function namespaceFunction = (Function)element.getExpressionFormula();
		    		  if(namespaceFunction.arguments().size()>0)
		    		  {
		    			  strAxes = Function.FUNCTION_NAMESPACE;
		    			  strAxes+= namespaceFunction.arguments().get(0).interpret();
		    		  } 
		    	  }
		    	   
		      }
			  String [] vetAxes = strAxes.split("\\::");
			 
			 if(vetAxes.length<2)
				 return axisWildCard;
					 
			 //String strNamespaceName = vetAxes[1];
			 strNamespaceName = vetAxes[1];
			 
			 //boolean bPrevious = false;
			 /*for (int i=0; i< completeRuleList.size();i++) 
			 {
				 String rule = completeRuleList.get(i);
				 
				 String [] splitRule = rule.split("\\(");
				 if(splitRule.length >0)
				 {
					 
					 String localName = splitRule[0];
					 if(splitRule[0].contains("_"))
					 {
						 String [] splitLocalName = localName.split("\\_"); 
						 if(splitLocalName.length ==2)
							 localName = splitLocalName[0];
					 }
					 
					 if(!(localName.compareToIgnoreCase(strNamespaceName)==0))
						 continue;
					 
					 if(bPrevious)
						 strCompleteRule+="; ";	 
					 
					 strCompleteRule+=rule;
			    	 bPrevious = true;
				 }
			 }*/
		 }
		 
		 List<String> alreadyInsertedTags = new ArrayList<String>();
		 for (int i=0; i< completeRuleList.size();i++) 
		 {
			 String rule = completeRuleList.get(i);
			 
			 //if(!rule.contains("_attribute_"))
				 //continue;
			 if(rule.contains("attribute_xmlns_"+strNamespaceName.toLowerCase()))
			 {
				 String [] vetAttributeName = rule.split("\\_attribute_xmlns_");
				 if(vetAttributeName.length >0 && !alreadyInsertedTags.contains(vetAttributeName[0]))
				   alreadyInsertedTags.add(vetAttributeName[0]);
			 }
			 
			 /*String [] splitRule = rule.split("\\(");
			 if(splitRule.length >0)
			 {
                String localName = splitRule[0]; 
				 if(rule.contains("attribute_xmlns_"+strNamespaceName.toLowerCase()))
				 {
					 String [] vetAttributeName = localName.split("\\attribute_xmlns_");
					 if(vetAttributeName.length >0 && !alreadyInsertedTags.contains(vetAttributeName[0]))
					   alreadyInsertedTags.add(vetAttributeName[0]);
				 }
			 }*/ 
		 }
		 
		 for (int j=0; j< alreadyInsertedTags.size();j++) 
		 {
			 String namespaceElement = alreadyInsertedTags.get(j);
			 boolean bHasChilds = hasChildNodes(document, "element", namespaceElement, "NOPARENT", false);
			 
			 
			 if(bPrevious)
				 strCompleteRule+="; ";
			 
			 if(isRoot(document,"element",namespaceElement))
				 strCompleteRule+= namespaceElement.toLowerCase()+"(ID"+namespaceElement.toUpperCase()+")";
			 else
			 {
				 if(bHasChilds)
					 strCompleteRule+=namespaceElement.toLowerCase()+"(_,ID"+namespaceElement.toUpperCase()+")";
				 else
					 strCompleteRule+=namespaceElement.toLowerCase()+"(_,ID"+namespaceElement.toUpperCase()+",_)";
			 }
				
			 bPrevious = true;
		 }
		  
		 
		 if(bPrevious)
			 axisWildCard =" setof(_,( ("+strCompleteRule+ "),! ),_) ";
		 
		 /*for (int i=0; i< completeRuleList.size();i++) 
		 {
			 String rule = completeRuleList.get(i);
			 
			 String [] splitRule = rule.split("\\(");
			 if(splitRule.length >0)
			 {
				 
				 String localName = splitRule[0];
				 if(splitRule[0].contains("_"))
				 {
					 String [] splitLocalName = localName.split("\\_"); 
					 if(splitLocalName.length ==2)
						 localName = splitLocalName[0];
				 }
				 
				 if(!(localName.compareToIgnoreCase(strNamespaceName)==0))
					 continue;
				 
				 if(bPrevious)
					 strCompleteRule+="; ";	 
				 
				 strCompleteRule+=rule;
		    	 bPrevious = true;
			 }
		 }
		 
		 
		 if(bPrevious)
			 axisWildCard =" setof(_,( "+strCompleteRule+ " ),_) ";*/
		
		return axisWildCard;
	}
	
	private String obtainLangTags(Document document, String strFather, String langToCompare)
	{
		String langTags = "";
		ArrayList<String>  completeRuleList = getRuleSchema(document,strFather,true);
		List<String> alreadyInsertedTags = new ArrayList<String>();
		boolean bPrevious = false;
		String strCompleteRule  = "";
		for (int i=0; i< completeRuleList.size();i++) 
		{
			 String rule = completeRuleList.get(i);
			 String strTag = "";
			 
			 if(rule.contains("attribute_xml_lang"))
			 {
				 String [] vetAttributeName = rule.split("\\_attribute_xml_");
				 if(vetAttributeName.length >0 && !alreadyInsertedTags.contains(vetAttributeName[0]))
				 {
				   alreadyInsertedTags.add(vetAttributeName[0]);
				   strTag = vetAttributeName[0];
				 }
			 }
			 
			 if(!strTag.isEmpty())
			 {
				 boolean bHasChilds = hasChildNodes(document, "element", strTag, "NOPARENT", false);
				 
				 
				 if(bPrevious)
					 strCompleteRule+="; ";
				 
				 if(isRoot(document,"element",strTag))
					 strCompleteRule+= "( "+strTag.toLowerCase()+"(ID"+strTag.toUpperCase()+")";
				 else
				 {
					 if(bHasChilds)
						 strCompleteRule+="( "+strTag.toLowerCase()+"(_,ID"+strTag.toUpperCase()+")";
					 else
						 strCompleteRule+="( "+strTag.toLowerCase()+"(_,ID"+strTag.toUpperCase()+",_)";
				 }
				 
				 String strTagLang=  strTag.toLowerCase()+"_attribute_xml_lang";
				 strCompleteRule+=", "+strTagLang+"(ID"+strTag.toUpperCase()+",ID"+strTagLang.toUpperCase()+","+strTagLang.toUpperCase()+") ";
				 strCompleteRule+= ", "+strTagLang.toUpperCase()+" = '"+langToCompare.replace("'", "")+"' ) ";
				 bPrevious = true;
			 }
		 }
		
		if(bPrevious)
			langTags =" setof(_,("+strCompleteRule+ "),_) ";
		
		return langTags;
	}
	
	private String invalidateTags(ArrayList<String> tagsToBeInvalidate)
	{
		String prologInvalidation = "";
		
		for(int i=0;i< tagsToBeInvalidate.size();i++)
		{
			prologInvalidation += "ID" +tagsToBeInvalidate.get(i).toUpperCase() + " is 0 ";
			
			prologInvalidation += ", ";
		}
		
		return prologInvalidation;
	}
	
	private ArrayList<String> getChildsNodeNames(Document document, Node node)
	{
		 
         //Node nodeLastElement = getElementByTagName(document, "element", nodeName);
         ArrayList<String> listaTags = new ArrayList<String>();
         if(node != null)
         {
        	 NodeList listChilds = node.getChildNodes();
        	 if(listChilds.getLength()<=0 )
        	 {
        		 if( node.hasAttributes())
     			 {
     				Node nodeType =  node.getAttributes().getNamedItem("type");
     				String typeElement = "";
     				if(nodeType != null)
     				 typeElement = nodeType.getNodeValue();
     				
     				String nameSpace = document.getDocumentElement().getPrefix();
     				if (!(typeElement.isEmpty()) && isComplexType(nameSpace, typeElement) )
     				{
     					Node nodeComplexType = getElementByTagName(document, "complexType",typeElement,"NOPARENT",true);
     					if (nodeComplexType!= null)
     					{
     						node = nodeComplexType;
     						listChilds = nodeComplexType.getChildNodes();
     					}
     				}
     			 }
        	 }
    		 
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
			
			Node nodeElement = getElementByTagName(document, "element",lastTagchilds.get(i),"NOPARENT",false);
			
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
	
	private  ArrayList<String> obtainAllTagsNames(Document doc)
	{
		HashMap<Document,HashMap<String, ArrayList<String>>> ruleHash = SchemaParser.getInstance().getRuleHash();
		
		ArrayList<String> ruleList = new ArrayList<String>();
		
		if(ruleHash.containsKey(doc))
		{
			 HashMap<String, ArrayList<String>> hashRuleNames = ruleHash.get(doc);
			 ruleList.addAll(hashRuleNames.keySet());
		}
		
		return ruleList;
	}
	
	protected ArrayList<String> getRuleSchema(Document doc, String ruleName, boolean considerNamespace )
	{
		HashMap<Document,HashMap<String, ArrayList<String>>> ruleHash = SchemaParser.getInstance().getRuleHash();
		
		ArrayList<String> ruleList = new ArrayList<String>();
		
		if(ruleHash.containsKey(doc))
		{
            HashMap<String, ArrayList<String>> hashRuleNames = ruleHash.get(doc);
			
            
            if(ruleName.compareToIgnoreCase("NOPARENT")==0)
            {
            	//Collection<ArrayList<String>> values =hashRuleNames.values();
            	
            	for(ArrayList<String> array : hashRuleNames.values())
            	{
            		ruleList.addAll(array);
            	}
            		
            	return ruleList;
            }
            
			
            if(considerNamespace)
            {
	            if(hashRuleNames.containsKey(ruleName.replace(":","_").trim()) || (ruleName.compareToIgnoreCase("IDNOPARENT")==0) )
				{
					ruleList =  new ArrayList<String>(hashRuleNames.get(ruleName.replace(":","_").trim()));
				}
	            
	            for (String key : hashRuleNames.keySet()) 
	        	{
	            	if(key.contains(ruleName.replace(":","_").trim().toLowerCase()+"_attribute_") && !ruleList.contains(key) )
	    		    {
	    		    	ruleList.addAll( hashRuleNames.get(key) );
	    		    }
	    			
	        	}
	            
            }
            else
            {
            	
            	/*if(hashRuleNames.containsKey(ruleName.trim()))
				{
					ruleList.addAll(hashRuleNames.get(ruleName.trim()));
				}*/
            	
            	for (String key : hashRuleNames.keySet()) 
            	{
            		//#############
            		if(key.contains(ruleName.trim().toLowerCase()+"_attribute_") && !ruleList.contains(key))
        		    {
        		    	ruleList.addAll( hashRuleNames.get(key) );
        		    }
            		else
            		{
            			if(key.contains("_"))
                		{
                			String [] list = key.split("_");
                			
                			if(list.length >1)
                			{
                				if(list[1].compareToIgnoreCase(ruleName)==0 || (ruleName.compareToIgnoreCase("IDNOPARENT")==0) )
                				{
                					//ruleList =  hashRuleNames.get(key);
                					//break;
                					ruleList.addAll(hashRuleNames.get(key));
                				}
                			}
                		}
                		else
                		{
                		    //if(hashRuleNames.containsKey(ruleName.trim()) || (ruleName.compareToIgnoreCase("IDNOPARENT")==0))
                		    if(key.compareToIgnoreCase(ruleName)==0)
            					ruleList.addAll(hashRuleNames.get(key));
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
	
	
	private Node getElementByTagName(Document _doc, String _typeElement, String _nameTypeElement,String _parentNameTypeElement,boolean bConsiderNamespaces){
		Node node = null;
		NodeList listElements = _doc.getElementsByTagNameNS("*", _typeElement);
		for ( int i = 0; i < listElements.getLength(); i++ ){
			Node elementNode = listElements.item(i);
			//String nameElement = elementNode.getNodeName();
			String nameElement = elementNode.getAttributes().getNamedItem("name").getNodeValue();
			
			if(bConsiderNamespaces)
			{
				if (nameElement.trim().compareToIgnoreCase(_nameTypeElement.trim())==0 )
				{
					boolean bOk = false;
					
					if(_parentNameTypeElement.trim().equals("NOPARENT") || _parentNameTypeElement.trim().equals("IDNOPARENT"))
						bOk= true;
					else
					{
						String parentNameElement =   getParentName(_doc,elementNode);
						
						if (parentNameElement.trim().compareToIgnoreCase(_parentNameTypeElement.trim())==0 || (parentNameElement.trim().equals("NOPARENT") || parentNameElement.trim().equals("IDNOPARENT")) )
							bOk= true;
					}
					
					if(bOk)
					{
						node = elementNode;
						break;
					}
				}
			}
			else
			{
				if(nameElement.contains(":"))
				{
					String [] list = nameElement.split(":");
					
					if(list.length>1)
					{
						if(list[1].trim().compareToIgnoreCase(_nameTypeElement.trim())==0)
						{
							boolean bOk = false;
							
							if(_parentNameTypeElement.trim().equals("NOPARENT")|| _parentNameTypeElement.trim().equals("IDNOPARENT"))
								bOk= true;
							else
							{
								String parentNameElement =   getParentName(_doc,elementNode);
								if(parentNameElement.contains(":"))
								{
									String [] listParent = parentNameElement.split(":");
									
									if(listParent.length>1)
									{
										if(listParent[1].trim().compareToIgnoreCase(_parentNameTypeElement.trim())==0)
											bOk= true;
									}
								}
								else
								{
									if (parentNameElement.trim().compareToIgnoreCase(_parentNameTypeElement.trim())==0  || (parentNameElement.trim().equals("NOPARENT") || parentNameElement.trim().equals("IDNOPARENT")) )
										bOk= true;
								}
							}
							
							if(bOk)
							{
								node = elementNode;
								break;
							}
						}
					}
				}
				else
				{
					if (nameElement.trim().compareToIgnoreCase(_nameTypeElement.trim())==0 )
					{
						boolean bOk = false;
						
						if(_parentNameTypeElement.trim().equals("NOPARENT") || _parentNameTypeElement.trim().equals("IDNOPARENT") )
							bOk= true;
						else
						{
							String parentNameElement =   getParentName(_doc,elementNode);
							String a = "";
							if (parentNameElement.trim().compareToIgnoreCase(_parentNameTypeElement.trim())==0 )
								bOk= true;
						}
						
						if(bOk)
						{
							node = elementNode;
							break;
						}
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
					Node nodeComplexType = getElementByTagName(doc, "complexType",typeElement,"NOPARENT",true);
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
		
		if (nodeList.size() <=0 )
		{
			listElements = _doc.getElementsByTagNameNS("*", "complexType");
			
			for (int i = 0; i < listElements.getLength(); i++) 
			{
				Node elementNode = listElements.item(i);
				
				if (elementNode.getAttributes().getNamedItem("name")!= null 
						&& elementNode.getAttributes().getNamedItem("name").getNodeValue().equals(_typeNameElement))
				{
					//break;
					nodeList.add(elementNode);
				}
			}
		}
		
		
		return nodeList;
	}
	
	
	private ArrayList<Node> getComplexTypeNodeChilds(Document _doc, Node nodeBegin)
	{
		ArrayList<Node> childList = new ArrayList<Node>();
		
		NodeList listElements = nodeBegin.getChildNodes();
		
		ArrayList<Node> arrayListElements = new ArrayList<Node>();
		
		
		if(listElements.getLength()<=0 && nodeBegin.getAttributes().getLength()>0)
		{
			String typeName = nodeBegin.getAttributes().getNamedItem("type").getNodeValue();
			ArrayList<Node> nodeList =  getNodeByName(_doc,typeName);
			if(nodeList.size() > 0)
				listElements = nodeList.get(0).getChildNodes();
		}
		
		
		for(int i=0;i<listElements.getLength();i++)
		{
			arrayListElements.add(listElements.item(i));
		}
		
		for(int i=0;i<arrayListElements.size();i++)
		{
			Node nodeElement = arrayListElements.get(i);
			String nameSpace = _doc.getDocumentElement().getPrefix();
			String nodeName = nodeElement.getNodeName();
			if(nodeName.indexOf("sequence") > -1)
			{
				for(int j= 0; j<nodeElement.getChildNodes().getLength();j++)
					arrayListElements.add(nodeElement.getChildNodes().item(j));
				
				continue;
			}
			
			if(nodeName.indexOf("choice") > -1)
			{
				for(int j= 0; j<nodeElement.getChildNodes().getLength();j++)
					arrayListElements.add(nodeElement.getChildNodes().item(j));
				
				continue;
			}
			
			if(nodeElement.hasAttributes() && 
					nodeElement.getAttributes().getNamedItem("name") != null)
				nodeName = nodeElement.getAttributes().getNamedItem("name").getNodeValue();
			else
				continue;
			
			
			if(nodeElement.getAttributes().getLength()>0)
			{
				String typeName = nodeElement.getAttributes().getNamedItem("type").getNodeValue();
				ArrayList<Node> nodeList =  getNodeByName(_doc,typeName);
				if(nodeList.size() > 0)
				{
					childList.add(nodeElement);
					//childList.addAll( getComplexTypeNodeChilds(_doc, nodeElement));
				}
			}
			
			
			//if(isComplexType(nodeName,nameSpace))
			/*if(isNodeComplexType(nodeElement))
			{
				childList.add(nodeElement);
			}
			else
			{
				ArrayList<Node> tmpList = getComplexTypeNodeChilds(_doc, nodeElement);
				if(tmpList.size()>0)
				{
					childList.add(nodeElement);
					childList.addAll(tmpList);
				}
			}*/
			
		}
		
		return childList;
	}
	
	private ArrayList<String> getRulesByLevel2(Document _doc,String _nameElementBegin, int _nLevel)
	{
		//Node nodeBegin = getNodeByName(_doc,_nameElementBegin);
		ArrayList<String> pathArray = new ArrayList<String>();
		ArrayList<Node> nodeList = getNodeByName(_doc,_nameElementBegin);
		boolean bComplexType = false;
		if(nodeList.size()<=0)
		{
              nodeList = getComplexNodeByName(_doc,_nameElementBegin);
              bComplexType= true;
		}
		
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
	
	
	
	private String getWildCardQuery(Document doc, String strCommomParent, int nWildCardLevel,int nCompareTag)
	{
		 //List<String> listaRegras = getRulesByLevel(document,strLastCommonParent,element.getElement(),nWildCardLevel);
		List<String> listaRegras = new ArrayList<String>();
		//int nInitialCount = 1; 
		if(strCommomParent.compareToIgnoreCase("NOPARENT")==0)
		{
			listaRegras = getRuleSchema(doc,strCommomParent,false);
			//nInitialCount = 0;
			String strWild =  " setof(_,(";
			int nPos = 0;
			for(String string : listaRegras) 
			{
				strWild+= string;
				
				if(nPos+1 < listaRegras.size())
					strWild+=" , ! ; ";
				
				nPos++;
			}
			strWild+="),_) ";
			return strWild;
		}
		else
		{
			listaRegras = getRulesByLevel2(doc,strCommomParent,nWildCardLevel+1);
			//listaRegras = getRulesByLevel2(doc,strCommomParent,nWildCardLevel);
		}
		 
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
			 //for(int j=1;j<itemArray.length;j++)
			 for(int j=0;j<itemArray.length;j++)
			 {
				 //if(isComplexType(doc.getDocumentElement().getPrefix(), itemArray[j]))
				   //continue; 
				 
				 //if(j!=1)
				 if(j!=0)
					 tmpWild+=" , ";
					 //strWild+=" , "; 
				 
				 String strChildRule = getQueryPrologFromSchema3(doc,"element",itemArray[j],strParent);
				 if(nCompareTag>0)
				 {
					 strChildRule = strChildRule.replace("ID"+strParent.toUpperCase(), "ID"+strParent.toUpperCase()+nCompareTag);
					 strChildRule = strChildRule.replace(itemArray[j].toUpperCase(), itemArray[j].toUpperCase()+nCompareTag);
					 //strChildRule = strChildRule.replace("ID"+itemArray[j].toUpperCase(), "ID"+itemArray[j].toUpperCase()+nCompareTag);
				 }
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
	
	private String obtainPrecedinOrFollowingRules(Document document,String mainQuery ,QueryElement element,String strLastCommonParent,String strLastCommonGrandParent
			,int[] nCompareTag,boolean bHasUsedWildCard,String strLastWildCardItem,int nLastWildCardLevel )
	{
		String strResult = "";
		
		if(element.getElement().toLowerCase().contains("preceding::") || element.getElement().toLowerCase().contains("following::") )
		 {
			
			String strSplit = "preceding::";
			String strOperator = " > ";
			if(element.getElement().toLowerCase().contains("following::"))
			{
				strSplit ="following::";
				strOperator = " < ";
			}
			
			
			 String[] filterSiblingArray = element.getVariable().split(strSplit);
			 if(filterSiblingArray.length > 1)
			 {
				 nCompareTag[0]++;
				 String CompareTag = filterSiblingArray[1];
				 String commonParent = strLastCommonParent;
				 String tempQuery = "";
				 
				 if(bHasUsedWildCard && commonParent.trim().equalsIgnoreCase(strLastWildCardItem))
				 {
					 QueryElement tmpElement  = new QueryElement();
					 tmpElement.parseElement(CompareTag);
					 tempQuery = getWildCardRules(document, tmpElement,strLastCommonGrandParent, nLastWildCardLevel,nCompareTag[0]);
				 }
				 else
				 {
					 if(commonParent.trim().equalsIgnoreCase(CompareTag))
						 commonParent = strLastCommonGrandParent;
					 
					 tempQuery = getQueryPrologFromSchema3(document,"element",CompareTag,commonParent);
					 tempQuery = tempQuery.replace(CompareTag.toUpperCase(), CompareTag.toUpperCase()+nCompareTag[0]);
					 tempQuery = tempQuery.replace(commonParent.toUpperCase(), commonParent.toUpperCase()+nCompareTag[0]);
				 }
				 
				 strResult+=tempQuery;
				 strResult +=", ID"+CompareTag.toUpperCase() +strOperator+" ID"+CompareTag.toUpperCase()+nCompareTag[0];
			 }
		 }
		 else if(element.getElement().toLowerCase().contains("preceding-sibling::") || element.getElement().toLowerCase().contains("following-sibling::"))
		 {
			    String strSplit = "preceding-sibling::";
				String strOperator = " < ";
				String strPrologVariable = "preceding";
				if(element.getElement().toLowerCase().contains("following-sibling::"))
				{
					strSplit ="following-sibling::";
					strOperator = " > ";
					strPrologVariable = "following";
				}	
			 
			 
				String[] filterSiblingArray = element.getVariable().split(strSplit);
				if(filterSiblingArray.length > 1)
				{
					nCompareTag[0]++;
					String strFilterSibling = filterSiblingArray[1];
					String commonParent = strLastCommonParent;
					String tempQuery = "";
					if(commonParent.trim().equalsIgnoreCase(strFilterSibling))
						commonParent = strLastCommonGrandParent;
					
					if(bHasUsedWildCard && commonParent.trim().equalsIgnoreCase(strLastWildCardItem))
					{
						QueryElement tmpElement  = new QueryElement();
						tmpElement.parseElement(strFilterSibling);
						tempQuery = getWildCardRules(document, tmpElement,commonParent, nLastWildCardLevel,nCompareTag[0]);
					}
					else
					{
						tempQuery = getQueryPrologFromSchema3(document,"element",strFilterSibling,commonParent);	
					}
					
					tempQuery = tempQuery.replace(strFilterSibling.toUpperCase(), strFilterSibling.toUpperCase()+nCompareTag[0]);
					
					mainQuery = " findall(ID"+strFilterSibling.toUpperCase()+", ("+mainQuery;
					int nComma = mainQuery.lastIndexOf(", ");
					if(nComma != -1)
						mainQuery = mainQuery.substring(0, nComma);
					
					mainQuery+=") , "+strPrologVariable.toUpperCase()+"LIST), preceding("+strPrologVariable.toUpperCase()+"LIST,"+strPrologVariable.toUpperCase()+"FINALLIST), member(ID"+strFilterSibling.toUpperCase()+nCompareTag[0]+", "+strPrologVariable.toUpperCase()+"FINALLIST)";
					
					strResult+=" ,"+tempQuery;
					nCompareTag[0]++;
					tempQuery = getQueryPrologFromSchema3(document,"element",strFilterSibling,commonParent);
					tempQuery = tempQuery.replace(strFilterSibling.toUpperCase(), strFilterSibling.toUpperCase()+nCompareTag[0]);
					strResult+=" ,"+tempQuery;
					strResult +=", ID"+strFilterSibling.toUpperCase()+(nCompareTag[0]-1) +strOperator+" ID"+strFilterSibling.toUpperCase()+nCompareTag[0];
					
					//##queryConvert += tempQuery;
					//##queryConvert +=", ID"+strFilterSibling.toUpperCase()+nCompareTag +" < ID"+strFilterSibling.toUpperCase(); 
					//bSibling = true;
				}
		 }
		 
		return strResult;
	}
	
	
	
	private String getWildCardRules(Document document, QueryElement element,String strLastCommonParent, int nWildCardLevel,int nCompareTag)
	{
		
		 String strWildCardRules = "";
		 if(strLastCommonParent.compareToIgnoreCase("NOPARENT")!=0)
		 {
			 strWildCardRules +=getWildCardQuery(document,strLastCommonParent,nWildCardLevel,nCompareTag);
		 }
		 else
		 {
			 ArrayList<String>  completeRuleList = getRuleSchema(document,strLastCommonParent,true);
			 String strCompleteRule  = "";
			 if(completeRuleList.size()>1)
			 {
				 strCompleteRule= " setof(_,( ";
			 }
			 
			 boolean bPrevious = false;
			 
			 for (int j=0; j< completeRuleList.size();j++) 
			 {
				  

				 String rule= completeRuleList.get(j);
				 if(element.getVariable().contains("@"))
				 {
					 String elementName = element.getVariable().replace("@", "");
					 if(rule.contains("_attribute_"+elementName.trim()))
					 {
					     String [] splitRule = rule.split("_attribute_"+elementName.trim());
					     if(splitRule.length >0)
					     {
					    	 if(bPrevious)
								 strCompleteRule+="; ";	 
					    	 
					    	 strCompleteRule += getQueryPrologFromSchema3(document,"element",splitRule[0],"_");
					    	 String  currentElementRule =getQueryPrologFromSchema3(document,"element",element.getVariable(),splitRule[0]);
					    	 //strWildCardItem = element.getVariable();
					    	 strCompleteRule +=" , "+currentElementRule;
					    	 bPrevious = true;
					     }
						 
					 } 
				 }
				 else
				 {
					 String [] splitRule = rule.split("\\(");
					 if(splitRule.length >0)
					 {
						 if(bPrevious)
							 strCompleteRule+="; ";	 
						 
						 strCompleteRule+=rule; 
						 String  currentElementRule =getQueryPrologFromSchema3(document,"element",element.getElement(),splitRule[0]);
						 //strWildCardItem = element.getElement();
				    	 strCompleteRule +=" , "+currentElementRule;
				    	 bPrevious = true;
					 }
				 }
				
			 }
			 
			 if(completeRuleList.size()>1)
				 strCompleteRule +=" ),_) ";
			 
			 strWildCardRules += strCompleteRule;
		 }
		 
		 return strWildCardRules;
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
	
	
	private ArrayList<String> getTagParents(Document _doc, String strCommomLeaf, int nUpLevel)
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
		}
		
		return tagList;
	}
	
	
	private ArrayList<String> getAncestorRule(Document _doc, String startTag, String targetTag,ArrayList<String> visitedTags)
	{
        ArrayList<String> tagList = new ArrayList<String>();
		
		ArrayList<Node> nodeList = getNodeByName(_doc,startTag);
		
		if(nodeList.isEmpty())
			return tagList;
		
		String nameSpace = _doc.getDocumentElement().getPrefix();
		//String strParent = strCommomLeaf;
		
		
		Node fatherNode = null;
		
		for(int j=0; j<nodeList.size();j++)
		{
			Node nodeBegin = nodeList.get(j);
			String strRule = "";
			for(int i=0;i<1000;i++)
			{	
				String strNodeName = nodeBegin.getAttributes().getNamedItem("name").getNodeValue();
				if(strNodeName.compareToIgnoreCase(targetTag)==0)
					break;
				
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
		
//		//Node nodeBegin = getNodeByName(_doc,_nameElementBegin);
//				ArrayList<String> pathArray = new ArrayList<String>();
//				ArrayList<Node> nodeList = getNodeByName(_doc,startTag);
//				boolean bComplexType = false;
//				if(nodeList.size()<=0)
//				{
//		              nodeList = getComplexNodeByName(_doc,startTag);
//		              bComplexType= true;
//				}
//				
//				boolean bBrake = false;
//				//for (int i = 0; i <_nLevel; i++)]
//				while(!bBrake)
//				{
//					
//					ArrayList<Node> listElements = new ArrayList<Node>();
//					ArrayList<Node> listTmp = getComplexTypeNodeChilds(_doc,nodeList.get(0));
//					if(listTmp != null)
//						listElements.addAll(listTmp);	
//					/*for(int l=0; l<nodeList.size();l++)
//					{
//						ArrayList<Node> listTmp = getComplexTypeNodeChilds(_doc,nodeList.get(l));
//						if(listTmp != null)
//							listElements.addAll(listTmp);	
//					}*/
//					
//					
//					if(listElements.size()<=0)
//						bBrake = true;
//
//					String strPath = "";
//					boolean alreadyVisited = true;
//					for(int j= 0; j<listElements.size();j++)
//					{
//						Node nodeChild = listElements.get(j);
//						strPath = nodeChild.getAttributes().getNamedItem("name").getNodeValue();
//						
//						if(visitedTags.contains(strPath))
//							continue;
//						
//						//int newLevel = _nLevel -1;
//						//_nLevel --;
//						//if(newLevel >0)
//						visitedTags.add(strPath);
//						alreadyVisited = false;
//						if(strPath.compareToIgnoreCase(targetTag)!=0)
//						{
//							ArrayList<String> childPathArray = getAncestorRule(_doc,strPath, targetTag,visitedTags);
//							for(int k=0;k<childPathArray.size();k++)
//							{
//								String newPath = strPath+"/"+childPathArray.get(k);
//								if(bComplexType)
//									newPath = "/"+childPathArray.get(k);
//								
//								//int nCount = newPath.length() - newPath.replace("/", "").length();
//								if(strPath.compareToIgnoreCase(targetTag)==0)
//									bBrake = true;
//								pathArray.add(newPath);
//							}
//							if(childPathArray.size()<=0)
//								pathArray.add(strPath+"/");
//						}
//						else
//						{
//							pathArray.add(strPath);
//						}
//						
//					}
//					
//					if(alreadyVisited)
//						bBrake =true;
//				}
//				
//				return pathArray;
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
		
		
		if(nodeParent != null && (nodeParent.getNodeName().toLowerCase().indexOf("sequence") > -1 || 
				nodeParent.getNodeName().toLowerCase().indexOf("choice") > -1))
		{
			nodeParent = nodeParent.getParentNode();
		}
		
		if(nodeParent != null)
		{	
			if(nodeParent.hasAttributes())
			{
				Node nodeParentName = nodeParent.getAttributes().getNamedItem("name");
				if (nodeParentName != null)
				{
					String nameElement = "";
					nameElement = nodeParentName.getNodeValue();
					
					if (!(nameElement.isEmpty()))
					{
						//if(isComplexType(nameSpace, nameElement))]
						if(isNodeComplexType(nodeParent))
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
		}
		
		return nodeParent;
			
	}
	
	
	private String allTagRules(Document document, String strTag, String strTagParent,boolean bWildCard,boolean bConsiderNamespaces ,String StrCurrentPrologQuery) 
	{
		
		 ArrayList<String>  completeRuleList = getRuleSchema(document,strTag,bConsiderNamespaces);
		 //queryConvert+=" .";
		 String strCompleteRule = "";
		 boolean bMultRules = false;
		 
		 boolean bHasChildren = hasChildNodes(document, "element", strTag,strTagParent,bConsiderNamespaces);
		 
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
		 
		 boolean bHasChildren = hasChildNodes(document, "element", strNamespaceTag,strTagParent,bConsiderNamespaces);
		 
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
	
	
	private String parseDivMathExpression(List<String> listArgs,Document document,String strTagFather,int[] nPositionVet)
	{
		List<Pair<Integer,Integer>> pairParenthesisList = mapParenthsis(listArgs.toString());
		String strMathResult = "";
		StringBuilder sbMathResult = new StringBuilder("");
		List<String> listArgsAux = listArgs;
		
		if(listArgs.contains("+")||listArgs.contains("-"))
		{
			int index = listArgs.indexOf("+");
			String operator = "+";
			if(index == -1 )
			{
				index = listArgs.indexOf("-");
				operator = "-";
			}
			
			String argLeft = listArgsAux.get(index-1);
			String argRight = listArgsAux.get(index+1);
			
			listArgsAux.remove(argLeft);
			listArgsAux.remove(argRight);
			listArgsAux.remove(operator);
			
			String outArg = listArgs.get(0);
			
            for(int i=0;i< listArgs.size();i++)
            {
            	 String arg = listArgs.get(i);
            	 
            	 if(arg.trim().compareTo("(")==0 || arg.trim().compareTo(")")==0 || arg.trim().length()<=0)
            		 continue;
				 
            	 outArg = arg;
            	 
				 boolean bArgIsresult = arg.toUpperCase().contains(Function.FUNCTION_RESULT); 
				 
				 if(arg.toUpperCase().compareTo(strTagFather)!=0
						&& !bArgIsresult)
				{
				    if(arg.contains("/") && !arg.contains("'"))
				    {
				       String [] vetArgs =  arg.split("/");
				       String strTempFather = strTagFather;
				       String strPreviousRules = "";
				       for(int j=0;j<vetArgs.length;j++)
				       {
				    	   
				    	   if(vetArgs[j].toUpperCase().compareTo(strTagFather)!=0)
				    	   {
				    		   
				    		   if(j+1 == vetArgs.length)
				    		   {   
				    			   sbMathResult.insert(0, vetArgs[j]);
				    		   }
				    		   else
				    		   {
				    			   strPreviousRules += getQueryPrologFromSchema3(document,"element",vetArgs[j],strTempFather)+", ";
				    			   strTempFather = vetArgs[j];   
				    		   }
				    	   }
				       }
				       
				       sbMathResult.append(strPreviousRules);
				    }
				    else
				    {
						sbMathResult.append(getQueryPrologFromSchema3(document,"element",arg,strTagFather)+", ");
				    }
				    
				}
				/*else
			    {
					sbMathResult.append(arg);
					if(i+1 < listArgs.size())
						sbMathResult.append(", ");
			    }*/
            }
			
			//boolean bArgIsresult = argLeft.toUpperCase().contains(Function.FUNCTION_RESULT);
			
            String strMathResultVariable = Function.FUNCTION_RESULT+String.valueOf(nPositionVet[0]);
			sbMathResult.append(strMathResultVariable + " is "+argLeft+" "+operator+" "+argRight);
			
			listArgs.remove("(");
			listArgs.remove(")");
		}
		return sbMathResult.toString();
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

