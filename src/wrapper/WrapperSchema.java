package wrapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

import br.ufrj.ppgi.parser.DocumentParser;

import wrapper.QueryElement;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class WrapperSchema extends Wrapper {
	
	private ArrayList<QueryElement> arrayElementsQuery;
	
	private void extractElementsFromQuery( String query )
	{
		arrayElementsQuery = new ArrayList<QueryElement>();
		String tempQuery = query;
		tempQuery += "/";
		int posInit = 1;
		int posBar = tempQuery.indexOf("/", 1);
		while (posBar > -1)
		{
			String strSubString = tempQuery.substring(posInit, posBar);
			QueryElement queryElement = new QueryElement();
			queryElement.parseElement(strSubString);
			arrayElementsQuery.add(queryElement);
			posInit = posBar + 1;
			posBar = tempQuery.indexOf("/", posInit);
			
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
	
	private String getQueryPrologFromSchema2(Document document, String typeSchema, String nameElement){
		String query = "";
		Node nodeElement = getElementByTagName(document, typeSchema, nameElement);
		
		if ( nodeElement == null )
			return query;
		
		query = nameElement + "(_";
                
                if ( nodeElement.getChildNodes().getLength() == 0 )
                    query += ", " + nameElement.toUpperCase() + ")";
                else
                    query += processChilds(nodeElement.getChildNodes());
		
		return query;
	}
	
	
	protected String convertQuery( String query )
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
		
		for ( int i = 0; i < listElements.getLength(); i++ )
		{
			Node elementNode = listElements.item(i);
			String typeElement = elementNode.getAttributes().getNamedItem("type").getNodeValue();
			if ( isComplexType(nameSpace, typeElement) ){
				Node nodeComplexType = getElementByTagName(doc, "complexType", typeElement);
				if ( !isChild( elementNode, nodeComplexType) ){
					elementNode.appendChild(nodeComplexType);
				}
			}
		}		
	}
	
	
	

}

