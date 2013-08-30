/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufrj.ppgi.parser;
import br.ufrj.ppgi.io.FileManager;
import br.ufrj.ppgi.parser.ElementoXML.TipoElemento;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
/**
 *
 * @author Rafael Pinheiro
 */
public class DefaultHandleSAX extends DefaultHandler {
	
	private static final String PATHCONFIG = "config.txt";
    private String strFato;
    private static int contadorIdPai = 0;
    private Stack<ElementoXML> pilha = new Stack<ElementoXML>();
    private FileManager arquivo;
    private String strConteudo = "";
    private Boolean bResetLastId = false;
    private ElementoXML elementoRaiz = null;
    private Boolean bElementoAberto = false;
    private ElementoXML elementoAtual;
        
    public DefaultHandleSAX() {
        super(); 
        arquivo = new FileManager();
        contadorIdPai = 0;
    }
    
    public void setResetLastId(Boolean _bResetLastId)
    {
    	bResetLastId = _bResetLastId;
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
    
    @Override
    public void startDocument() {
    	if ( bResetLastId )
    	{
    		contadorIdPai = 0;
    	}
    	else
    	{
    		contadorIdPai = obterId();
    	}
    	
    	
    }

    @Override
    public void endDocument() {
		escreverId(contadorIdPai);
    }
        
    private void processarAtributos(Attributes atts )
    {
        for( int i = 0; i < atts.getLength(); i++ )
        {
        	ElementoXML novoElemento = new ElementoXML();
        	novoElemento.setTipo(ElementoXML.TipoElemento.ATRIBUTO);
            String atributo = atts.getQName(i);
            if (atributo.contains(":"))
            	atributo = atributo.replace(":", "_");
            
            novoElemento.setNome(atributo);
            
            getElementoAtual().adicionarFilho(novoElemento);
            novoElemento.setPai(getElementoAtual());
            novoElemento.setId(++contadorIdPai);

            ElementoXML conteudo = new ElementoXML();
            conteudo.setId(++contadorIdPai);
            conteudo.setConteudo(atts.getValue(i));
            conteudo.setPai(novoElemento);
            conteudo.setTipo(ElementoXML.TipoElemento.TEXTO);
            
            novoElemento.adicionarFilho(conteudo);
            
            /*
            
            ElementoXML elementoPai = pilha.lastElement();
            //elementoPai.possuiAtributo(true);
            String fatoAtributo = atributo.toLowerCase() + "(" + elementoPai.getId() + ",'";
            fatoAtributo +=  + "').\n";
            System.out.println(fatoAtributo);
            arquivo.writeFacts(fatoAtributo);           */
        }
    }
    
    public String getUltimoElementoPilha(){
    	ElementoXML elementoAtual = (ElementoXML)pilha.lastElement();
    	return elementoAtual.getNome();
    }
    
    public ElementoXML getElementoAtual(){
    	return elementoAtual;
    }
    
    
    public void apontarPai(){
    	elementoAtual = elementoAtual.getPai();
    }
    
    @Override
    public void startElement (String uri, String localName, String qName, Attributes atts) {
    	
    	ElementoXML novoElemento = new ElementoXML();
    	novoElemento.setTipo(ElementoXML.TipoElemento.FILHO);
    	novoElemento.setNome(qName);
    	novoElemento.setId(++contadorIdPai);
    	if ( pilha.size() == 0){ //elemento Raiz
    		novoElemento.setPai(null);
    		pilha.push(novoElemento);
    		elementoAtual = novoElemento;
    		strConteudo += elementoAtual.getNome().toLowerCase();
	    	strConteudo += "(" + elementoAtual.getId() + ").\n";
    		return;
    	}
    	else{
    		novoElemento.setPai(getElementoAtual());
    	}    	
    	
    	if ( elementoRaiz == null ){
    		pilha.push(novoElemento);
    		elementoRaiz = novoElemento;
    	}   
    	
    	getElementoAtual().adicionarFilho(novoElemento);
    	elementoAtual = novoElemento;    		
        
        processarAtributos( atts);
    }

    @Override
     public void endElement (String uri, String localName, String qName) throws SAXException {
    		if ( elementoRaiz != null && elementoRaiz.getNome().equals(qName) ){
    			strConteudo += elementoRaiz.getNome().toLowerCase();
    	    	strConteudo += "(" + elementoRaiz.getPai().getId() + ", " + elementoRaiz.getId() + ").\n";
    	    	if ( !elementoRaiz.getConteudo().isEmpty() && elementoRaiz.getFilhos().isEmpty()){
    	    		strConteudo += elementoRaiz.getNome().toLowerCase();
        	    	strConteudo += "(" + elementoRaiz.getId() + ", '" + elementoRaiz.getConteudo().replace("'", "`") + "').\n";
    	    	}
    	    	
    			apontarPai();
    	    	pilha.pop();
    	    	escreverElementoNoArquivo(elementoRaiz);
    	    	elementoRaiz = null;
    	    	System.out.println(strConteudo);
    	    	arquivo.writeFacts(strConteudo);
        		strConteudo = "";
    		}
    		else
    		{
    			apontarPai();
    		}
    		//System.out.println(strFato);
            //arquivo.writeFacts(strFato);
        }

    @Override
    public void characters (char[] ch, int start, int length) throws SAXException {
       String conteudo = new String( ch, start, length);
       conteudo = conteudo.trim();
       if( conteudo.isEmpty() )
    	   return;
       ElementoXML novoElemento = new ElementoXML();
       novoElemento.setTipo(ElementoXML.TipoElemento.TEXTO);
       novoElemento.setConteudo(conteudo);
       novoElemento.setId(++contadorIdPai);
       getElementoAtual().adicionarFilho(novoElemento);
       novoElemento.setPai(getElementoAtual());
       //getElementoAtual().setConteudo(conteudo);
    }
    
    private void escreverElementoNoArquivo(ElementoXML elemento){
    	Boolean bElementoMisto = elemento.ehElementoMisto();
    	ArrayList<ElementoXML> filhos = elemento.getFilhos();
    	for( int i = 0; i < filhos.size(); i++){
    		if( ElementoXML.TipoElemento.FILHO != filhos.get(i).getTipo() || ElementoXML.TipoElemento.ATRIBUTO != filhos.get(i).getTipo()){
	    		if ( bElementoMisto && filhos.get(i).getTipo() == ElementoXML.TipoElemento.TEXTO){
	    			strConteudo += "xml/elementoMisto";
	    			strConteudo += "(" + filhos.get(i).getPai().getId() + ", " + filhos.get(i).getId() + ", '" + filhos.get(i).getConteudo() + "').\n";
	    		}
	    		else{
		    		if( filhos.get(i).getTipo() == ElementoXML.TipoElemento.TEXTO ){
		    			if ( filhos.get(i).getPai().getTipo() == ElementoXML.TipoElemento.ATRIBUTO ){
		    				strConteudo += filhos.get(i).getPai().getNome().toLowerCase();
			    			strConteudo += "(" + filhos.get(i).getPai().getPai().getId() + ", " + filhos.get(i).getPai().getId() + ", '" + filhos.get(i).getConteudo() + "').\n";
		    			}
		    			else{
			    			strConteudo += filhos.get(i).getPai().getNome().toLowerCase();
			    			strConteudo += "(" + filhos.get(i).getPai().getPai().getId() + ", " + filhos.get(i).getPai().getId() + ", '" + filhos.get(i).getConteudo() + "').\n";
		    			}
		    		}
		    		/*else{
		    			
		    			strConteudo += filhos.get(i).getNome().toLowerCase();
		    			strConteudo += "(" + filhos.get(i).getPai().getId() + ", " + filhos.get(i).getId() + ", '" + filhos.get(i).getConteudo() + "').\n";
		    		}*/
	    		}
    		}
    		escreverElementoNoArquivo(filhos.get(i));
    	}    	
    }
}