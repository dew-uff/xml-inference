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


public class XMLParser extends DocumentParser{
	private static int contadorIdPai = 0;
	private long totalTime = 0;
	private Boolean bClearData = false;
	private Boolean bResetLastId = false;
	private static final String PATHCONFIG = "config.txt";
	
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
		HashMap<String, Document> documentList = parserHandler(fileList);
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
            
            DefaultHandleSAX handler = new DefaultHandleSAX();
            handler.setResetLastId(bResetLastId);
            SAXParserFactory factory = SAXParserFactory.newInstance();
            
                       
            for(String name : keyNames){
                try{
                     SAXParser saxParser = factory.newSAXParser();
                     String path = fileList.get(name).getAbsolutePath();
                     saxParser.parse( new File(path), handler ); 
                }catch (Throwable t) {
                    t.printStackTrace();
                }
                contadorIdPai++;
               /* String stringProlog = process(documentList.get(name));
                //System.out.println(stringProlog);
                FileManager fileManager = new FileManager();
                fileManager.writeFacts(stringProlog);*/
            }

            long tempoFinal = System.currentTimeMillis();  
            setTotalTime((tempoFinal - tempoInicial) / 1000);

            System.out.printf("Tempo em segundos: " + getTotalTime());
	}
	
	private String process(Document doc){
		ArrayList<String> factsList = new ArrayList<String>();
		
		// Raiz
		Element raiz = doc.getDocumentElement();
		factsList.add(raiz.getNodeName().toLowerCase() + "(" + contadorIdPai + "). \n");
		
		if(raiz.hasAttributes()){
			NamedNodeMap attributeList = raiz.getAttributes();
			
			for(int j=0; j < attributeList.getLength(); j++){
				//o comentário abaixo no replace é porque não é necessário. Está comentado para caso tenha a necessidade de voltar
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
				if(!nl.item(i).getNodeName().equals("#text")){
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
						//mixedElementsFactsList.add("xml/elementoMisto(id"+Integer.toString(idPai)+", '" + child.getNodeValue().replace("'", "Â´").replace("\t", "").replace("\n", "") + "').\n");
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
				//o comentário abaixo no replace é porque não é necessário. Está comentado para caso tenha a necessidade de voltar
				factsList.set(index, content + ("'" + node.getFirstChild().getNodeValue().replace("'", "\"")/*.replace("\t", "").replace("\n", "")*/ + "'). \n"));
				
			} else if((hasElementChild == false) && hasAttribute && hasTextChild){
				NamedNodeMap attributeList = node.getAttributes();
				
				contadorIdPai++;
				idProprio = contadorIdPai;
				//o comentário abaixo no replace é porque não é necessário. Está comentado para caso tenha a necessidade de voltar
				factsList.set(index, content + (Integer.toString(idProprio)/*+ ", " /*+ ++contadorIdPai*/ + ", '" + node.getFirstChild().getNodeValue()/*.replace("'", "''").replace("\t", "").replace("\n", "")*/ + "'). \n"));
				
				for(int j=0; j < attributeList.getLength(); j++){
					//o comentário abaixo no replace é porque não é necessário. Está comentado para caso tenha a necessidade de voltar
					factsList.add(attributeList.item(j).getNodeName().toLowerCase() + "(" + Integer.toString(idProprio)+ ", " + ++contadorIdPai +  ", '" + attributeList.item(j).getNodeValue().replace("'", "\"")/*.replace("\t", "").replace("\n", "")*/ + "'). \n");
				}
				
			} else if(hasElementChild){
				contadorIdPai++;
				idProprio = contadorIdPai;
				
				factsList.set(index, content + (Integer.toString(idProprio)+"). \n"));
				
				if(hasAttribute){
					NamedNodeMap attributeList = node.getAttributes();
					
					for(int j=0; j < attributeList.getLength(); j++){
						//o comentário abaixo no replace é porque não é necessário. Está comentado para caso tenha a necessidade de voltar
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
					//o comentário abaixo no replace é porque não é necessário. Está comentado para caso tenha a necessidade de voltar
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
					mixedElementsFactsList.add("xml/elementoMisto("+Integer.toString(idPai)+", " + ++contadorIdPai +  ", '" + child.getNodeValue().replace("'", "Â´").replace("\t", "").replace("\n", "") + "').\n");
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
