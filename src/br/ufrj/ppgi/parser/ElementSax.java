/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufrj.ppgi.parser;

import java.util.ArrayList;



/**
 *
 * @author Rafael Pinheiro
 */
public class ElementSax {
    
    private int nIdElemento = 0;
    private int nIdElementoPai = 0;
    private String nomeElemento;
    private ArrayList<String> vecConteudo = new ArrayList<String>();
    private boolean ehFilho = false;
    private boolean temAtributo = false;
    
    public void setId( int _nIdElemento )
    {
        nIdElemento = _nIdElemento;
    }
    
    public void setIdPai( int _nIdElemento )
    {
        nIdElementoPai = _nIdElemento;
    }
    
    public void setNomeElemento( String _nomeElemento )
    {
        nomeElemento = _nomeElemento;
    }
    
    public void setConteudoElemento( String _conteudoElemento )
    {
        vecConteudo.add(_conteudoElemento);
    }
    
    public void setFilho(boolean _ehFilho)
    {
        ehFilho = _ehFilho;
    }
    
    public int getId()
    {
        return nIdElemento;
    }
    
    public void possuiAtributo(boolean _bPossuiAtributo)
    {
        temAtributo = _bPossuiAtributo;
    }
    
    public String geConteudoElemento(int i)
    {
        if ( vecConteudo.isEmpty() )
            return new String();
        
        return vecConteudo.get(i);
    }
    
    public String getNomeElemento()
    {
        return nomeElemento;
    }
    
    public int getIdPai()
    {
        return nIdElementoPai;
    }
    
    public boolean temElemento()
    {
        return vecConteudo.size() > 0 ;
    }
    
    public boolean ehFilho()
    {
        return ehFilho;
    }
    
    public int getQuantidadeConteudo()
    {
        return vecConteudo.size();
    }
    
    public boolean temAtributo()
    {
        return temAtributo;
    }
    
}
