/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufrj.ppgi.parser;

import java.lang.reflect.Array;
import java.util.ArrayList;

/**
 *
 * @author Rafael Pinheiro
 */
public class ElementoXML {
    
	public enum TipoElemento{
    	FILHO,
    	ATRIBUTO,
    	TEXTO    
    }
	
	private Integer id;
    private String nome;
    private ArrayList<ElementoXML> filhos = new ArrayList<ElementoXML>();
    private ArrayList<String> conteudoTexto = new ArrayList<String>();
    private ElementoXML pai;
    private TipoElemento tipo;
    private boolean bElementoImpresso = false;
    
    
    public void setElementoImpresso(boolean bImpresso){
    	bElementoImpresso = bImpresso;
    }
    
    public boolean getElementoImpresso(){
    	return bElementoImpresso;
    }
    
    
    public void setTipo(TipoElemento tipo){
    	this.tipo = tipo;
    }
    
    public TipoElemento getTipo(){
    	return this.tipo;
    }
    
    public void setId(Integer id){
    	this.id = id;
    }
    
    public Integer getId(){
    	return id;
    }
    
    public void setNome(String nome){
    	this.nome = nome;
    }
    
    public String getNome(){
    	return nome;
    }
    
    public void adicionarFilho(ElementoXML novoFilho){
    	this.filhos.add(novoFilho);
    }
    
    public ElementoXML getPai(){
    	return pai;
    }
    
    public void setPai(ElementoXML pai){
    	this.pai = pai;
    }
    
    public void setConteudo(String conteudo){
    	this.conteudoTexto.add(conteudo);
    }
    
    public ArrayList<String> getConteudoTexto(){
    	return this.conteudoTexto;
    }
    
    public String getConteudo(){
    	StringBuilder conteudo = new StringBuilder();
    	if (conteudoTexto.size() == 0){
    		int a = 0;conteudo.append("");
    	}
    	else
    	{
	    	for( int i = 0; i < conteudoTexto.size(); i++ ){
	    		conteudo.append(conteudoTexto.get(i));
	    	}
    	}
    	return conteudo.toString();
    }
    
    public Boolean temSomenteQuebraDeLinha(){
    	if ( (getConteudo().indexOf("\n") > -1 && getConteudo().indexOf("\t") > -1) ||
    		(getConteudo().indexOf("\n") > -1 && conteudoTexto.size() == 1))
    		return true;
    	
    	return false;
    }
    
    public ArrayList<ElementoXML> getFilhos(){
    	return this.filhos;
    
    }
    
    public Boolean ehElementoMisto(){
    	Boolean bEncontrouTexto = false;
    	Boolean bEncontrouElemento = false;
		for( int i = 0; i < filhos.size(); i++ ){
			if ( filhos.get(i).getTipo() == TipoElemento.TEXTO )
				bEncontrouTexto = true;
			
			if ( filhos.get(i).getTipo() == TipoElemento.FILHO )
				bEncontrouElemento = true;
				
		}
		
		if ( bEncontrouElemento && bEncontrouTexto )
			return true;
    	
    	return false;
    }
    
    public boolean naoPossuiElementoTexto(){
    	boolean bPossuiElementoTexto = false;
    	for( int i = 0; i < filhos.size(); i++ ){
			if ( filhos.get(i).getTipo() == TipoElemento.TEXTO ){
				bPossuiElementoTexto = true;
				break;
			}			
		}
    	return bPossuiElementoTexto;
    }
}
