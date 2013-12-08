package wrapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import javax.swing.text.html.HTMLDocument.HTMLReader.IsindexAction;

import br.ufrj.ppgi.parser.DocumentParser;
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
			query += ",";
			if ( nodeElement.getChildNodes().getLength() != 0 )
			{
				query += "ID";
				query += nameElement.toUpperCase();
			}
			
		}
		query += " )";
		return query;
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
		for (String name : values)
		{
			Document document = documentList.get(name);
			normalizeTreeDocument(document);
			
			String strLastCommonFather = "NOFATHER";
			for ( int i=0; i<arrayElementsQuery.size();i++ ) 
			{
				
				QueryElement element = arrayElementsQuery.get(i);
				if(!element.isFilterpart())
				{
					 //queryConvert +=getQueryPrologFromSchema3(document,"*",element.getElement(),strLastCommonFather);
					 queryConvert +=getQueryPrologFromSchema3(document,"element",element.getElement(),strLastCommonFather);
					 strLastCommonFather = element.getElement();
				}
				else
				{
					
					if(element.getFormula().isEmpty())
					{
						//queryConvert +=getQueryPrologFromSchema3(document,"*",element.getElement(),strLastCommonFather);
						queryConvert +=getQueryPrologFromSchema3(document,"element",element.getElement(),strLastCommonFather);
						String strLastFilterFather = element.getElement();
						boolean bFind = false;
						
						if(i+1 < arrayElementsQuery.size())
							  queryConvert +=", ";
						
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
									queryConvert += elementFilter.getExperimentalFormula(strLastFilterFather);
								}
								
								bFind = true;
							}
							
							if(i+1 < arrayElementsQuery.size() && !bFind)
								  queryConvert +=", ";
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
						    queryConvert += element.getExperimentalFormula(strLastCommonFather);
						}
					}
					
					
				}
				
				
				if(i+1 < arrayElementsQuery.size())
				  queryConvert +=", ";
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
                
		 queryConvert+=".";
		 
		 return queryConvert.replace( ", ." , ".");
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
	
	
	private String getLastElementQuery( )
	{
		
		int index = arrayElementsQuery.size();
		while(index>0)
		{
			if(!arrayElementsQuery.get(index-1).getElement().isEmpty())
				return arrayElementsQuery.get(index-1).getElement();
			
			index--;
			
		}
		
		return "";
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
	
	

}

