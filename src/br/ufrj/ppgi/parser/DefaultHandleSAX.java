/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufrj.ppgi.parser;
import br.ufrj.ppgi.io.FileManager;
import java.util.Stack;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
/**
 *
 * @author Rafael Pinheiro
 */
public class DefaultHandleSAX extends DefaultHandler {
    private String strFato;
    private static int contadorIdPai = 0;
    private Stack<ElementSax> pilha = new Stack<ElementSax>();
    private FileManager arquivo;
    private String strConteudo = "";
    
    public DefaultHandleSAX() {
        super(); 
        arquivo = new FileManager();
        contadorIdPai = 0;
    }
    
    @Override
    public void startDocument() {
        }

    @Override
        public void endDocument() {
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