package wrapper;

import java.security.acl.LastOwnerException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;

import javax.swing.text.html.HTMLDocument.HTMLReader.IsindexAction;
import javax.swing.text.html.parser.AttributeList;

import br.ufrj.ppgi.parser.DocumentParser;
import br.ufrj.ppgi.parser.RuleStringParser;
import br.ufrj.ppgi.parser.SchemaParser;
import wrapper.QueryElement;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

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
				else
				{
					QueryElement queryElement = new QueryElement();
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
					
					arrayElementsQuery.add(queryElement);
					if(!queryElement.isFilterpart())
					{
						strLastItem = queryElement.getElement();
						bFilter = false;
					}	
				}
				
				
			}
			
			if(posFilter==-1)
			{	
			  posInit = posBar + 1;
			  posBar = tempQuery.indexOf("/", posInit);
			}
			else
			{
				posInit = posFilter +1;
				posBar = tempQuery.indexOf("/", posInit+1);
			}
			//posBar = tempQuery.indexOf("/", posInit);
			
		}		
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
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement);
		
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
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement);
		
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
			if ( nodeElement.getChildNodes().getLength() <= 0 )
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
        Node nodeElement = getElementByTagName(document, typeSchema, nameElement);
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
	
	
	public boolean hasChildNodes(Document document, String typeSchema, String nameElement)
	{
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement);
		
		if ( nodeElement == null )
			return false;
		
		if ( nodeElement.getChildNodes().getLength() != 0 )
			return true;
		
		return false;
	}
	
	
	public boolean isRoot(Document document, String typeSchema, String nameElement)
	{
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement);
		
		if ( nodeElement == null )
			return false;
		
	    Node root = getRootElement(document);
		
		if(root.isSameNode(nodeElement))
			return true;
		
		return false;
	}
	
	protected String convertQuery( String query )
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
		boolean  bWildCard = false;
		Document document = null;
		int nWildCardLevel = 0;
		int nRefParent = 0;
		ArrayList<String> listaTags = new ArrayList<String>();
		for (String name : values)
		{
			document = documentList.get(name);
			normalizeTreeDocument(document);
			
			strLastCommonParent = "NOPARENT";
			strLastCommonGrandParent = "NOGRANDPARENT";
			bWildCard = false;
			for ( int i=0; i<arrayElementsQuery.size();i++ ) 
			{
				
				QueryElement element = arrayElementsQuery.get(i);
				if(!element.isFilterpart())
				{
					 //queryConvert +=getQueryPrologFromSchema3(document,"*",element.getElement(),strLastCommonFather);
					 if(element.getElement().compareTo("*")==0)
					 {
						 nWildCardLevel++;
						 continue;
					 }
					 
					 if(element.getElement().compareTo("..")==0)
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
						 strLastCommonGrandParent = strLastCommonParent;
						 strLastCommonParent = element.getElement();
						 listaTags.add(strLastCommonParent);
					 }
					 else
					 {
						 queryConvert +=getQueryPrologFromSchema3(document,"element",element.getElement(),strLastCommonParent);
						 strLastCommonGrandParent = strLastCommonParent;
						 strLastCommonParent = element.getElement();
						 listaTags.add(strLastCommonParent);
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
									queryPos.setHasChildren(hasChildNodes(document, "element", queryPos.getItemFilter()));
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
							queryPos.setHasChildren(hasChildNodes(document, "element", queryPos.getItemFilter()));
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
						    
							queryConvert += element.getExperimentalFormula(strLastCommonParent);
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
			 if(nWildCardLevel >0)
			 {
				 queryConvert += getWildCardQuery(document,strLastCommonParent,nWildCardLevel);	 
			 }
			 else if (nRefParent >0)
			 {
				 queryConvert = getRulesBottomUp(document,strLastCommonParent,nRefParent);
			 }
			 
			 queryConvert += ".";
		 }
		 else
		 {  
				 ArrayList<String>  completeRuleList = getRuleSchema(document,strLastCommonParent);
				 queryConvert+=".";
				 String strCompleteRule = "";
				 boolean bMultRules = false;
				 
				 boolean bHasChildren = hasChildNodes(document, "element", strLastCommonParent);
				 
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
						 bMultRules= true;
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
				 
				 queryConvert = queryConvert.replace( ", ." , ".");
				 
				 if(bMultRules && !strCompleteRule.isEmpty())
					 queryConvert = queryConvert.replace(".", ", "+strCompleteRule+".");
				 
				 queryConvert = queryConvert.replace( "." , "");

		 }
		 
		 String tags = "";
		 ArrayList<String> listaVar = new ArrayList<String>();
		 
		 String lastTag = listaTags.get(listaTags.size()-1);
		 Node nodeLastElement = getElementByTagName(document, "element", lastTag);
		 //listaTags.clear();
		 //listaTags.add(lastTag);
		 listaTags.addAll(getChildsNodeNames( document, nodeLastElement));
		 
		 
		 for(int i=0; i< listaTags.size();i++)
		 {
			 tags+="'"+listaTags.get(i)+"'";
			 
			 Node nodeElement = getElementByTagName(document, "element", listaTags.get(i));
			 if(nodeElement.getChildNodes().getLength()<=0)
				 listaVar.add(listaTags.get(i).toUpperCase());
			 else
				 listaVar.add("ID"+listaTags.get(i).toUpperCase());
			 
			 if(i+1<listaTags.size())
				 tags+=", ";
		 }
		 
		 
		 String finalQuery =   "printXML([";
		 
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
		 
		 //ARVORE PROLOG
		 finalQuery+=" ("+getPrologTree(document)+") ";
		 finalQuery+=", ("+queryConvert.replace(".", "")+") ).";
		 
		 return finalQuery; 
	}
	
	
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
	
	protected ArrayList<String> getRuleSchema(Document doc, String ruleName)
	{
		HashMap<Document,HashMap<String, ArrayList<String>>> ruleHash = SchemaParser.getInstance().getRuleHash();
		
		ArrayList<String> ruleList = new ArrayList<String>();
		
		if(ruleHash.containsKey(doc))
		{
            HashMap<String, ArrayList<String>> hashRuleNames = ruleHash.get(doc);
			
			if(hashRuleNames.containsKey(ruleName.trim()))
			{
				ruleList =  hashRuleNames.get(ruleName.trim());
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
	
	
	private Node getElementByTagName(Document _doc, String _typeElement, String _nameTypeElement){
		Node node = null;
		NodeList listElements = _doc.getElementsByTagNameNS("*", _typeElement);
		for ( int i = 0; i < listElements.getLength(); i++ ){
			Node elementNode = listElements.item(i);
			//String nameElement = elementNode.getNodeName();
			String nameElement = elementNode.getAttributes().getNamedItem("name").getNodeValue();
			
			if (nameElement.equals(_nameTypeElement) ){
				node = elementNode;
				break;
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
					Node nodeComplexType = getElementByTagName(doc, "complexType", typeElement);
					if (nodeComplexType!= null && !isChild( elementNode, nodeComplexType) )
					{
					//if (!isChild( elementNode, nodeComplexType) ){
						elementNode.appendChild(nodeComplexType);
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
	
	
	private Node getComplexNodeByName(Document _doc,String _nameElement)
	{
		Node nodeReturn = null;
		NodeList listElements = _doc.getElementsByTagNameNS("*", "complexType");
		for (int i = 0; i < listElements.getLength(); i++) 
		{
			Node elementNode = listElements.item(i);
			
			if (elementNode.getAttributes().getNamedItem("name")!= null 
					&& elementNode.getAttributes().getNamedItem("name").getNodeValue().equals(_nameElement))
			{
				nodeReturn = elementNode;
				break;
			}
		}
		
		return nodeReturn;
	}
	
	
	private ArrayList<Node> getNodeByName(Document _doc,String _typeNameElement)
	{
		Node nodeReturn = null;
		NodeList listElements = _doc.getElementsByTagNameNS("*", "element");
		ArrayList<Node> nodeList = new ArrayList<Node>();
		for (int i = 0; i < listElements.getLength(); i++) 
		{
			Node elementNode = listElements.item(i);
			
			if (elementNode.getAttributes().getNamedItem("name")!= null 
					&& elementNode.getAttributes().getNamedItem("name").getNodeValue().equals(_typeNameElement))
			{
				
				if(elementNode.getAttributes().getNamedItem("type") != null)
				{
					String typeName = elementNode.getAttributes().getNamedItem("type").getNodeValue();
					if(getComplexNodeByName(_doc,typeName) != null)
					{
						nodeReturn = getComplexNodeByName(_doc,typeName);
					}
					else
					{
						nodeReturn = elementNode;
					}
					 
;				}
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
		 List<String> listaRegras = getRulesByLevel2(doc,strCommomParent,nWildCardLevel);
		 String strWild =  " setof(_,";
		 int nCountItem =0;
		 for (String string : listaRegras) 
		 {
			 
			 String[] itemArray = string.split("/");
			 strWild+="( ";
			 String strParent = strCommomParent;
			 for(int j=0;j<itemArray.length;j++)
			 {
				 if(j!=0)
					 strWild+=" , "; 
				 strWild+= getQueryPrologFromSchema3(doc,"element",itemArray[j],strParent);
				 strParent = itemArray[j];
			 }
				 
			 strWild+=") ";
			 nCountItem++;
			 if(nCountItem < listaRegras.size())
				 strWild+="; ";
			 
			 

		 }
		 
		 strWild+=",_) ";
		 
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
					&& elementNode.getAttributes().getNamedItem("type").getNodeValue().equals(_strTypeName))
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
							strRule = getQueryPrologFromSchema3(_doc,"element",getNodeName(nodeBegin),strParent) + ", " + strRule;
						}
						else
						{
							strRule = getQueryPrologFromSchema3(_doc,"element",getNodeName(nodeBegin),strParent);
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

