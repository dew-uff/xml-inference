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
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import wrapper.Pair;
/**
 *
 * @author Leonardo Machado
 */
public class NewHandleSAX extends DefaultHandler {
	
	private static final String PATHCONFIG = "config.txt";
	private FileManager arquivo;
	int nContador;
	boolean bRootProcessed;
	boolean elementIsOpened;
	int idPai;
	int idFilho;
	int idAvo;
	Map<String, Pair<Integer,String>> mapAtributosAtual = new HashMap<String, Pair<Integer,String>>();
	ArrayList<ElementoXML> vetAtributosAtual = new ArrayList<ElementoXML>();
	Map<String, Pair<Integer,String>> mapAtributosNamespaceAtual = new HashMap<String, Pair<Integer,String>>();
	ArrayList<ElementoXML> vetAtributosNamespaceAtual = new ArrayList<ElementoXML>();; 
	String ultimoElemento="";
	ArrayList<Integer> stackID = new ArrayList<Integer>();;
	String conteudoAtual="";
	ElementoXML elementoAtual = new ElementoXML();
	ElementoXML elementoRaiz = new ElementoXML();
	boolean bPossuiNamespaces;
	int idPaiElementoNamespace;
	private Boolean bResetLastId = false;
    /*private String strFato;
    private static int contadorIdPai = 0;
    private Stack<ElementoXML> pilha = new Stack<ElementoXML>();
    private String strConteudo = "";
    
    private ElementoXML elementoRaiz = null;
    private Boolean bElementoAberto = false;
    private ElementoXML elementoAtual;*/
    
    private ArrayList<String> orderedElementList = new ArrayList<String>();
        
    public NewHandleSAX() {
        super(); 
        arquivo = new FileManager();
        //contadorIdPai = 0;
        //elementoRaiz = 0;
    	//elementoAtual = 0;
    	bRootProcessed = false;
    	elementIsOpened = false;
    	conteudoAtual = "";
    	ultimoElemento = "";
    	idPai = 0;
    	idFilho = 0;
    	idAvo = 0;
    	nContador = 0;
    	idPaiElementoNamespace =0;
    	bPossuiNamespaces =false;
    }
    public void setResetLastId(Boolean _bResetLastId)
    {
    	bResetLastId = _bResetLastId;
    }
    
    /*
    public ArrayList<String> orderedElementList()
    {
    	return orderedElementList;
    }
    */
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
    		nContador = 0;
    	}
    	else
    	{
    		nContador = obterId();
    	}
    	
    	
    }

    @Override
    public void endDocument() 
    {
		escreverId(nContador);
    }
    
    ArrayList<ElementoXML> processarAtributos(Attributes attrs)
    {
    	//std::map<std::string, std::pair<int, std::string>> mapAtributos;
    	ArrayList<ElementoXML> vetAtributos = new ArrayList<ElementoXML>();
    	
    	for (int i = 0; i < attrs.getLength(); i++)
    	{
    		
    		int idAtributo = ++nContador;

    		String nomeAtributo = attrs.getQName(i);

    		if(nomeAtributo.contains(":"))
    			nomeAtributo = nomeAtributo.replace(":", "_");
    		

    		String novoConteudo = attrs.getValue(i);
    		
    		ElementoXML eleXML = new ElementoXML();
    		eleXML.setConteudo(novoConteudo);
    		eleXML.setId(idAtributo);
    		eleXML.setNome(nomeAtributo);
    		vetAtributos.add(eleXML);
    	}
    	return vetAtributos;

    }
    
    
    /*    
    private void processarAtributos(Attributes atts )
    {
        for( int i = 0; i < atts.getLength(); i++ )
        {
        	ElementoXML novoElemento = new ElementoXML();
        	novoElemento.setTipo(ElementoXML.TipoElemento.ATRIBUTO);
            String atributo = atts.getQName(i);

            if (atributo.contains(":"))
            	atributo = atributo.replace(":", "_");
            
            novoElemento.setNome(atributo.toLowerCase());
            
            getElementoAtual().adicionarFilho(novoElemento);
            novoElemento.setPai(getElementoAtual());
            novoElemento.setId(++contadorIdPai);

            ElementoXML conteudo = new ElementoXML();
            conteudo.setId(++contadorIdPai);
            conteudo.setConteudo(atts.getValue(i));
            conteudo.setPai(novoElemento);
            conteudo.setTipo(ElementoXML.TipoElemento.TEXTO);
            
            novoElemento.adicionarFilho(conteudo);
            
        }
    }
    */
    
    /*public String getUltimoElementoPilha(){
    	ElementoXML elementoAtual = (ElementoXML)pilha.lastElement();
    	return elementoAtual.getNome();
    }
    
    public ElementoXML getElementoAtual(){
    	return elementoAtual;
    }
    
    
    public void apontarPai(){
    	elementoAtual = elementoAtual.getPai();
    }*/
    
    @Override
    public void startElement (String uri, String localName, String qName, Attributes atts) 
    {
    	
    	
    	if (!ultimoElemento.trim().isEmpty() && stackID.size()>0)
    	{
    		
    		escreveArquivo(constroiStringElementoPai(ultimoElemento));
    	}
    	

    	
    	if (vetAtributosAtual.size() > 0 && stackID.size()>0)
    	{
    		for(int i=0; i< vetAtributosAtual.size();i++)
    		{
    			escreveArquivo(constroiStringAtributo(vetAtributosAtual.get(i).getNome(), vetAtributosAtual.get(i).getConteudo(), ultimoElemento, stackID.get(stackID.size()-1), vetAtributosAtual.get(i).getId()));

   
    		}
    	}

    	if (!conteudoAtual.trim().isEmpty())
    	{
    		int idElementoMisto = ++nContador;
    		escreveArquivo(constroiStringElementoMisto(stackID.get(stackID.size() - 1), idElementoMisto, conteudoAtual));
    		conteudoAtual = "";
    	}

    	String nomeElemento = qName;
    	elementIsOpened = true;
    	
    		if(nomeElemento.contains(":"))
    			nomeElemento = nomeElemento.replace(":", "_");
    	

    	ultimoElemento = nomeElemento;

    	idAvo = idPai;
    	idPai = idFilho;

    	if(bPossuiNamespaces && idPaiElementoNamespace != 0)
    	{
    		idFilho = idPaiElementoNamespace;
    		idPaiElementoNamespace = 0;
    	}
    	else
    		idFilho = ++nContador;

    	stackID.add(idFilho);
    	bPossuiNamespaces = false;

    	
    	vetAtributosAtual.clear();
    	
    	ArrayList<ElementoXML>tmpVetAtributosAtual = processarAtributos(atts);
    	
    	
    	vetAtributosAtual.addAll(vetAtributosNamespaceAtual);
    	vetAtributosAtual.addAll(tmpVetAtributosAtual);
    	vetAtributosNamespaceAtual.clear();
    	
    	
    	
    	
    	/*if(!orderedElementList.contains(qName))
    		orderedElementList.add(qName);
    	
    	ElementoXML novoElemento = new ElementoXML();
    	novoElemento.setTipo(ElementoXML.TipoElemento.FILHO);
    	qName = qName.replace(":", "_");
    	novoElemento.setNome(qName);
    	novoElemento.setId(++contadorIdPai);
    	if ( pilha.size() == 0)
    	{ //elemento Raiz
    		novoElemento.setPai(null);
    		pilha.push(novoElemento);
    		elementoAtual = novoElemento;
    		strConteudo += elementoAtual.getNome().toLowerCase();
	    	strConteudo += "(" + elementoAtual.getId() + ").\n";
	    	
	    	processarAtributos( atts);
	    	escreverElementoNoArquivo(elementoAtual);
    		
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
        
        processarAtributos( atts);*/
    }

    @Override
     public void endElement (String uri, String localName, String qName) throws SAXException 
    {
    	String nomeElemento = qName;
    	
    	
    	if(nomeElemento.contains(":"))
    		nomeElemento = nomeElemento.replace(":", "_");
    	

    	if (nomeElemento.compareTo(ultimoElemento) == 0)
    	{
    		//if (mapAtributosAtual.size() > 0 && stackID.size()>0)
    		if (vetAtributosAtual.size() > 0 && stackID.size()>0)
    		{
    			if (!conteudoAtual.trim().isEmpty())
    				escreveArquivo(constroiStringElementoFilho(nomeElemento,conteudoAtual));
    			else
    				escreveArquivo(constroiStringElementoPai(nomeElemento));
    			
    			for(int i=0; i< vetAtributosAtual.size();i++)
    			{
    				escreveArquivo(constroiStringAtributo(vetAtributosAtual.get(i).getNome(), vetAtributosAtual.get(i).getConteudo(), nomeElemento, stackID.get(stackID.size() - 1),vetAtributosAtual.get(i).getId()));
    			}
    			vetAtributosAtual.clear();
    		}
    		else
    			escreveArquivo(constroiStringElementoFilho(nomeElemento, conteudoAtual));
    	}
    	else if (!conteudoAtual.trim().isEmpty())
    	{
    		if (stackID.size()>1)
    			escreveArquivo(constroiStringElementoMisto(stackID.get(stackID.size() - 1), ++nContador,conteudoAtual));
    	}
    	
    	elementIsOpened = false;
    	stackID.remove(stackID.size()-1);
    	conteudoAtual ="";
    	ultimoElemento = "";
    	
    	/*if ( elementoRaiz != null && elementoRaiz.getNome().equals(qName) ){
            strConteudo += elementoRaiz.getNome().toLowerCase();
    	    strConteudo += "(" + elementoRaiz.getPai().getId() + ", " + elementoRaiz.getId() + ").\n";
    	    if ( !elementoRaiz.getConteudo().isEmpty() && elementoRaiz.getFilhos().isEmpty()){
    	    	strConteudo += elementoRaiz.getNome().toLowerCase();
        	strConteudo += "(" + elementoRaiz.getId() + ", '" + elementoRaiz.getConteudo().replace("'", "`") + "').\n";
        	elementoRaiz.setElementoImpresso(true);
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
    		if ( getElementoAtual().getFilhos().size() == 0 )
    		{
		       ElementoXML novoElemento = new ElementoXML();
		       novoElemento.setTipo(ElementoXML.TipoElemento.TEXTO);
		       novoElemento.setConteudo("");
		       novoElemento.setId(++contadorIdPai);
		       getElementoAtual().adicionarFilho(novoElemento);
		       novoElemento.setPai(getElementoAtual());
    		}
            apontarPai();
    	}*/
    	//System.out.println(strFato);
        //arquivo.writeFacts(strFato);
    }

    @Override
    public void characters (char[] ch, int start, int length) throws SAXException {
       
    	String conteudo = new String( ch, start, length);

    	//std::string str = conteudo;
    	conteudoAtual = conteudo;
    	conteudoAtual = conteudoAtual.replace("\n", "");
    	conteudoAtual = conteudoAtual.replace("\t", "");
    	//conteudoAtual.erase(std::remove_if(conteudoAtual.begin(), conteudoAtual.end(),
    		//[](char c){ return (c == '\n' || c == '\t' || c == '\n'); }), conteudoAtual.end());
    		

         
    	if (conteudoAtual.isEmpty())
    		return;
    	
       /*String conteudo = new String( ch, start, length);
       if ( !possuiLetra(conteudo))
    	   return;
       
       ElementoXML novoElemento = new ElementoXML();
       novoElemento.setTipo(ElementoXML.TipoElemento.TEXTO);
       novoElemento.setConteudo(conteudo);
       novoElemento.setId(++contadorIdPai);
       getElementoAtual().adicionarFilho(novoElemento);
       novoElemento.setPai(getElementoAtual());*/
       
    }
    
    String constroiStringElementoFilho(String _nomeElemento, String  _conteudoElemento)
    {
    	if (stackID.size() <= 0)
    		return "";

    	String print = _nomeElemento.toLowerCase();

    	String conteudo = _conteudoElemento;
    	conteudo = conteudo.replace("\'", "");
    	conteudo = conteudo.replace("\n", "");
    	//conteudo  = conteudo.replace('\'', newChar); 
    	//std::replace(conteudo.begin(), conteudo.end(), '\'', '`');
    	//std::replace(conteudo.begin(), conteudo.end(), '\n', ' ');

    	//std::ostringstream s;
    	if (stackID.size()>1)	
    		print += "(" + stackID.get(stackID.size() - 2) + ", " + stackID.get(stackID.size() - 1) + ", '" + conteudo + "').\n";

    	//print += s.str();


    	return print;
    }
    
    String constroiStringElementoPai(String _nomeElemento)
    {
    	if (stackID.size() <= 0)
    		return "";
    	
    	String print = _nomeElemento.toLowerCase();
    	//std::ostringstream s;
    	if (stackID.size()>1)
    		print += "(" + stackID.get(stackID.size() - 2) + ", " + stackID.get(stackID.size() - 1) + ").\n";
    	else
    		print += "(" + stackID.get(stackID.size() - 1) + ").\n";
    		
    	//print += s.str();

    	
    	return print;
    }
    
    String constroiStringAtributo(String _nomeAtributo, String _conteudo, String  _nomePai, int _idPai, int _idFilho)
    {
    	String conteudoAtributo = _nomePai.toLowerCase();
    	conteudoAtributo += "_attribute_";
    	conteudoAtributo += _nomeAtributo.toLowerCase();
    	//####
    	//std::replace(_conteudo.begin(), _conteudo.end(), '\'', '`');
    	//std::replace(_conteudo.begin(), _conteudo.end(), '\n', ' ');
    	_conteudo = _conteudo.replace("\'", "");
    	_conteudo = _conteudo.replace("\n", "");
    	
    	//std::ostringstream s;
    	conteudoAtributo+= "(" + _idPai + ", " + _idFilho + ", " + "'" + _conteudo + "').\n";
    	//conteudoAtributo += s.str();

    	return conteudoAtributo;
    }
    
    String constroiStringElementoMisto(int _idPai, int _idFilho,String _conteudo)
    {

    	String conteudoArquivo = "xmlMixedElement";
    	//std::ostringstream s;
    	
    	String  conteudo = _conteudo;
    	//####
    	//std::replace(conteudo.begin(), conteudo.end(), '\'', '`');
    	//std::replace(conteudo.begin(), conteudo.end(), '\n', ' ');
    	conteudo = conteudo.replace("\'", "");
    	conteudo = conteudo.replace("\n", "");

    	conteudoArquivo+= "(" + _idPai + ", " + _idFilho + ", " + "'" + conteudo + "').\n";
    	//conteudoArquivo += s.str();

    	return conteudoArquivo;
    }
    
    void escreveArquivo(String _conteudo)
    {
    	
    	 arquivo.writeFacts(_conteudo);
    }
    
    /*
    private void escreverElementoNoArquivo(ElementoXML elemento){
    	Boolean bElementoMisto = elemento.ehElementoMisto();
    	ArrayList<ElementoXML> filhos = elemento.getFilhos();
    	for( int i = 0; i < filhos.size(); i++){
    		if ( filhos.get(i).getTipo() == ElementoXML.TipoElemento.FILHO &&
                        !filhos.get(i).naoPossuiElementoTexto())
    		{
                    if ( !filhos.get(i).getElementoImpresso() ){
                        if ( filhos.get(i).getNome().toLowerCase().equals("hw")){
                            int a= 0;
                        }
                        
    			strConteudo += filhos.get(i).getNome().toLowerCase();
    			strConteudo += "(" + filhos.get(i).getPai().getId() + ", " + filhos.get(i).getId() + ").\n";
    			filhos.get(i).setElementoImpresso(true);
                    }
    		}
    		if( ElementoXML.TipoElemento.FILHO != filhos.get(i).getTipo() || ElementoXML.TipoElemento.ATRIBUTO != filhos.get(i).getTipo()){
    			if ( bElementoMisto && filhos.get(i).getTipo() == ElementoXML.TipoElemento.TEXTO){
    				if ( !filhos.get(i).getElementoImpresso() ){
                                    imprimirPai(filhos.get(i).getPai());
                                    strConteudo += "xmlMixedElement";
                                    strConteudo += "(" + filhos.get(i).getPai().getId() + ", " + filhos.get(i).getId() + ", '" + filhos.get(i).getConteudo().replace("'", "`") + "').\n";
                                    filhos.get(i).setElementoImpresso(true);
                                }
	    		}
	    		else
	    		{
		    		if( filhos.get(i).getTipo() == ElementoXML.TipoElemento.TEXTO )
		    		{
		    			if ( filhos.get(i).getPai().getTipo() == ElementoXML.TipoElemento.ATRIBUTO )
		    			{
                            if ( !filhos.get(i).getElementoImpresso() )
                            {
			    				strConteudo += filhos.get(i).getPai().getPai().getNome().toLowerCase()+"_attribute_"+filhos.get(i).getPai().getNome().toLowerCase();
			    				//strConteudo += filhos.get(i).getPai().getNome().toLowerCase();
				    			strConteudo += "(" + filhos.get(i).getPai().getPai().getId() + ", " + filhos.get(i).getPai().getId() + ", '" + filhos.get(i).getConteudo().replace("'", "`") + "').\n";
	                            filhos.get(i).setElementoImpresso(true);
                            }
		    			}
		    			else
		    			{
		    				//imprimirPai(filhos.get(i).getPai().getPai());
                                            if ( !filhos.get(i).getElementoImpresso() ){
		    				strConteudo += filhos.get(i).getPai().getNome().toLowerCase();
			    			strConteudo += "(" + filhos.get(i).getPai().getPai().getId() + ", " + filhos.get(i).getPai().getId() + ", '" + 
			    							filhos.get(i).getConteudo().replace("'", "`")  + "').\n";
                                                filhos.get(i).setElementoImpresso(true);
                                            }
			    			
		    			}
		    		}
		    		else
		    		{
		    			//strConteudo += filhos.get(i).getNome().toLowerCase();
		    			//strConteudo += "(" + filhos.get(i).getPai().getId() + ", " + filhos.get(i).getId() + ", '" + filhos.get(i).getConteudo() + "').\n";
		    		}
	    		}
    		}
    		escreverElementoNoArquivo(filhos.get(i));
    	}    	
    }
    
    private void imprimirPai(ElementoXML pai){
    	if ( !pai.getElementoImpresso() ){
 	     	strConteudo += pai.getNome().toLowerCase();
	    	strConteudo += "(" + pai.getPai().getId() + ", " + pai.getId() + ").\n";
	    	pai.setElementoImpresso(true);
    	}
    }
    
    private boolean possuiLetra( String s ) {  
    	  
        // cria um array de char  
        char[] c = s.toCharArray();  
        boolean d = false;  
      
        for ( int i = 0; i < c.length; i++ ){  
            // verifica se o char n�o � um d�gito  
            if ( Character.isLetterOrDigit( c[ i ] ) ) {  
                d = true;
            }  
        }        
      
        return d;      
    }
    
    private boolean possuiSomenteEspacoEmBraco(String s){
    	s.replace("\n", "");
    	s.replace("\t", "");
    	if ( s.indexOf(" ") > - 1)
    		return true;
    	return false;
    }
    */
    
}