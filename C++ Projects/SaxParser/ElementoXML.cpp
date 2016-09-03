#include "stdafx.h"
#include "ElementoXML.h"


ElementoXML::ElementoXML(void)
{
	pPai = 0;
	id = -1;
	idPai = -1;
	idAvo = -1;
	bElementoImpresso = false;
	listaFilhos.clear();
	listaConteudo.clear();
}


ElementoXML::~ElementoXML(void)
{
	listaConteudo.clear();
	list<ElementoXML*>::iterator itLista;
	for(itLista = listaFilhos.begin(); itLista != listaFilhos.end();)
	{
		delete (*itLista);
		(*itLista) = 0;
		itLista = listaFilhos.erase(itLista);
	}
	//listaFilhos.clear();

	pPai = 0;
	/*if ( pPai != NULL )
		delete pPai;*/
}

void ElementoXML::adicionarFilho(ElementoXML* filho)
{
	listaFilhos.push_back(filho);
}
void ElementoXML::setId(int novoId)
{
	id = novoId;
}

void ElementoXML::setNome(string& novoNome)
{
	nome = novoNome;
}

void ElementoXML::setTipo(ElementoXML::Tipo novoTipo)
{
	tipo = novoTipo;
}

void ElementoXML::setConteudo(string& novoConteudo)
{
	listaConteudo.push_back(novoConteudo);
}

void ElementoXML::setPai(ElementoXML* novoPai)
{
	pPai = novoPai;
}

int ElementoXML::getId()
{
	return id;
}

string ElementoXML::getNome()
{
	return nome;
}

ElementoXML::Tipo ElementoXML::getTipo()
{
	return tipo;
}

string ElementoXML::getConteudo()
{
	string conteudo;
	list<string>::iterator itLista;
	list<string>::iterator itTempLista = listaConteudo.end();
	itTempLista--;
	for(itLista = listaConteudo.begin() ; itLista != listaConteudo.end(); itLista++)
	{
		conteudo += (*itLista);
		if ( itLista != itTempLista)
			conteudo += " ";

	}

	return conteudo;
}

ElementoXML* ElementoXML::getPai()
{
	return pPai;
}

const list<ElementoXML*> ElementoXML::getFilhos()
{
	return listaFilhos;
}

bool ElementoXML::ehElementoMisto()
{
	if ( getFilhos().size() == 0 )
		return false;

	bool bTemElementoTexto = false;
	bool bTemElementoFilho = false;
	list<ElementoXML*>::iterator itListaFilhos;
	for( itListaFilhos = listaFilhos.begin(); itListaFilhos != listaFilhos.end(); itListaFilhos++ )
	{
		if( (*itListaFilhos)->getTipo() == ElementoXML::Tipo::TEXTO )
			bTemElementoTexto = true;

		if( (*itListaFilhos)->getTipo() ==  ElementoXML::FILHO )
			bTemElementoFilho = true;
	}

	return bTemElementoTexto && bTemElementoFilho;
}

void ElementoXML::setElementoImpresso(bool bImpresso)
{
	bElementoImpresso = bImpresso;
}

bool ElementoXML::ehElementoImpresso()
{
	return bElementoImpresso;
}

bool ElementoXML::naoPossuiElementoTexto()
{
    bool bPossuiElementoTexto = false;
	list<ElementoXML*>::iterator itListaFilhos;
    for( itListaFilhos = listaFilhos.begin(); itListaFilhos != listaFilhos.end(); itListaFilhos++ )
	{
		if ( (*itListaFilhos)->getTipo() == ElementoXML::Tipo::TEXTO )
		{
			bPossuiElementoTexto = true;
			break;
		}			
	}
    return bPossuiElementoTexto;
}


bool ElementoXML::possuiElementoFilho()
{
    bool bPossuiElementoTexto = false;
	list<ElementoXML*>::iterator itListaFilhos;
    for( itListaFilhos = listaFilhos.begin(); itListaFilhos != listaFilhos.end(); itListaFilhos++ )
	{
		if ( (*itListaFilhos)->getTipo() == ElementoXML::Tipo::FILHO ) 
		{
			bPossuiElementoTexto = true;
			break;
		}			
	}
    return bPossuiElementoTexto;
}
