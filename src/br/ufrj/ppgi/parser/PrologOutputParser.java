package br.ufrj.ppgi.parser;

import java.awt.font.NumericShaper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.print.attribute.standard.Finishings;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import alice.tuprolog.Int;
import wrapper.Pair;
import wrapper.Stack;
import wrapper.WrapperSchema;

public class PrologOutputParser {
	
	Stack<Pair<Integer,String>> stack;
	String rootNodeName;
	boolean bPrintRoot;
	boolean bPrintFather;
	ArrayList<Pair<String,String>> rootNodeValues;
	
	ParseType outputType;
	
	String currentFatherNodeName ="";
	String currentFatherNodeID ="-1";
	
	String lastNodeName = "";
	String currentNodeName ="";
	String currentNodeID ="-1";
	
	ArrayList<Pair<String,String>> currentNodeValues;
	ArrayList<String> openNodes;
	ArrayList<String> openNodesIDs;
	ArrayList<Pair<String,String>> openNodesPairs;
	WrapperSchema wrapperSchema;
	Document document = null;
	
	
	public enum ParseType{
	    
		TUPROLOG,
		SWI
	}
	
	public PrologOutputParser(ParseType outputParser)
	{
		/*stack = new Stack<Pair<Integer,String>>();
		rootNodeName = "";
		outputType = outputParser;
		currentNodeValues = new ArrayList<Pair<String,String>>();
		openNodesPair =  new ArrayList<Pair<String,String>>();
		openNodes = new ArrayList<String>();
        openNodesIDs = new ArrayList<String>();
        bPrintRoot = false;
        rootNodeValues = new ArrayList<Pair<String,String>>();*/
		
		HashMap<String, Document> documentList = DocumentParser.getInstance().getDocumentList();
        
        if (documentList != null && ! documentList.isEmpty())
        {
        	Map.Entry<String, Document> entry = documentList.entrySet().iterator().next();
        	document = entry.getValue();
        }
		
	    wrapperSchema = new WrapperSchema();
		outputType = outputParser;
		reset();
	}
	
	private void reset()
	{
		currentFatherNodeName ="";
		currentFatherNodeID ="-1";
		
		lastNodeName = "";
		currentNodeName ="";
		currentNodeID ="-1";
		stack = new Stack<Pair<Integer,String>>();
		rootNodeName = "";
		currentNodeValues = new ArrayList<Pair<String,String>>();
		openNodesPairs =  new ArrayList<Pair<String,String>>();
		openNodes = new ArrayList<String>();
        openNodesIDs = new ArrayList<String>();
        bPrintRoot = false;
        bPrintFather = true;
        rootNodeValues = new ArrayList<Pair<String,String>>();
		
	}
	
	public String parseOutputToXML(String prologOutput)
	{
		String xmlOutPut = "";
		
		switch(outputType)
		{
		   case TUPROLOG :
			   xmlOutPut = tuPrologOutputToXML(prologOutput);
			   break;
			   
		   case SWI :
			   xmlOutPut = SWIOutputToXML(prologOutput);
			   break;
		   
		   default:
			   xmlOutPut = tuPrologOutputToXML(prologOutput);
			   break;
		}
		
		return xmlOutPut;
	}
	
	
	private String SWIOutputToXML(String prologOutput)
	{
		String swiTreatedOutput  = prologOutput;
		 
		swiTreatedOutput = swiTreatedOutput.replace("{", "");
		swiTreatedOutput = swiTreatedOutput.replace("}", "");
		swiTreatedOutput = swiTreatedOutput.replace(", '", "; '");
		swiTreatedOutput = swiTreatedOutput.replace(", [", "; [");
		
		
		String [] arrayPairVariableValue  = swiTreatedOutput.split(",(?=(?:[^']*'[^']*')*[^']*$)");
		
		if(arrayPairVariableValue.length > 0)
			swiTreatedOutput = "";
		
		for(int i=0;i<arrayPairVariableValue.length;i++)
		{
			String [] arrayEqual = arrayPairVariableValue[i].split("=(?=(?:[^']*'[^']*')*[^']*$)");
			if(arrayEqual.length>1)
			{
				//Variable not binded
				if(arrayEqual[1].startsWith("_"))
					continue;
				
				if(arrayEqual[1].startsWith("'") && !arrayEqual[1].endsWith("'") && !arrayEqual[1].startsWith("'.'"))
					arrayEqual[1]+="'";
				
				if(!arrayEqual[1].startsWith("'") && arrayEqual[1].endsWith("'") )
					arrayEqual[1]="'"+arrayEqual[1];
				
				swiTreatedOutput+= arrayEqual[0].trim()+" / "+arrayEqual[1].trim()+"  ";
				
			}
		}

		return tuPrologOutputToXML(swiTreatedOutput);
	}
	
	private String tuPrologOutputToXML(String prologOutput)
    {
        String xmlOutPut ="";
        
        if(prologOutput.startsWith("no"))
        	return xmlOutPut;
        
        prologOutput = prologOutput.replace(" / ", "/");

        String[] outPutLineArray = prologOutput.split("\n");
        //|\".*?\"|

        ArrayList<String> outPutLineList = new ArrayList<String>(Arrays.asList(outPutLineArray));
        //if(list.contains("IDCHILDATTRIBUTE"))
         
        boolean bOpenNode = false;
        for (int i = 0; i < outPutLineList.size(); i++)
        {
            //String[] pairVariableValueArray = Regex.Split(outPutLineList.get(i), " (?=(?:[^']*'[^']*')*[^']*$)");
        	
        	String[] pairVariableValueArray = outPutLineList.get(i).split(" (?=(?:[^']*'[^']*')*[^']*$)");
            ArrayList<String> pairVariableValueList = new ArrayList<String>(Arrays.asList(pairVariableValueArray));

            boolean bNodeHasAttribute = false;
            boolean bNodeHasValue = false;
            
            if(outPutLineList.get(i).startsWith("yes") || outPutLineList.get(i).startsWith("no"))
            	continue;
            
            if(outPutLineList.get(i).contains("RESETQUERY"))
        	{
        		xmlOutPut+= endOutputParser();
        		reset();
        		continue;
        	}
            
            if(outPutLineList.get(i).contains("NOTPRINTFATHER"))
            {
            	bPrintFather = false;
            	continue;
            }
            
            ArrayList<String> openNodeIteration = new ArrayList<String>();
            ArrayList<String> openNodeIDIteration = new ArrayList<String>();
            ArrayList<Pair<String,String>> openNodesPairIteration = new ArrayList<Pair<String,String>>();
            
            String tempFatherNodeName = "";
            String tempCurrentNodeID = obtainCurrentID(pairVariableValueList);
            ArrayList<Pair<String,String>> tempValues = obtainIterationValues(pairVariableValueList);
            String tempNodeName = obtainNodeName(pairVariableValueList);
            Pair<String,String> parentInfo = obtainParentInfo(pairVariableValueList,openNodeIteration,openNodeIDIteration,tempCurrentNodeID);
            
            openNodesPairIteration = obtainOpenNodesPairs(pairVariableValueList);
            boolean bAddIteration = addOpenNodes(openNodesPairIteration);
            
            boolean bHasNoParent = false; 
            
            if(document!= null && !rootNodeName.isEmpty() && ! wrapperSchema.hasChildNodes(document, "element", rootNodeName.replace("_", ":"), "NOPARENT", true))
            {
            	tempCurrentNodeID = parentInfo.getValue();
            	tempNodeName =  parentInfo.getKey();
            	bHasNoParent  = true;
            	rootNodeName = "";
            }
            
            if(!tempNodeName.isEmpty() && wrapperSchema.isRoot(document, "element", tempNodeName))
            	tempCurrentNodeID = "1";
            
            
            if(currentNodeID.compareTo(tempCurrentNodeID)!=0 && currentNodeID.compareTo("-1")!=0 && tempCurrentNodeID.compareTo("-1")!=0)
            {
            	String tempFatherName = currentFatherNodeName;
            	if(tempFatherName.startsWith("ID"))
            		tempFatherName = tempFatherName.substring(2);
            	
            	if(currentNodeName.compareToIgnoreCase("text")== 0 )
            	{
            		int a = 1;
            		a++;
            	}
            	
            	boolean bisSingle=  wrapperSchema.isMixed(document,"element",tempFatherName,"NOPARENT",true) || 
            			wrapperSchema.hasAttributes(document,"element",tempFatherName,"NOPARENT");
            	
            	boolean bFirstChild = false;
            	ArrayList<String> nodesToOpen = new ArrayList<String>();
            	if(!currentNodeID.isEmpty() && !currentFatherNodeID.isEmpty())
            	{
            		bFirstChild = Integer.parseInt(currentNodeID) - 1 == Integer.parseInt(currentFatherNodeID);
            	}
            	
        		int IdToOpen  = Integer.parseInt(currentNodeID);
        		boolean bIsOpenNodeMixed = false;
    			if (currentNodeValues.size() == 1)
                {
                     Pair<String, String> pair = currentNodeValues.get(0);
                     String mixedNodeName = pair.getKey();
                     if(mixedNodeName.contains("XMLMIXEDELEMENT_IDCHILD"))
                    	 bIsOpenNodeMixed = true;
                }
    			
    			int nLastPosition = -1;
        		for(int k=openNodesPairs.size()-1; k>=0;k--)
        		{
        			Pair<String,String> openNodesPair = openNodesPairs.get(k);
        			//[17,22]
        			 String strNodeIds =  openNodesPair.getKey();
        			 strNodeIds = strNodeIds.replace("[", "");
        			 strNodeIds = strNodeIds.replace("]", "");
        			 String [] vetIds = strNodeIds.split(",");
        			 //int firstIdOpen = 0;
        			 
        			 for(int l = 0;l<vetIds.length;l++)
        			 {
        				 int nId = Integer.parseInt(vetIds[l]);
        				 //if(nId <= firstIdOpen || firstIdOpen ==0)
        					 //firstIdOpen = nId;	
        				 
        				 boolean bMiddleRoot  = (vetIds.length ==1) && (k +1 == nLastPosition);
	        			 
	        			 if(IdToOpen-1 == nId || (IdToOpen==nId && bIsOpenNodeMixed) || bMiddleRoot )
	        			 {
	        				 String ancestral = removeNodeNameNumbers(openNodesPair.getValue());
	        				 
	        				 boolean bParentisSingle=  wrapperSchema.isMixed(document,"element",ancestral,"NOPARENT",true) || 
	        	            			wrapperSchema.hasAttributes(document,"element",ancestral,"NOPARENT");
	        				 if(!bParentisSingle || (IdToOpen==nId && bIsOpenNodeMixed))
	        				 {
	        					 if(bFirstChild && !currentFatherNodeName.isEmpty() 
	        							 && currentFatherNodeName.compareToIgnoreCase(ancestral)!=0 )
	        						 nodesToOpen.add(currentFatherNodeName);
	        					 
	        					 nodesToOpen.add(ancestral);
	        					 nLastPosition = k;
	        					 if(bMiddleRoot)
	        						 nLastPosition = -1 ;
	        					 bFirstChild = false;
	        				 }
	        				 
	        				 IdToOpen = nId;
	        				 
	        				 break;
	        			 }
        			 
        			 }
        				 
        		}
            		
            	
            	
            	if(bFirstChild && !bisSingle && bPrintFather)
            	{
            		xmlOutPut+=openNodeWithAttributes(currentFatherNodeName, new ArrayList<Pair<String,String>>());
            	}
            	else if(nodesToOpen.size() > 0)
            	{
            		for(int l=nodesToOpen.size()-1; l>=0;l--)
            		{
            			xmlOutPut+=openNodeWithAttributes(nodesToOpen.get(l), new ArrayList<Pair<String,String>>());
            		}
            		
            		bFirstChild = false;
            	}
            	else if(bFirstChild)
            	{
            		String mixedNodeName = "";
            		if (currentNodeValues.size() == 1)
                    {
                        Pair<String, String> pair = currentNodeValues.get(0);
                        mixedNodeName = pair.getKey();
                    }
            		
            		if(mixedNodeName.contains("XMLMIXEDELEMENT_IDCHILD"))
            			xmlOutPut+=openNodeWithAttributes(currentFatherNodeName, new ArrayList<Pair<String,String>>());
            	}
            	
            	if(!bPrintFather)
            		bPrintFather = true;
            	
            	xmlOutPut+=openNodeWithAttributes(currentNodeName, currentNodeValues);
            	
            	 boolean bHasChoiceChildren = wrapperSchema.hasAllChildrenChoice(document, "element", currentNodeName,"NOPARENT",true);
        		 boolean bHasOnlyRequiredAttributes  = wrapperSchema.hasOnlyRequiredAttributes(document, "element", currentNodeName,"NOPARENT",true);
        		 
        		 String tempNextName = tryGetNodeName(tempValues);
            	
            	if(!wrapperSchema.hasChildNodes(document, "element", currentNodeName.replace("_", ":"), "NOPARENT", true)
            			&& !currentNodeName.isEmpty() && !currentNodeName.contains("XMLMIXEDELEMENT_IDCHILD"))
						xmlOutPut+= closeNode(currentNodeName);
            	else
            		if(bHasChoiceChildren && tempNextName.compareToIgnoreCase(currentNodeName) ==0 
            				 && !currentNodeName.isEmpty() && !currentNodeName.contains("XMLMIXEDELEMENT_IDCHILD"))
            			xmlOutPut+= closeNode(currentNodeName );
            	else
            		if(bHasChoiceChildren && currentNodeValues.size()==1
            		   && !currentNodeName.isEmpty() && !currentNodeName.contains("XMLMIXEDELEMENT_IDCHILD"))
            			xmlOutPut+= closeNode(currentNodeName );
            	//else if (bHasChoiceChildren && containsNodeValue(currentNodeName,currentNodeValues)
            			//&& !currentNodeName.isEmpty() && !currentNodeName.contains("XMLMIXEDELEMENT_IDCHILD"))
            			//xmlOutPut+= closeNode(currentNodeName );
            	
            	//if(!bAddIteration)
            	
            	if(currentNodeName.contains("XMLMIXEDELEMENT_IDCHILD"))
            	{
                    String temp = currentNodeName.replace("XMLMIXEDELEMENT_IDCHILD", "");
                    if(tempNodeName.compareToIgnoreCase(temp)==0 || tryGetNodeName(tempValues).compareToIgnoreCase(temp)==0)
                    	xmlOutPut+= closeNode(removeNodeNameNumbers(temp));
                    else if(Integer.parseInt(currentFatherNodeID) >0 && Integer.parseInt(currentFatherNodeID) < Integer.parseInt(parentInfo.getValue()))
                    	xmlOutPut+= closeNode(removeNodeNameNumbers(temp));
            	}
            	
            	currentNodeValues.clear();  
            	currentNodeName = tempNodeName;
            }
            
            xmlOutPut+=closeOpenNodes(openNodesPairIteration);
            
            if(tempCurrentNodeID.compareTo("-1")!=0)
            	currentNodeID = tempCurrentNodeID;
            
            currentNodeValues.addAll(tempValues);
            
            if(!bHasNoParent)
            {
            	currentFatherNodeID = parentInfo.getValue();
                currentFatherNodeName = parentInfo.getKey();	
            }
            
            if(currentNodeName.isEmpty())
            	currentNodeName = tempNodeName;
            
            /*for (int j = 0; j < pairVariableValueList.size(); j++)
            {
                if (pairVariableValueList.get(j).length()  <=0 || pairVariableValueList.get(j).startsWith("LIST") || pairVariableValueList.get(j).startsWith("yes") || pairVariableValueList.get(j).startsWith("no"))
                    continue;

                if (pairVariableValueList.get(j).startsWith("IDCHILDATTRIBUTE"))
                {
                    bNodeHasAttribute = true;
                    String[] vetCurrNodeName = pairVariableValueList.get(j).split("IDCHILDATTRIBUTE");
                    if (vetCurrNodeName.length> 1)
                    {
                        //vetCurrNodeName = Regex.Split(vetCurrNodeName[0], "/(?=(?:[^']*'[^']*')*[^']*$)");
                    	vetCurrNodeName = vetCurrNodeName[1].split("/(?=(?:[^']*'[^']*')*[^']*$)");
                        if (vetCurrNodeName.length > 0)
                        {
                            if (vetCurrNodeName[0].replace("SORTED", "").compareTo(currentNodeName) != 0)
                            {
                                currentNodeName = vetCurrNodeName[0].replace("SORTED", "");
                                //if (openNodes.Contains(currentNodeName))
                                    //openNodes.Add(currentNodeName);
                            }
                        }
                    }
                }
                else if (pairVariableValueList.get(j).startsWith("IDCHILD"))
                {
                	String[] arrayCurrentNodeID = pairVariableValueList.get(j).split("/(?=(?:[^']*'[^']*')*[^']*$)");
                    if (arrayCurrentNodeID.length > 1)
                    {
                        if (arrayCurrentNodeID[0].endsWith("SORTED"))
                        {                       	
                    		if (arrayCurrentNodeID[1].compareTo(currentNodeID) != 0)
                            {
                                if ( !openNodesIDs.contains(arrayCurrentNodeID[1])
                                    //&& (Int32.Parse(currentNodeID) < Int32.Parse(arrayCurrentNodeID[1]))
                                    )
                                {
                                    
                                    if(currentNodeID.compareTo(arrayCurrentNodeID[1])!=0 && currentNodeID.compareTo("-1") != 0)
                                    {
                                    	xmlOutPut+=openNodeWithAttributes(currentNodeName, currentNodeValues);
                                    	if(!wrapperSchema.hasChildNodes(document, "element", currentNodeName.replace("_", ":"), "NOPARENT", true)
                                    			&& !currentNodeName.isEmpty())
                								xmlOutPut+= closeNode(currentNodeName);
                                    	
                                        currentNodeValues.clear();
                                    }
                                    	
                                    currentNodeID = arrayCurrentNodeID[1];
                                }
                                 
                            }
                        	
                        }
                    }
                }
                else if(pairVariableValueList.get(j).startsWith("ID"))
                {
                    String[] vetPairValue = pairVariableValueList.get(j).split("/(?=(?:[^']*'[^']*')*[^']*$)");
                    if (vetPairValue.length > 1)
                    {
                      
                        if (!(vetPairValue[0].compareTo("IDNOPARENT") == 0))
                        {
                            if (vetPairValue[0].length() > 0)
                                openNodeIteration.add(vetPairValue[0]);
                            
                            if (vetPairValue[1].length() > 0)
                            	openNodeIDIteration.add(vetPairValue[1]);

                            if (vetPairValue[1].compareTo(currentFatherNodeID) != 0)
                            {
                            	
                            	if (!openNodesIDs.contains(currentFatherNodeID)&& currentFatherNodeID.compareTo("-1")!=0)
                            	{
                            		//if (!openNodes.contains(currentFatherNodeName) && !currentFatherNodeName.isEmpty())
                                        openNodes.add(currentFatherNodeName);

                                    //if (!openNodesIDs.contains(currentFatherNodeID)&& currentFatherNodeID.compareTo("-1")!=0)
                                        openNodesIDs.add(currentFatherNodeID);
                                        
                                     if(currentNodeValues.size() > 0 )
                                     {
                                        xmlOutPut+=openNodeWithAttributes(currentNodeName, currentNodeValues);
                                        if(!wrapperSchema.hasChildNodes(document, "element", currentNodeName.replace("_", ":"), "NOPARENT", true)
                                    			&& !currentNodeName.isEmpty())
                								xmlOutPut+= closeNode(currentNodeName);
                                        
                						currentNodeName = "";
                						currentNodeValues.clear();
                                     }
                            	}
                                

                                currentFatherNodeID = vetPairValue[1];
                                currentFatherNodeName = vetPairValue[0];
                                if(j==2 && rootNodeName.isEmpty())
                                {
                                	rootNodeName = currentFatherNodeName;
                                	if(rootNodeName.startsWith("ID"))
                                		rootNodeName = rootNodeName.substring(2);
                                	
                                	if(document!= null && ! wrapperSchema.hasChildNodes(document, "element", rootNodeName.replace("_", ":"), "NOPARENT", true))
                                		rootNodeName = "";
                                }
                            }
                        }
                    }
                }
                else
                {
                	String[] vetPairValue = pairVariableValueList.get(j).split("/(?=(?:[^']*'[^']*')*[^']*$)");
                    if (vetPairValue.length > 1)
                    {
                    	if(currentNodeValues.size()>0)
                    	{
                    		String tempCurrentNodeID = "";
                    		for (String s:pairVariableValueList)
                    		{
                    			if((s.startsWith("IDCHILD") && !s.startsWith("IDCHILDATTRIBUTE")))
                    			{
                    				String[] arrayCurrentNodeID = s.split("/(?=(?:[^']*'[^']*')*[^']*$)");
                    				if(arrayCurrentNodeID.length >1)
                    				{
                    					if(arrayCurrentNodeID[0].endsWith("SORTED"))
                    						tempCurrentNodeID = arrayCurrentNodeID[1];
                    				}
                    				
                    			}
                    		}
                    		
                    		if(tempCurrentNodeID.length()>0)
            				{
            					if(currentNodeID.compareTo(tempCurrentNodeID)!= 0 )
            					{
            						xmlOutPut+=openNodeWithAttributes(currentNodeName, currentNodeValues);
            						if(!wrapperSchema.hasChildNodes(document, "element", currentNodeName.replace("_", ":"), "NOPARENT", true)
                                			&& !currentNodeName.isEmpty())
            								xmlOutPut+= closeNode(currentNodeName);
            								
            						currentNodeName = "";
            						currentNodeValues.clear();
            						currentNodeID = tempCurrentNodeID;
            					}
            				}
                    	}
                    	
                    		currentNodeValues.add(new Pair<String, String>(vetPairValue[0], vetPairValue[1]));
                    }
                }
               
            }*/
            
            
            
            /*for (int k = openNodesIDs.size()-1; k >=0; k--)
            {
                
                String tempCurrentID =openNodesIDs.get(k);
                if (tempCurrentID.length() <= 0)
                    continue;
                
                String currentNode = "";
                if(openNodes.size()>=k)		
                	currentNode =	openNodes.get(k);
                
                if (currentNode.length() <= 0)
                    continue;
                
                if (openNodeIDIteration.size() > 0 && !openNodeIDIteration.contains(tempCurrentID))
                {
                    //Console.WriteLine(closeNode(currentNode));
                	//System.out.println(closeNode(currentNode));
                	//boolean bAlreadyClose = (currentNode.compareToIgnoreCase(lastNodeName)==0 && bCloseLastNode);
                	
                	String currentNodeName = currentNode;
                	if(currentNodeName.startsWith("ID"))
                		currentNodeName = currentNodeName.substring(2);
                	currentNodeName = currentNodeName.replace("_", ":");
                	
                	boolean bIsComplex = wrapperSchema.hasChildNodes(document, "element", currentNodeName, "NOPARENT", true);
				
                	if(bIsComplex)
                		xmlOutPut+="\n"+closeNode(currentNode);
                	
                    openNodes.remove(k);
                    openNodesIDs.remove(k);
                }
                
            }*/
            
        }
         
        return xmlOutPut;
    }
	
	String tryGetNodeName( ArrayList<Pair<String,String>> valuesList)
	{
		String tempNodeName ="";                 
        if (valuesList.size() == 1)
        {
            Pair<String, String> pair = valuesList.get(0);
            tempNodeName = pair.getKey();
        }
         
        
        if(tempNodeName.contains("XMLMIXEDELEMENT_IDCHILD"))
        	tempNodeName = tempNodeName.replace("XMLMIXEDELEMENT_IDCHILD", "");
        
        tempNodeName =  removeNodeNameNumbers(tempNodeName);
       return tempNodeName;
	}
	
	boolean containsNodeValue(String nodeName,ArrayList<Pair<String,String>> valuesList)
	{
		for (int i = 0; i < valuesList.size(); i++)
        {
            Pair<String, String> pair = valuesList.get(i);
            if (pair.getKey().length()<=0)
                continue;
            
            if (removeNodeNameNumbers(pair.getKey()).compareToIgnoreCase(nodeName) == 0)
            {
               return true;
            }
            
        }
		
		return false;
		
	}
	
	String removeNodeNameNumbers(String nodeName)
	{
		String newNodeName = nodeName;
		
		
		boolean bRemove = true;

		if(document != null)
		{
			Node nodeElement = wrapperSchema.getElementByTagName(document, "element", nodeName, "NOPARENT", false);
			if(nodeElement != null)
				bRemove = false;
		}

		if(!bRemove)
			return newNodeName;
		
		
		
		int nTo = newNodeName.length();
		for(int i=newNodeName.length();i>0;i--)
		{
			char c = newNodeName.charAt(i-1);
			boolean bIsDigit = (c >= '0' && c <= '9');
			if(!bIsDigit)
				break;
			else
				nTo--; 
			
		}
		
		
		if(nTo>0)
			newNodeName = nodeName.substring(0,nTo);
		
		return newNodeName;
	}
     
	private String tuPrologOutputToXML_OLD(String prologOutput)
    {
        String xmlOutPut ="";
        
        if(prologOutput.startsWith("no"))
        	return xmlOutPut;
        
        prologOutput = prologOutput.replace(" / ", "/");

        String[] outPutLineArray = prologOutput.split("\n");
        //|\".*?\"|

        ArrayList<String> outPutLineList = new ArrayList<String>(Arrays.asList(outPutLineArray));
        //if(list.contains("IDCHILDATTRIBUTE"))
         
        WrapperSchema wrapperSchema = new WrapperSchema();
        HashMap<String, Document> documentList = DocumentParser.getInstance().getDocumentList();
        Document document = null;
        if (documentList != null && ! documentList.isEmpty())
        {
        	Map.Entry<String, Document> entry = documentList.entrySet().iterator().next();
        	document = entry.getValue();
        }

        boolean bOpenNode = false;
        for (int i = 0; i < outPutLineList.size(); i++)
        {
            //String[] pairVariableValueArray = Regex.Split(outPutLineList.get(i), " (?=(?:[^']*'[^']*')*[^']*$)");
        	String[] pairVariableValueArray = outPutLineList.get(i).split(" (?=(?:[^']*'[^']*')*[^']*$)");
            ArrayList<String> pairVariableValueList = new ArrayList<String>(Arrays.asList(pairVariableValueArray));

            boolean bNodeHasAttribute = false;
            boolean bNodeHasValue = false;
            ArrayList<String> openNodeIteration = new ArrayList<String>();
            ArrayList<String> openNodeIDIteration = new ArrayList<String>();
            for (int j = 0; j < pairVariableValueList.size(); j++)
            {
                if (pairVariableValueList.get(j).length()  <=0 || pairVariableValueList.get(j).startsWith("LIST") || pairVariableValueList.get(j).startsWith("yes") || pairVariableValueList.get(j).startsWith("no"))
                    continue;

                if (pairVariableValueList.get(j).startsWith("IDCHILDATTRIBUTE"))
                {
                    bNodeHasAttribute = true;
                    String[] vetCurrNodeName = pairVariableValueList.get(j).split("IDCHILDATTRIBUTE");
                    if (vetCurrNodeName.length> 1)
                    {
                        //vetCurrNodeName = Regex.Split(vetCurrNodeName[0], "/(?=(?:[^']*'[^']*')*[^']*$)");
                    	vetCurrNodeName = vetCurrNodeName[1].split("/(?=(?:[^']*'[^']*')*[^']*$)");
                        if (vetCurrNodeName.length > 0)
                        {
                            if (vetCurrNodeName[0].replace("SORTED", "").compareTo(currentNodeName) != 0)
                            {
                                currentNodeName = vetCurrNodeName[0].replace("SORTED", "");
                                //if (openNodes.Contains(currentNodeName))
                                    //openNodes.Add(currentNodeName);
                            }
                        }

                        //if(pairVariableValueArray[j-2].startsWith("IDCHILDATTRIBUTE"))
                    }
                }
                else if (pairVariableValueList.get(j).startsWith("IDCHILD"))
                {
                    //String[] arrayCurrentNodeID = Regex.Split(pairVariableValueList.get(j), "/(?=(?:[^']*'[^']*')*[^']*$)");
                	String[] arrayCurrentNodeID = pairVariableValueList.get(j).split("/(?=(?:[^']*'[^']*')*[^']*$)");
                    if (arrayCurrentNodeID.length > 1)
                    {
                        if (arrayCurrentNodeID[0].endsWith("SORTED"))
                        {                       	
                    		if (arrayCurrentNodeID[1].compareTo(currentNodeID) != 0)
                            {
                                if ( !openNodesIDs.contains(arrayCurrentNodeID[1])
                                    //&& (Int32.Parse(currentNodeID) < Int32.Parse(arrayCurrentNodeID[1]))
                                    )
                                {
                                    if (currentNodeID.compareTo("-1") != 0)
                                    {
                                        //Console.WriteLine(openNodeWithAttributes(currentNodeName, currentNodeValues));
                                    	//System.out.println(openNodeWithAttributes(currentNodeName, currentNodeValues));
                                    	//if(currentNodeName.compareToIgnoreCase("hr")==0)
                                    		//currentNodeName = currentNodeName;
                                    	
                                    	//xmlOutPut+=openNodeWithAttributes(currentNodeName, currentNodeValues);
                                        //currentNodeValues.clear();
                                    }
                                    
                                    if(currentNodeID.compareTo(arrayCurrentNodeID[1])!=0 && currentNodeID.compareTo("-1") != 0)
                                    {
                                    	xmlOutPut+=openNodeWithAttributes(currentNodeName, currentNodeValues);
                                    	if(!wrapperSchema.hasChildNodes(document, "element", currentNodeName.replace("_", ":"), "NOPARENT", true)
                                    			&& !currentNodeName.isEmpty())
                								xmlOutPut+= closeNode(currentNodeName);
                                    	
                                        currentNodeValues.clear();
                                    }
                                    	
                                    currentNodeID = arrayCurrentNodeID[1];
                                }
                                
                                //openNodes.Add(currentNodeID);
                            }

                            //currentFatherNodeName = arrayCurrentNodeID[0].Replace("IDCHILD", "").Replace("SORTED", "");
                        	
                        }
                    }
                }
                else if(pairVariableValueList.get(j).startsWith("ID"))
                {
                    String[] vetPairValue = pairVariableValueList.get(j).split("/(?=(?:[^']*'[^']*')*[^']*$)");
                    if (vetPairValue.length > 1)
                    {
                        //if (currentFatherNodeID.CompareTo(vetPairValue[1]) != 0 && !(currentFatherNodeID.CompareTo("-1") == 0)
                            //&& !(currentFatherNodeName.CompareTo("IDNOPARENT") == 0))
                            //Console.WriteLine(closeNode(currentFatherNodeName));

                        if (!(vetPairValue[0].compareTo("IDNOPARENT") == 0))
                        {
                            if (vetPairValue[0].length() > 0)
                                openNodeIteration.add(vetPairValue[0]);
                            
                            if (vetPairValue[1].length() > 0)
                            	openNodeIDIteration.add(vetPairValue[1]);

                            if (vetPairValue[1].compareTo(currentFatherNodeID) != 0)
                            {
                                //if (currentFatherNodeName.Length <= 0)
                                //Console.WriteLine();
                                //if (Int32.Parse(vetPairValue[1]) < Int32.Parse(currentFatherNodeID))
                                //Console.WriteLine(closeNode(currentFatherNodeName));
                            	
                            	if (!openNodesIDs.contains(currentFatherNodeID)&& currentFatherNodeID.compareTo("-1")!=0)
                            	{
                            		//if (!openNodes.contains(currentFatherNodeName) && !currentFatherNodeName.isEmpty())
                                        openNodes.add(currentFatherNodeName);

                                    //if (!openNodesIDs.contains(currentFatherNodeID)&& currentFatherNodeID.compareTo("-1")!=0)
                                        openNodesIDs.add(currentFatherNodeID);
                                        
                                     if(currentNodeValues.size() > 0 )
                                     {
                                        xmlOutPut+=openNodeWithAttributes(currentNodeName, currentNodeValues);
                                        if(!wrapperSchema.hasChildNodes(document, "element", currentNodeName.replace("_", ":"), "NOPARENT", true)
                                    			&& !currentNodeName.isEmpty())
                								xmlOutPut+= closeNode(currentNodeName);
                                        
                						currentNodeName = "";
                						currentNodeValues.clear();
                                     }
                            	}
                                

                                currentFatherNodeID = vetPairValue[1];
                                currentFatherNodeName = vetPairValue[0];
                                if(j==2 && rootNodeName.isEmpty())
                                {
                                	rootNodeName = currentFatherNodeName;
                                	if(rootNodeName.startsWith("ID"))
                                		rootNodeName = rootNodeName.substring(2);
                                	
                                	if(document!= null && ! wrapperSchema.hasChildNodes(document, "element", rootNodeName.replace("_", ":"), "NOPARENT", true))
                                		rootNodeName = "";
                                }
                            }
                        }
                    }
                }
                //else if (!pairVariableValueList.ElementAt(j).StartsWith("ID"))
                else
                {
                    //String[] vetPairValue = Regex.Split(pairVariableValueList.get(j), "/(?=(?:[^']*'[^']*')*[^']*$)");
                	String[] vetPairValue = pairVariableValueList.get(j).split("/(?=(?:[^']*'[^']*')*[^']*$)");
                    if (vetPairValue.length > 1)
                    {
                    	if(currentNodeValues.size()>0)
                    	{
                    		
                    		//String tempFather = currentFatherNodeName;
                    		//if(tempFather.startsWith("ID"))
                    			//tempFather = tempFather.substring(2);
                    		String tempCurrentNodeID = "";
                    		for (String s:pairVariableValueList)
                    		{
                    			if((s.startsWith("IDCHILD") && !s.startsWith("IDCHILDATTRIBUTE")))
                    			{
                    				String[] arrayCurrentNodeID = s.split("/(?=(?:[^']*'[^']*')*[^']*$)");
                    				if(arrayCurrentNodeID.length >1)
                    				{
                    					if(arrayCurrentNodeID[0].endsWith("SORTED"))
                    						tempCurrentNodeID = arrayCurrentNodeID[1];
                    				}
                    				
                    			}
                    		}
                    		
                    		if(tempCurrentNodeID.length()>0)
            				{
            					if(currentNodeID.compareTo(tempCurrentNodeID)!= 0 )
            					{
            						xmlOutPut+=openNodeWithAttributes(currentNodeName, currentNodeValues);
            						if(!wrapperSchema.hasChildNodes(document, "element", currentNodeName.replace("_", ":"), "NOPARENT", true)
                                			&& !currentNodeName.isEmpty())
            								xmlOutPut+= closeNode(currentNodeName);
            								
            						currentNodeName = "";
            						currentNodeValues.clear();
            						currentNodeID = tempCurrentNodeID;
            					}
            				}
                    	}
                    	
                    	/*if(vetPairValue[0].compareToIgnoreCase(rootNodeName)== 0)
                    		rootNodeValues.add(new Pair<String, String>(vetPairValue[0], vetPairValue[1]));
                    	else*/
                    		currentNodeValues.add(new Pair<String, String>(vetPairValue[0], vetPairValue[1]));
                    }
                }
                /*else if(pairVariableValueArray[j-1].startsWith("ID"))
                {
                    bNodeHasValue = true;
                }*/
            }

            /*if (bOpenNode)
            {
                Console.WriteLine(openNodeWithAttributes(currentNodeName, currentNodeValues));
                currentNodeValues.Clear();
            }*/
            
            /*########
            boolean bCloseLastNode = true;
            if(lastNodeName.length()>0)
            {
                for (int l = openNodeIteration.size()-1; l >=0; l--)
                {
                	if(openNodeIteration.get(l).compareToIgnoreCase(lastNodeName) == 0 || openNodeIteration.get(l).compareToIgnoreCase("ID"+lastNodeName) == 0 )
                	{
                		bCloseLastNode = false;
                		break;
                	}
                }
                
                if(bCloseLastNode)
                {
                	xmlOutPut+= closeNode(lastNodeName);
                	lastNodeName = "";
                }
            }*/
            

            /*######for (int k = openNodes.size()-1; k >=0; k--)
            {
                String currentNode = openNodes.get(k);
                if (currentNode.length() <= 0)
                    continue;
                if (openNodeIteration.size() > 0 && !openNodeIteration.contains(currentNode))
                {
                    //Console.WriteLine(closeNode(currentNode));
                	//System.out.println(closeNode(currentNode));
                	xmlOutPut+=closeNode(currentNode);
                    openNodes.remove(k);
                }
                
            }*/
            
            for (int k = openNodesIDs.size()-1; k >=0; k--)
            {
                
                String tempCurrentNodeID =openNodesIDs.get(k);
                if (tempCurrentNodeID.length() <= 0)
                    continue;
                
                String currentNode = "";
                if(openNodes.size()>=k)		
                	currentNode =	openNodes.get(k);
                
                if (currentNode.length() <= 0)
                    continue;
                
                if (openNodeIDIteration.size() > 0 && !openNodeIDIteration.contains(tempCurrentNodeID))
                {
                    //Console.WriteLine(closeNode(currentNode));
                	//System.out.println(closeNode(currentNode));
                	//boolean bAlreadyClose = (currentNode.compareToIgnoreCase(lastNodeName)==0 && bCloseLastNode);
                	
                	String currentNodeName = currentNode;
                	if(currentNodeName.startsWith("ID"))
                		currentNodeName = currentNodeName.substring(2, currentNodeName.length());
                	currentNodeName = currentNodeName.replace("_", ":");
                	
                	boolean bIsComplex = wrapperSchema.hasChildNodes(document, "element", currentNodeName, "NOPARENT", true);
				
                	if(bIsComplex)
                		xmlOutPut+=closeNode(currentNode);
                	
                    openNodes.remove(k);
                    openNodesIDs.remove(k);
                }
                
            }
            
        }
        
        return xmlOutPut;
    }
	
	
	private boolean isLastChildId(ArrayList<String> pairVariableValueList,int currentCounter)
	{
		for (int tempCount=currentCounter+1;tempCount<pairVariableValueList.size();tempCount++)
		{
    		if(!pairVariableValueList.get(tempCount).startsWith("IDCHILD"))
    			continue;
    			
    		String temp = pairVariableValueList.get(tempCount);
    		String[] tempArrayCurrentNodeID = temp.split("/(?=(?:[^']*'[^']*')*[^']*$)");
    		
    		if(tempArrayCurrentNodeID[0].endsWith("SORTED"))
			{
    			return false;
			}
		}
		
		return true;
	}
	
	
	private boolean addOpenNodes(ArrayList<Pair<String,String>> openNodesPairIteration)
	{
		ArrayList<String> keyList = new ArrayList<String>();
		boolean bAdd = false;
		for (int i=0;i<openNodesPairs.size();i++)
		{
			keyList.add(openNodesPairs.get(i).getKey());
		}
		
		for (int i=0;i<openNodesPairIteration.size();i++)
        {
			if(!keyList.contains(openNodesPairIteration.get(i).getKey()))
			{
				openNodesPairs.add(openNodesPairIteration.get(i));
				bAdd = true;
			}
			
        }
		
		return bAdd;
	}
	
	private String closeOpenNodes(ArrayList<Pair<String,String>> openNodesPairIteration)
	{
		String xmlOutPut = "";
		for (int k = openNodesPairs.size()-1; k >=0; k--)
        {
        	Pair<String,String> pair = openNodesPairs.get(k);
        	boolean bIsOpen = false;
        	for (int l = 0; l <openNodesPairIteration.size(); l++)
        	{
        		if(openNodesPairIteration.get(l).getKey().compareTo(pair.getKey())==0)
        		{
        			bIsOpen = true;
        			break;
        		}
        	}
        	
        	if(!bIsOpen)
        	{
        		String currentNodeName = pair.getValue();
            	if(currentNodeName.startsWith("ID"))
            		currentNodeName = currentNodeName.substring(2);
            	currentNodeName = currentNodeName.replace("_", ":");
            	
            	//boolean bIsComplex = wrapperSchema.hasChildNodes(document, "element", currentNodeName, "NOPARENT", true);
			
            	//if(bIsComplex)
            	xmlOutPut+="\n"+closeNode(currentNodeName);
            	
            	openNodesPairs.remove(k);
        	}
        }
		
		return xmlOutPut;
	}
	
	private String obtainCurrentID(ArrayList<String> pairVariableValueList)
	{
		String id = "-1";
		String tempId = "-1";
		String tempDirectId = "-1";
		//String tempFatherName = "";
        boolean bHasAttribute = false;
		for (int i=0;i<pairVariableValueList.size();i++)
		{
			if(pairVariableValueList.get(i).startsWith("ATTRIBUTE_"))
				bHasAttribute = true;
			
			String[] arrayCurrentNodeID = pairVariableValueList.get(i).split("/(?=(?:[^']*'[^']*')*[^']*$)");
			if (pairVariableValueList.get(i).startsWith("IDCHILD"))
            {
                if (arrayCurrentNodeID.length > 1)
                {
                    if (arrayCurrentNodeID[0].endsWith("SORTED"))
                    {
                    	if(! pairVariableValueList.get(i).startsWith("IDCHILDATTRIBUTE") )
                    	{
                    		if(Integer.parseInt(arrayCurrentNodeID[1]) >= Integer.parseInt(id))
                    		{
                    			id = arrayCurrentNodeID[1];
                    			String tempFatherName =   arrayCurrentNodeID[0].replace("IDCHILD", "").replace("SORTED", "");
                    			tempFatherName+= "";
                    		}
                    	}
                    	else
                    		tempId = arrayCurrentNodeID[1];
                    }
                }
            }
			else
			{
				if (pairVariableValueList.get(i).startsWith("ID") &&
						!pairVariableValueList.get(i).startsWith("IDNOPARENT") && !pairVariableValueList.get(i).startsWith("IDGRANDNOPARENT"))
				{
					if (arrayCurrentNodeID.length > 1)
					{
						if(Integer.parseInt(arrayCurrentNodeID[1]) >= Integer.parseInt(tempDirectId))
							tempDirectId = arrayCurrentNodeID[1];
					}
					
					
				}
			}
		}
		
		
		if(id.compareToIgnoreCase("-1")==0 && tempId.compareToIgnoreCase("-1")!=0  && !bHasAttribute)
		   id = tempId;
		else if(id.compareToIgnoreCase("-1")==0 && tempDirectId.compareToIgnoreCase("-1")!=0)
			id = tempDirectId;
		
		return id;
	}
	
	private ArrayList<Pair<String,String>> obtainIterationValues(ArrayList<String> pairVariableValueList)
	{
		
		ArrayList<Pair<String,String>> values = new ArrayList<Pair<String,String>>();
		for (int i=0;i<pairVariableValueList.size();i++)
		{
			if(pairVariableValueList.get(i).startsWith("ID") || pairVariableValueList.get(i).startsWith("LIST")
					|| pairVariableValueList.get(i).startsWith("yes") || pairVariableValueList.get(i).isEmpty()
					|| pairVariableValueList.get(i).startsWith("RESETQUERY"))
				continue;
			    
				
			String[] vetPairValue = pairVariableValueList.get(i).split("/(?=(?:[^']*'[^']*')*[^']*$)");
            if (vetPairValue.length > 1)
            {
            		values.add(new Pair<String, String>(vetPairValue[0], vetPairValue[1]));
            }
		}
		
		return values;
	}
	
	private String obtainNodeName(ArrayList<String> pairVariableValueList)
	{
		String NodeName = "";
		for (int i=0;i<pairVariableValueList.size();i++)
		{
			if (pairVariableValueList.get(i).startsWith("IDCHILDATTRIBUTE"))
			{
				 String[] vetCurrNodeName = pairVariableValueList.get(i).split("IDCHILDATTRIBUTE");
                 if (vetCurrNodeName.length> 1)
                 {
                 	vetCurrNodeName = vetCurrNodeName[1].split("/(?=(?:[^']*'[^']*')*[^']*$)");
                     if (vetCurrNodeName.length > 0)
                     {
                         if (vetCurrNodeName[0].replace("SORTED", "").compareTo(currentNodeName) != 0)
                         {
                        	 NodeName = vetCurrNodeName[0].replace("SORTED", "");
                         }
                         else
                         {
                        	 NodeName =  currentNodeName;
                         }
                     }
                 }
			}
			
		}
		
		NodeName = removeNodeNameNumbers(NodeName);
		
		return NodeName;
	}
	
	private ArrayList<Pair<String,String>> obtainOpenNodesPairs(ArrayList<String> pairVariableValueList)
	{
		ArrayList<Pair<String,String>> pairList = new ArrayList<Pair<String,String>>();
		for (int i=0;i<pairVariableValueList.size();i++)
		{
			
			if(pairVariableValueList.get(i).startsWith("LISTCHILD") && !pairVariableValueList.get(i).startsWith("LISTCHILDATTRIBUTE"))
			{
				String[] vetPairValue = pairVariableValueList.get(i).split("/(?=(?:[^']*'[^']*')*[^']*$)");
	            if (vetPairValue.length > 1)
	            {
	            	if (vetPairValue[0].endsWith("SORTED"))
	            	{
	            		String node = vetPairValue[0].replace("LISTCHILD", "");
	            		node = node.replace("SORTED", "");
	            		pairList.add(new Pair<String,String>(vetPairValue[1],node));
	            	}
	            }
			}
		}
		
		return pairList;
	}
	
	private Pair<String,String> obtainParentInfo(ArrayList<String> pairVariableValueList,ArrayList<String> openNodeIteration,ArrayList<String> openNodeIDIteration,String strCurrentID)
	{
		Pair<String,String> parentInfo = new Pair<String, String>("", "-1");
		for (int i=0;i<pairVariableValueList.size();i++)
		{
			if(pairVariableValueList.get(i).startsWith("ID") /*&& !pairVariableValueList.get(i).startsWith("IDCHILD")*/
					&& !pairVariableValueList.get(i).startsWith("IDNOPARENT") && !pairVariableValueList.get(i).isEmpty()
					&& !pairVariableValueList.get(i).contains("_ATTRIBUTE_") && !pairVariableValueList.get(i).startsWith("IDNODEORDER"))
	        {
	            String[] vetPairValue = pairVariableValueList.get(i).split("/(?=(?:[^']*'[^']*')*[^']*$)");
	            if (vetPairValue.length > 1)
	            {
	            	if(i==2 && rootNodeName.isEmpty())
                    {
                    	rootNodeName = vetPairValue[0];
                    	if(rootNodeName.startsWith("ID"))
                    		rootNodeName = rootNodeName.substring(2);
                    	
                    	//if(document!= null && ! wrapperSchema.hasChildNodes(document, "element", rootNodeName.replace("_", ":"), "NOPARENT", true))
                    		//rootNodeName = "";
                    }
	            	
	            	if (vetPairValue[1].compareTo(currentFatherNodeID) != 0)
                    {
                    	
                    	if (!openNodesIDs.contains(currentFatherNodeID)&& currentFatherNodeID.compareTo("-1")!=0)
                    	{
                                openNodes.add(currentFatherNodeName);
                                openNodesIDs.add(currentFatherNodeID);
                    	}
                    }
	            	
	            	
	            	String pairNodeName = vetPairValue[0];
	            	pairNodeName = pairNodeName.replace("IDCHILD", "");
	            	pairNodeName = pairNodeName.replace("SORTED", "");
	            	
	            	pairNodeName= removeNodeNameNumbers(pairNodeName);
	            	
                    openNodeIteration.add(pairNodeName);    
                    openNodeIDIteration.add(vetPairValue[1]);
	            	
                    boolean bSetvalue= true;
                    if(strCurrentID.compareTo("-1") != 0 && parentInfo.getValue().compareTo("-1") != 0)
                    {
                    	int currentId = Integer.parseInt(strCurrentID);
                    	int possibleFatherId = Integer.parseInt(vetPairValue[1]);
                    	int fatherId = Integer.parseInt(parentInfo.getValue());
                    	
                    	bSetvalue =  (possibleFatherId > fatherId && possibleFatherId < currentId);
                    	
                    }
                    
                    if(bSetvalue)
                    {
                    	//if(!vetPairValue[1].contains("IDCHILD"))
                    		//parentInfo.setKey(pairNodeName);
                    	
	            		parentInfo.setValue(vetPairValue[1]);
                    }
                    
                    if(vetPairValue[0].contains("IDCHILD") && vetPairValue[1].compareTo(strCurrentID)==0)
                    {
                    	parentInfo.setKey(pairNodeName);
                    }
                    
                    /*else
                    {
                    	int possibleFatherId = Integer.parseInt(vetPairValue[1]);
                    	int currentId = Integer.parseInt(strCurrentID);
                    	if(possibleFatherId == currentId && strCurrentID.compareTo("-1") != 0)
                    		parentInfo.setKey(pairNodeName);
                    }*/
	            }
	        }
		}
		
		return parentInfo;
	}
	
	public String endOutputParser()
	{
		String endOutput = ""; 
		
		
		boolean bFirstChild = false;
    	if(!currentNodeID.isEmpty() && !currentFatherNodeID.isEmpty())
    	{
    		bFirstChild = Integer.parseInt(currentNodeID) - 1 == Integer.parseInt(currentFatherNodeID);
    	}
    	
    	ArrayList<String> nodesToOpen = new ArrayList<String>();
    	int IdToOpen  = Integer.parseInt(currentNodeID);
		boolean bIsOpenNodeMixed = false;
		if (currentNodeValues.size() == 1)
        {
             Pair<String, String> pair = currentNodeValues.get(0);
             String mixedNodeName = pair.getKey();
             if(mixedNodeName.contains("XMLMIXEDELEMENT_IDCHILD"))
            	 bIsOpenNodeMixed = true;
        }
		
		for(int k=openNodesPairs.size()-1; k>=0;k--)
		{
			Pair<String,String> openPair = openNodesPairs.get(k);
			//[17,22]
			 String strNodeIds =  openPair.getKey();
			 strNodeIds = strNodeIds.replace("[", "");
			 strNodeIds = strNodeIds.replace("]", "");
			 String [] vetIds = strNodeIds.split(",");
			 //int firstIdOpen = 0;
			 
			 for(int l = 0;l<vetIds.length;l++)
			 {
				 int nId = Integer.parseInt(vetIds[l]);
				 //if(nId <= firstIdOpen || firstIdOpen ==0)
					 //firstIdOpen = nId;	
    			 
    			 if((IdToOpen-1 == nId || (IdToOpen==nId)) && vetIds.length == 1)
    			 {
    				 String ancestral = removeNodeNameNumbers(openPair.getValue());
    				 String currentNode = currentNodeName;
    				 if(currentNode.isEmpty())
    					 currentNode = tryGetNodeName(currentNodeValues);
    				 
    		         if(ancestral.compareToIgnoreCase(currentNode)==0 && k == openNodesPairs.size()-1)
    		        	 continue;
    				 
    				 boolean bParentisSingle=  wrapperSchema.isMixed(document,"element",ancestral,"NOPARENT",true) || 
    	            			wrapperSchema.hasAttributes(document,"element",ancestral,"NOPARENT");
    				 
    				 if(bFirstChild && !currentFatherNodeName.isEmpty() 
							 && currentFatherNodeName.compareToIgnoreCase(ancestral)!=0 )
						 nodesToOpen.add(currentFatherNodeName);
    				 
    				 if(!bParentisSingle || (IdToOpen==nId))
    					 nodesToOpen.add(ancestral);
    				 
    				 bFirstChild = false;
    				 IdToOpen = nId;
    				 break;
    			 }
			 
			 }		 
		}
    	
    	
    	
    	boolean bisSingle=  wrapperSchema.isMixed(document,"element",currentFatherNodeName,"NOPARENT",true) || 
    			wrapperSchema.hasAttributes(document,"element",currentFatherNodeName,"NOPARENT");
    	
    	if(bFirstChild && !bisSingle && bPrintFather)
    		endOutput+=openNodeWithAttributes(currentFatherNodeName, new ArrayList<Pair<String,String>>());
    	else if(nodesToOpen.size() > 0)
    	{
    		for(int l=nodesToOpen.size()-1; l>=0;l--)
    		{
    			endOutput+=openNodeWithAttributes(nodesToOpen.get(l), new ArrayList<Pair<String,String>>());
    		}
    		
    	}
		
    	bPrintFather = true;
    	
		if(currentNodeValues.size() >0 )
		{
			endOutput+= openNodeWithAttributes(currentNodeName, currentNodeValues);
			currentNodeValues.clear();
			endOutput+= closeNode(currentNodeName);
		}
		
		//rootNodeName = "";
		boolean bCloseOpenNodes = false;
		for (int k = openNodesPairs.size()-1; k >=0; k--)
		{
			Pair<String,String> pair = openNodesPairs.get(k);
			String tmpcurrentNodeName = pair.getValue();
        	if(tmpcurrentNodeName.startsWith("ID"))
        		tmpcurrentNodeName = tmpcurrentNodeName.substring(2);
        	tmpcurrentNodeName = tmpcurrentNodeName.replace("_", ":");
			
        	bCloseOpenNodes = true;
        	if(tmpcurrentNodeName.compareToIgnoreCase(currentNodeName)==0 && k == openNodesPairs.size()-1)
        	{
        		openNodesPairs.remove(k);
        		continue;
        	}
        	
        	endOutput+="\n"+closeNode(tmpcurrentNodeName);
        	openNodesPairs.remove(k);
		}
		
		/*for (int k = openNodes.size()-1; k >=0; k--)
        {
            String currentNode = openNodes.get(k);
            if(currentNode.startsWith("ID"))
            	currentNode = currentNode.substring(2); 
            	
            if (currentNode.length() <= 0)
                continue;
            
            bCloseOpenNodes = true;
            endOutput+="\n"+closeNode(currentNode);
            //if(k==0)
            	//rootNodeName = currentNode;
            
            openNodes.remove(k);
        }*/
		
		//##if(!bCloseOpenNodes && !rootNodeName.isEmpty())
			//##endOutput+=closeNode(rootNodeName);
		
		return endOutput;
	}

    private String openNode(String nodeName)
    {
        return "<" + nodeName + ">";
    }

    private String openNodeWithAttributes(String nodeName, ArrayList<Pair<String, String>> attributesList)
    {
        
    	boolean bIsXmlMixedElement = false;
    	if (nodeName.length() <= 0)
        {                   
            if (attributesList.size() == 1)
            {
                Pair<String, String> pair = attributesList.get(0);
                nodeName = removeNodeNameNumbers(pair.getKey());
                currentNodeName = nodeName;
            }
            else
                return "";
        }
    	
    	if(currentNodeName.contains("xmlMixedElement_".toUpperCase()))
    		bIsXmlMixedElement = true;
        
        String returnNode = "";
        /*if(!rootNodeName.isEmpty() && (nodeName.compareTo(rootNodeName) !=0)  && !bPrintRoot)
        {
        	bPrintRoot= true;
        	returnNode += openNodeWithAttributes( rootNodeName, rootNodeValues);
        }*/
        
        if(bIsXmlMixedElement && attributesList.size()>0)
        {
        	return "\n"+ attributesList.get(0).getValue().trim().replace("'","");
        }
        
        String tempNodeName = new String(nodeName);
        
        //###lastNodeName = new String(nodeName);
        
        if(tempNodeName.startsWith("ID"))
        	tempNodeName = tempNodeName.substring(2);
        
        //if(tempNodeName.contains("ATTRIBUTE_"))
        	//tempNodeName = tempNodeName.replace("ATTRIBUTE_", "");
        
        returnNode += "\n<" + tempNodeName.toLowerCase().replace("_", ":");

        String nodeValue = "";
        for (int i = 0; i < attributesList.size(); i++)
        {
            Pair<String, String> pair = attributesList.get(i);
            if (pair.getKey().length()<=0)
                continue;
            
            if (removeNodeNameNumbers(pair.getKey()).compareToIgnoreCase(nodeName) == 0 || removeNodeNameNumbers(pair.getKey()).compareToIgnoreCase(tempNodeName)==0
            		&& ! removeNodeNameNumbers(pair.getKey()).startsWith("ATTRIBUTE_"))
            {
                nodeValue = pair.getValue();
                continue;
            }

            returnNode += " " + pair.getKey().replace("ATTRIBUTE_", "").replace("_", ":").toLowerCase();
            returnNode += "=";
            returnNode += "\"";
            returnNode += pair.getValue().trim().replace("'","");
            returnNode += "\"";
        }
        returnNode += ">";

        if (nodeValue.trim().replace("'","").length() > 0)
            returnNode += "\n" + nodeValue.trim().replace("'","");
        
        if(returnNode.contains("incategory"))
        {
        	int a = 1 ; 
        	a++;
        }
        
        return returnNode;
    }

    private String closeNode(String nodeName)
    {
    	String tempNodeName = new String(nodeName);
        if(tempNodeName.startsWith("ID"))
        	tempNodeName = tempNodeName.substring(2);
    	
    	return "</" + removeNodeNameNumbers(tempNodeName).toLowerCase().replace("_", ":") + ">";
    }
	
	/*
	private String tuPrologOutputToXML(String prologOutput)
	{
		String xmlOutPut = prologOutput;
		xmlOutPut = xmlOutPut.replace(" / ", "/");
		
		String [] outPutLineArray = xmlOutPut.split("\n");
		//|\".*?\"|
		
		ArrayList<String> outPutLineList = new ArrayList<String>(Arrays.asList(outPutLineArray));
		//if(list.contains("IDCHILDATTRIBUTE"))
		
		
		
		for(int i=0; i<outPutLineList.size();i++)
		{
			String [] pairVariableValueArray = outPutLineList.get(i).split("[ ]+(?=([^\']*\'[^\']*\')*[^\']*$)");
			ArrayList<String> pairVariableValueList = new ArrayList<String>(Arrays.asList(pairVariableValueArray));
			
			boolean bNodeHasAttribute = false;
			boolean bNodeHasValue = false;
			
			for(int j=0;j<pairVariableValueList.size();j++)
			{
				if(pairVariableValueList.get(j).startsWith("LIST")|| pairVariableValueList.get(j).startsWith("yes") || pairVariableValueList.get(j).startsWith("no"))
					continue;
		
				if(pairVariableValueList.get(j).startsWith("IDCHILDATTRIBUTE"))
				{
					bNodeHasAttribute = true;
					String [] vetCurrNodeName = pairVariableValueList.get(j).split("IDCHILDATTRIBUTE");
					if(vetCurrNodeName.length>1)
					{
						vetCurrNodeName = vetCurrNodeName[1].split("/");
						if(vetCurrNodeName.length >0)
							currentNodeName = vetCurrNodeName[0].replace("SORTED", "");
						
						//if(pairVariableValueArray[j-2].startsWith("IDCHILDATTRIBUTE"))
					}
				}
				else if(pairVariableValueList.get(j).startsWith("IDCHILD") && pairVariableValueList.get(j).endsWith("SORTED"))
				{
					String [] arrayCurrentNodeID= pairVariableValueList.get(j).split("/");
					if(arrayCurrentNodeID.length> 1)
					{
						currentNodeID = arrayCurrentNodeID[1];
						currentFatherNodeName = arrayCurrentNodeID[0].replace("IDCHILD", "").replace("SORTED", ""); 
					}
				}
				else if(!pairVariableValueList.get(j).startsWith("ID"))
				{
					String [] vetPairValue = pairVariableValueList.get(j).split("/");
					if(vetPairValue.length>1)
						currentNodeValues.add(new Pair<String,String>(vetPairValue[0],vetPairValue[1])); 
				}
				/*else if(pairVariableValueArray[j-1].startsWith("ID"))
				{
					bNodeHasValue = true;
				}*/
	
	        /*
			}
			
			if(bNodeHasAttribute)
			{
				int a = 1;
			}
		}
		
		return xmlOutPut;
	}
	
	private String openNode(String nodeName)
	{
		return "<"+nodeName+">";
	}
	
	private String openNodeWithAttributes(String nodeName, ArrayList<Pair<String,String>> attributesList)
	{
		String returnNode =  "<"+nodeName;
		
		for(int i= 0;i<attributesList.size();i++)
		{
			Pair<String,String> pair = attributesList.get(i);
			returnNode+= " "+pair.getKey().replace("_", ":");
			returnNode+="=";
			returnNode+="\"";
			returnNode+=pair.getValue();
			returnNode+="\"";
		}
		returnNode+=">";
		return returnNode;
	}
	
	private String closeNode(String nodeName)
	{
		return "</"+nodeName+">";
	}
	*/
	
    
	public String tuPrologParseTest()
	{
		String outputTest = 
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  H1 / ' An Ellipse and a Rectangle '  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 10  IDCHILDATTRIBUTEH1 / 11  ALIGN / center\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  H1 / ' An Ellipse and a Rectangle '  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 10\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 14  LISTCHILDATTRIBUTESVG_SVG / [17,19,15,14]  LISTCHILDATTRIBUTESVG_SVGSORTED / [14,15,17,19]  IDCHILDATTRIBUTESVG_SVGSORTED / 14\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 14  XMLNS_SVG / 'http://www.w3.org/2000/svg'  LISTCHILDATTRIBUTESVG_SVG / [17,19,15,14]  LISTCHILDATTRIBUTESVG_SVGSORTED / [14,15,17,19]  IDCHILDATTRIBUTESVG_SVGSORTED / 15\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 14  SVG_WIDTH / '12cm'  LISTCHILDATTRIBUTESVG_SVG / [17,19,15,14]  LISTCHILDATTRIBUTESVG_SVGSORTED / [14,15,17,19]  IDCHILDATTRIBUTESVG_SVGSORTED / 17\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 14  SVG_HEIGHT / '10cm'  LISTCHILDATTRIBUTESVG_SVG / [17,19,15,14]  LISTCHILDATTRIBUTESVG_SVGSORTED / [14,15,17,19]  IDCHILDATTRIBUTESVG_SVGSORTED / 19\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 14  LISTCHILDSVG_SVG / [21,26]  LISTCHILDSVG_SVGSORTED / [21,26]  IDCHILDSVG_SVGSORTED / 21  IDSVG_SVG / 14  LISTCHILDATTRIBUTESVG_ELLIPSE / [22,24,21]  LISTCHILDATTRIBUTESVG_ELLIPSESORTED / [21,22,24]  IDCHILDATTRIBUTESVG_ELLIPSESORTED / 21\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 14  LISTCHILDSVG_SVG / [21,26]  LISTCHILDSVG_SVGSORTED / [21,26]  IDCHILDSVG_SVGSORTED / 21  IDSVG_SVG / 14  SVG_RX / '110'  LISTCHILDATTRIBUTESVG_ELLIPSE / [22,24,21]  LISTCHILDATTRIBUTESVG_ELLIPSESORTED / [21,22,24]  IDCHILDATTRIBUTESVG_ELLIPSESORTED / 22\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 14  LISTCHILDSVG_SVG / [21,26]  LISTCHILDSVG_SVGSORTED / [21,26]  IDCHILDSVG_SVGSORTED / 21  IDSVG_SVG / 14  SVG_RY / '130'  LISTCHILDATTRIBUTESVG_ELLIPSE / [22,24,21]  LISTCHILDATTRIBUTESVG_ELLIPSESORTED / [21,22,24]  IDCHILDATTRIBUTESVG_ELLIPSESORTED / 24\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 14  LISTCHILDSVG_SVG / [21,26]  LISTCHILDSVG_SVGSORTED / [21,26]  IDCHILDSVG_SVGSORTED / 26  IDSVG_SVG / 14  LISTCHILDATTRIBUTESVG_RECT / [31,33,29,27,26]  LISTCHILDATTRIBUTESVG_RECTSORTED / [26,27,29,31,33]  IDCHILDATTRIBUTESVG_RECTSORTED / 26\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 14  LISTCHILDSVG_SVG / [21,26]  LISTCHILDSVG_SVGSORTED / [21,26]  IDCHILDSVG_SVGSORTED / 26  IDSVG_SVG / 14  SVG_X / '4cm'  LISTCHILDATTRIBUTESVG_RECT / [31,33,29,27,26]  LISTCHILDATTRIBUTESVG_RECTSORTED / [26,27,29,31,33]  IDCHILDATTRIBUTESVG_RECTSORTED / 27\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 14  LISTCHILDSVG_SVG / [21,26]  LISTCHILDSVG_SVGSORTED / [21,26]  IDCHILDSVG_SVGSORTED / 26  IDSVG_SVG / 14  SVG_Y / '1cm'  LISTCHILDATTRIBUTESVG_RECT / [31,33,29,27,26]  LISTCHILDATTRIBUTESVG_RECTSORTED / [26,27,29,31,33]  IDCHILDATTRIBUTESVG_RECTSORTED / 29\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 14  SVG_WIDTH / '3cm'  LISTCHILDSVG_SVG / [21,26]  LISTCHILDSVG_SVGSORTED / [21,26]  IDCHILDSVG_SVGSORTED / 26  IDSVG_SVG / 14  LISTCHILDATTRIBUTESVG_RECT / [31,33,29,27,26]  LISTCHILDATTRIBUTESVG_RECTSORTED / [26,27,29,31,33]  IDCHILDATTRIBUTESVG_RECTSORTED / 31\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 14  SVG_HEIGHT / '6cm'  LISTCHILDSVG_SVG / [21,26]  LISTCHILDSVG_SVGSORTED / [21,26]  IDCHILDSVG_SVGSORTED / 26  IDSVG_SVG / 14  LISTCHILDATTRIBUTESVG_RECT / [31,33,29,27,26]  LISTCHILDATTRIBUTESVG_RECTSORTED / [26,27,29,31,33]  IDCHILDATTRIBUTESVG_RECTSORTED / 33\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  P / 'More about ellipses'  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 35  LISTCHILDATTRIBUTEP / [36,38,35]  LISTCHILDATTRIBUTEPSORTED / [35,36,38]  IDCHILDATTRIBUTEPSORTED / 35\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  P / 'More about ellipses'  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 35  XLINK_TYPE / simple  LISTCHILDATTRIBUTEP / [36,38,35]  LISTCHILDATTRIBUTEPSORTED / [35,36,38]  IDCHILDATTRIBUTEPSORTED / 36\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  P / 'More about ellipses'  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 35  XLINK_HREF / 'ellipses.html'  LISTCHILDATTRIBUTEP / [36,38,35]  LISTCHILDATTRIBUTEPSORTED / [35,36,38]  IDCHILDATTRIBUTEPSORTED / 38\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  P / 'Ancora sui rettangoli'  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 41  LISTCHILDATTRIBUTEP / [44,42,46,41]  LISTCHILDATTRIBUTEPSORTED / [41,42,44,46]  IDCHILDATTRIBUTEPSORTED / 41\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  P / 'Ancora sui rettangoli'  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 41  XML_LANG / it  LISTCHILDATTRIBUTEP / [44,42,46,41]  LISTCHILDATTRIBUTEPSORTED / [41,42,44,46]  IDCHILDATTRIBUTEPSORTED / 42\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  P / 'Ancora sui rettangoli'  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 41  XLINK_TYPE / simple  LISTCHILDATTRIBUTEP / [44,42,46,41]  LISTCHILDATTRIBUTEPSORTED / [41,42,44,46]  IDCHILDATTRIBUTEPSORTED / 44\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  P / 'Ancora sui rettangoli'  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 41  XLINK_HREF / 'rectangles.html'  LISTCHILDATTRIBUTEP / [44,42,46,41]  LISTCHILDATTRIBUTEPSORTED / [41,42,44,46]  IDCHILDATTRIBUTEPSORTED / 46\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  HR / ''  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 49\n"+
				"yes.\n"+
				"IDNOPARENT / 1  IDBODY / 9  P / ' Last modified December 30, 2004'  LISTCHILDBODY / [10,14,49,35,41,51]  LISTCHILDBODYSORTED / [10,14,35,41,49,51]  IDCHILDBODYSORTED / 51  LISTCHILDATTRIBUTEP / [51]  LISTCHILDATTRIBUTEPSORTED / [51]  IDCHILDATTRIBUTEPSORTED / 51\n"+
				"no.";
		
		  
		String [] vetOutput = outputTest.split("\n");
		String xmlOutput = "";
		outputType = ParseType.TUPROLOG;
		for(int i=0; i < vetOutput.length;i++)
		{
			xmlOutput+= parseOutputToXML(vetOutput[i]);
		}
		
		xmlOutput+=endOutputParser();
		
		return xmlOutput;
	}
}
