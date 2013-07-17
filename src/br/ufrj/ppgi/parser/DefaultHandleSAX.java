/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufrj.ppgi.parser;
import br.ufrj.ppgi.io.FileManager;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
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
    private Stack<ElementSax> pilha = new Stack<ElementSax>();
    private FileManager arquivo;
    private String strConteudo = "";
    private Boolean bResetLastId = false;
        
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
            String atributo = atts.getQName(i);
            if (atributo.contains(":"))
            	atributo = atributo.replace(":", "_");
            
            ElementSax elementoPai = pilha.lastElement();
            elementoPai.possuiAtributo(true);
            String fatoAtributo = atributo.toLowerCase() + "(id" + elementoPai.getId() + ",'";
            fatoAtributo += atts.getValue(i) + "').\n";
            System.out.println(fatoAtributo);
            arquivo.writeFacts(fatoAtributo);           
        }
    }
    
    @Override
        public void startElement (String uri, String localName, String qName, Attributes atts) {
            if ( pilha.size() > 0 )
    		{
		    	ElementSax ultimoElemento = pilha.lastElement();
		        ultimoElemento.setConteudoElemento(strConteudo);
		        strConteudo = "";
    		}
    		
            ElementSax novoElemento = new ElementSax();
            if ( pilha.size() == 0 )
                novoElemento.setIdPai(-1);
            else
            {
                novoElemento.setIdPai(pilha.lastElement().getId());
                pilha.lastElement().setFilho(true);
            }
            
            novoElemento.setId(++contadorIdPai);
            novoElemento.setNomeElemento(qName);
            pilha.push(novoElemento);
            
            processarAtributos( atts);
        }

    @Override
        public void endElement (String uri, String localName, String qName) throws SAXException {
            ElementSax elementoTopo = pilha.pop();
            if ( !strConteudo.isEmpty() )
            {
            	elementoTopo.setConteudoElemento(strConteudo);
            	strConteudo = "";
            }
            
            if ( elementoTopo.getQuantidadeConteudo() == 0 )
            {
                if ( elementoTopo.getIdPai() > 0 )
                {
                    strFato = "";
                    strFato = elementoTopo.getNomeElemento().toLowerCase() + "(id" + 
                               elementoTopo.getIdPai()+ ", id" + 
                               elementoTopo.getId() + ").\n";
                }
                else
                {
                    if ( elementoTopo.getIdPai() == -1 )
                    {
                        strFato = "";
                        strFato = elementoTopo.getNomeElemento().toLowerCase() + "(id" + 
                                   elementoTopo.getId() + ").\n";
                    }
                }
            }
            else
            {
            
                if ( elementoTopo.ehFilho() )//elemento misto
                {
                    strFato = "";
                    for ( int i = 0 ; i < elementoTopo.getQuantidadeConteudo(); i++ )
                    {
                        String conteudo = elementoTopo.geConteudoElemento(i);

                        strFato += "xml/elementoMisto(id" + 
                                   elementoTopo.getId() + ",'" 
                                    + conteudo.replace("\'", "´") + "').\n";
                    }
                    
                    if ( elementoTopo.getIdPai() > 0 )
                    {
                        strFato += elementoTopo.getNomeElemento().toLowerCase() + "(id" + 
                                   elementoTopo.getIdPai()+ ", id" + 
                                   elementoTopo.getId() + ").\n";
                    }
                }
                else
                 {
                     if ( elementoTopo.getQuantidadeConteudo() == 1 )
                    {
                        strFato = "";
                        if ( elementoTopo.temAtributo())
                        {
                            strFato = elementoTopo.getNomeElemento().toLowerCase() + "(id" + 
                                    elementoTopo.getIdPai() + ", id" +
                                    elementoTopo.getId() + ", '" 
                                     + elementoTopo.geConteudoElemento(0).replace("\'", "´") + "').\n";
                        }
                        else
                        {
                            strFato = elementoTopo.getNomeElemento().toLowerCase() + "(id" + 
                                      elementoTopo.getIdPai() + ",'" 
                                      + elementoTopo.geConteudoElemento(0).replace("\'", "´") + "').\n";
                        }
                    }
                 }                   
            }
            
            System.out.println(strFato);
            arquivo.writeFacts(strFato);
        }

    @Override
    public void characters (char[] ch, int start, int length) throws SAXException {
       String conteudo = new String( ch, start, length);
       conteudo = conteudo.trim();
      if ( conteudo.isEmpty() )
           return;
      if ( !strConteudo.isEmpty())
    	  strConteudo += "\n";
      
      strConteudo += conteudo;
    }
}