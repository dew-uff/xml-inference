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
            
          /*  if ( pilha.size() == 1 )
            {
                //é raiz do documento
                 strFato = novoElemento.getNomeElemento().toLowerCase() + "(id" + Integer.toString(novoElemento.getId()) + ").\n" ;
                 System.out.println(strFato);
                 arquivo.writeFactsSAX(strFato);
                 
                 pilha.push(novoElemento);
                 return;
            }*/
            
            processarAtributos( atts);
            /*if ( pilha.size() == 0 )
            {
                //é raiz do documento
                 strFato = novoElemento.getNomeElemento().toLowerCase() + "(id" + Integer.toString(novoElemento.getId()) + ").\n" ;
                 System.out.println(strFato);
                 arquivo.writeFactsSAX(strFato);
                 
                 pilha.push(novoElemento);
                 return;
            }*/
            
            /*if ( pilha.size() > 1 )            
            {
                novoElemento.setFilho(true);
            }
            
            pilha.push(novoElemento);
            if ( pilha.size() == 2 )
            {
                 strFato = "";
                 strFato = novoElemento.getNomeElemento().toLowerCase() + "(id" + Integer.toString(novoElemento.getId()) + ").\n" ;
                 System.out.println(strFato);
                 arquivo.writeFactsSAX(strFato);

            }
            processarAtributos(atts);/*
            else
            {
                if ( pilha.size() == 2 )
                {
                    strFato = "";
                    strFato = qName.toLowerCase() + "(id" + Integer.toString(contadorIdPai) + ",id" 
                              + Integer.toString(contadorIdPai+1) + ").\n";
                    System.out.println(strFato);
                    arquivo.writeFactsSAX(strFato);

                    processarAtributos(contadorIdPai+1, atts);
                }
                else
                {
                    if ( pilha.size() > 2 ){
                        strFato = qName.toLowerCase() + "(id" + Integer.toString(contadorIdPai+1) +
                            ", '";
                    }
                }
            }*/
            
        }

    @Override
        public void endElement (String uri, String localName, String qName) throws SAXException {
            ElementSax elementoTopo = pilha.pop();
            
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
                                    + conteudo + "').\n";
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
                                     + elementoTopo.geConteudoElemento(0) + "').\n";
                        }
                        else
                        {
                            strFato = elementoTopo.getNomeElemento().toLowerCase() + "(id" + 
                                       elementoTopo.getIdPai() + ",'" 
                                        + elementoTopo.geConteudoElemento(0) + "').\n";
                        }
                    }
                 }
                   
            }
            
            System.out.println(strFato);
            arquivo.writeFacts(strFato);
           /* if ( pilha.size() == 0 )
            {
                strFato = "";
                strFato = elementoTopo.getNomeElemento().toLowerCase() + "(id" + 
                           elementoTopo.getId() + ").\n";
            }
            else
            {
                if ( pilha.size() == 1 )
                {
                    ElementSax ultimoElementoPilha = (ElementSax)pilha.lastElement();
                    strFato = "";
                    strFato = elementoTopo.getNomeElemento().toLowerCase() + "(id" + 
                               ultimoElementoPilha.getId() + ",id" 
                                + elementoTopo.getId() + ").\n";
                }
                else
                {
                    ElementSax ultimoElementoPilha = (ElementSax)pilha.lastElement();
                    strFato = "";
                    strFato = ultimoElementoPilha.getNomeElemento().toLowerCase() + "(id" + 
                               ultimoElementoPilha.getId() + ",id" 
                                + elementoTopo.getId() + ").\n";
                }
            }
            
            System.out.println(strFato);
            arquivo.writeFactsSAX(strFato);*/
            
        }

    @Override
    public void characters (char[] ch, int start, int length) throws SAXException {
               
                
       String conteudo = new String( ch, start, length).replace('\n', ' ');
       conteudo = conteudo.trim();
      if ( conteudo.isEmpty() )
           return;
       
       ElementSax ultimoElemento = pilha.lastElement();
       ultimoElemento.setConteudoElemento(conteudo);
           
        /*
        String fatoElemento = elemento.getNomeElemento().toLowerCase() + "(id" + 
                             ultimoElemento.getId() + ", '" + conteudo + "').\n";
        
        pilha.push(elemento);
        System.out.println(fatoElemento);
        arquivo.writeFactsSAX(fatoElemento);*/
    }
}