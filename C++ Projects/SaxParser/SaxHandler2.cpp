#include "stdafx.h"
#include "SaxHandler2.h"
#include <iostream>
#include <stdio.h>
#include <algorithm>
#include <sstream>
#include <string>


#include <algorithm> 
#include <functional> 
#include <cctype>
#include <locale>

// trim from start
static inline std::string &ltrim(std::string &s) {
	s.erase(s.begin(), std::find_if(s.begin(), s.end(), std::not1(std::ptr_fun<int, int>(std::isspace))));
	return s;
}

// trim from end
static inline std::string &rtrim(std::string &s) {
	s.erase(std::find_if(s.rbegin(), s.rend(), std::not1(std::ptr_fun<int, int>(std::isspace))).base(), s.end());
	return s;
}

// trim from both ends
static inline std::string &trim(std::string &s) {
	return ltrim(rtrim(s));
}

SaxHandler2::SaxHandler2(std::string _factsFilePath)
{
	arquivo = fopen(_factsFilePath.c_str(), "w");
	//arquivo.open (_factsFilePath.c_str());	
	elementoRaiz = 0;
	elementoAtual = 0;
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


SaxHandler2::~SaxHandler2(void)
{
	fclose(arquivo);
	//arquivo.close();
	/*if ( arquivo )
	delete arquivo;*/
}


void SaxHandler2::startElement(const   XMLCh* const    uri,
	const   XMLCh* const    localname,
	const   XMLCh* const    qname,
	const   Attributes&     attrs)
{
	
	
	if (!trim(ultimoElemento).empty() && stackID.size()>0)
	{
		
		escreveArquivo(constroiStringElementoPai(ultimoElemento));
	}
	

	//if (mapAtributosAtual.size() > 0 && stackID.size()>0)
	if (vetAtributosAtual.size() > 0 && stackID.size()>0)
	{
		//typedef std::map<std::string, std::pair<int, std::string>>::iterator it_type;
		//for (it_type iterator = mapAtributosAtual.begin(); iterator != mapAtributosAtual.end(); iterator++)
		for(int i=0; i< vetAtributosAtual.size();i++)
		{
			//std::pair<int, std::string> pair = iterator->second;
			//escreveArquivo(constroiStringAtributo(iterator->first, pair.second, ultimoElemento, stackID[stackID.size()-1], pair.first));
			escreveArquivo(constroiStringAtributo(vetAtributosAtual[i].getNome(), vetAtributosAtual[i].getConteudo(), ultimoElemento, stackID[stackID.size()-1], vetAtributosAtual[i].getId()));

			
			// iterator->first = key
			// iterator->second = value
			// Repeat if you also want to iterate through the second map.
		}
	}

	if (!trim(conteudoAtual).empty())
	{
		int idElementoMisto = ++nContador;
		escreveArquivo(constroiStringElementoMisto(stackID[stackID.size() - 1], idElementoMisto, conteudoAtual));
		conteudoAtual = "";
	}

	string nomeElemento = XMLString::transcode(qname);
	elementIsOpened = true;
	//####
	int posicaoLetra = nomeElemento.find(":");
	if (posicaoLetra != string::npos)
	{
		nomeElemento.replace(posicaoLetra, 1, "_");
	}

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

	stackID.push_back(idFilho);
	bPossuiNamespaces = false;

	//mapAtributosAtual.clear();
	vetAtributosAtual.clear();
	//mapAtributosAtual = processarAtributos(attrs);
	vetAtributosAtual = processarAtributos(attrs);
	
	
	//Atributos Namespace
	//typedef std::map<std::string, std::pair<int, std::string>>::iterator it_type;
	//for (it_type iterator = mapAtributosNamespaceAtual.begin(); iterator != mapAtributosNamespaceAtual.end(); iterator++)
	{
		//mapAtributosAtual[iterator->first] = iterator->second;
	}
	//mapAtributosNamespaceAtual.clear();
	vetAtributosAtual.insert(vetAtributosAtual.begin(),vetAtributosNamespaceAtual.begin(),vetAtributosNamespaceAtual.end());
	vetAtributosNamespaceAtual.clear();

	if (nContador > 1 && !bRootProcessed)
	{
	}
}

void SaxHandler2::escreveArquivo(std::string _conteudo)
{
	fputs(_conteudo.c_str(), arquivo);
	fflush(arquivo);
}

std::string SaxHandler2::constroiStringElementoPai(std::string _nomeElemento)
{
	if (stackID.size() <= 0)
		return "";
	
	std::string print = toMakeLower(_nomeElemento);
	std::ostringstream s;
	if (stackID.size()>1)
		s << "(" << stackID[stackID.size() - 2] << ", " << stackID[stackID.size() - 1] << ").\n";
	else
		s << "(" << stackID[stackID.size() - 1] << ").\n";
		
	print += s.str();

	
	return print;
}

std::string SaxHandler2::constroiStringElementoFilho(std::string _nomeElemento, std::string _conteudoElemento)
{
	if (stackID.size() <= 0)
		return "";

	std::string print = toMakeLower(_nomeElemento);

	std::string conteudo = _conteudoElemento;
	std::replace(conteudo.begin(), conteudo.end(), '\'', '`');
	std::replace(conteudo.begin(), conteudo.end(), '\n', ' ');

	std::ostringstream s;
	if (stackID.size()>1)
		s << "(" << stackID[stackID.size() - 2] << ", " << stackID[stackID.size() - 1] << ", '" << conteudo << "').\n";

	print += s.str();


	return print;
}


std::string SaxHandler2::constroiStringAtributo(std::string _nomeAtributo, std::string _conteudo, std::string _nomePai, int _idPai, int _idFilho)
{
	std::string conteudoAtributo = toMakeLower(_nomePai);
	conteudoAtributo += "_attribute_";
	conteudoAtributo += toMakeLower(_nomeAtributo);
	//####
	std::replace(_conteudo.begin(), _conteudo.end(), '\'', '`');
	std::replace(_conteudo.begin(), _conteudo.end(), '\n', ' ');
	
	std::ostringstream s;
	s << "(" << _idPai << ", " << _idFilho << ", " << "'" << _conteudo << "').\n";
	conteudoAtributo += s.str();

	return conteudoAtributo;
}

std::string SaxHandler2::constroiStringElementoMisto(int _idPai, int _idFilho,std::string _conteudo)
{

	std::string conteudoArquivo = "xmlMixedElement";
	std::ostringstream s;
	
	std::string  conteudo = _conteudo;
	//####
	std::replace(conteudo.begin(), conteudo.end(), '\'', '`');
	std::replace(conteudo.begin(), conteudo.end(), '\n', ' ');

	s << "(" << _idPai << ", " << _idFilho << ", " << "'" << conteudo << "').\n";
	conteudoArquivo += s.str();

	return conteudoArquivo;
}


void SaxHandler2::endElement(const XMLCh *const uri, const XMLCh *const localname, const XMLCh *const qname)
{
	string nomeElemento = XMLString::transcode(qname);
	
	int posicaoLetra = nomeElemento.find(":");
	if (posicaoLetra != string::npos)
	{
		nomeElemento.replace(posicaoLetra, 1, "_");
	}

	if (strcmp(nomeElemento.c_str(), ultimoElemento.c_str()) == 0)
	{
		//if (mapAtributosAtual.size() > 0 && stackID.size()>0)
		if (vetAtributosAtual.size() > 0 && stackID.size()>0)
		{
			if (!trim(conteudoAtual).empty())
				escreveArquivo(constroiStringElementoFilho(nomeElemento,conteudoAtual));
			else
				escreveArquivo(constroiStringElementoPai(nomeElemento));
			
			//typedef std::map<std::string, std::pair<int, std::string>>::iterator it_type;
			//for (it_type iterator = mapAtributosAtual.begin(); iterator != mapAtributosAtual.end(); iterator++)
			for(int i=0; i< vetAtributosAtual.size();i++)
			{
				//std::pair<int, std::string> pair = iterator->second;
				//escreveArquivo(constroiStringAtributo(iterator->first, pair.second, nomeElemento, stackID[stackID.size() - 1], pair.first));
				escreveArquivo(constroiStringAtributo(vetAtributosAtual[i].getNome(), vetAtributosAtual[i].getConteudo(), nomeElemento, stackID[stackID.size() - 1],vetAtributosAtual[i].getId()));
			}
			//mapAtributosAtual.clear();
			vetAtributosAtual.clear();
		}
		else
			escreveArquivo(constroiStringElementoFilho(nomeElemento, conteudoAtual));
	}
	else if (!trim(conteudoAtual).empty())
	{
		if (stackID.size()>1)
			escreveArquivo(constroiStringElementoMisto(stackID[stackID.size() - 1], ++nContador,conteudoAtual));
	}
	
	elementIsOpened = false;
	stackID.pop_back();
	conteudoAtual.clear();
	ultimoElemento = "";
}


void SaxHandler2::characters(const XMLCh *const chars, const XMLSize_t length)
{
	string conteudo = XMLString::transcode(chars);

	//std::string str = conteudo;
	conteudoAtual = conteudo;
	conteudoAtual.erase(std::remove_if(conteudoAtual.begin(), conteudoAtual.end(),
		[](char c){ return (c == '\n' || c == '\t' || c == '\n'); }), conteudoAtual.end());
		//[](char c){ return (c == '\n' || c == '\t' || c == ' ' || c == '\n'); }), conteudoAtual.end());

     
	if (conteudoAtual.empty())
		return;
}


//std::map<std::string, std::pair<int, std::string>> SaxHandler2::processarAtributos(const   Attributes&     attrs)
std::vector<ElementoXML> SaxHandler2::processarAtributos(const   Attributes&     attrs)
{
	//std::map<std::string, std::pair<int, std::string>> mapAtributos;
	std::vector<ElementoXML> vetAtributos;
	
	for (unsigned int i = 0; i < attrs.getLength(); i++)
	{
		
		int idAtributo = ++nContador;

		string nomeAtributo = XMLString::transcode(attrs.getQName(i));

		int posicaoLetra = nomeAtributo.find(":");
		if (posicaoLetra != string::npos)
		{
			nomeAtributo.replace(posicaoLetra, 1, "_");
		}

		std::string novoConteudo = XMLString::transcode(attrs.getValue(i));
		//std::pair<int, std::string> pair(idAtributo, novoConteudo);
		//mapAtributos[nomeAtributo] =  std::make_pair(idAtributo,novoConteudo);
		ElementoXML eleXML;
		eleXML.setConteudo(novoConteudo);
		eleXML.setId(idAtributo);
		eleXML.setNome(nomeAtributo);
		vetAtributos.push_back(eleXML);
	}


	//return mapAtributos;
	return vetAtributos;

}


void SaxHandler2::startPrefixMapping(const XMLCh *const prefix, const XMLCh *const uri)
{
	bPossuiNamespaces = true;
	idPaiElementoNamespace = ++nContador;

	std::string teste = XMLString::transcode(prefix);
	std::string teste2 = XMLString::transcode(uri);

	string nomeAtributo = "xmlns:" + teste;

	int posicaoLetra = nomeAtributo.find(":");
	if (posicaoLetra != string::npos)
	{
		nomeAtributo.replace(posicaoLetra, 1, "_");
	}
	std::string  nomeAtributoLower = toMakeLower(nomeAtributo);

	string novoConteudo = teste2;
	int idAtributo = ++nContador;
	//mapAtributosNamespaceAtual[nomeAtributoLower] = std::make_pair(idAtributo, novoConteudo);
	ElementoXML xml ;
	xml.setId(idAtributo);
	xml.setConteudo(novoConteudo);
	xml.setNome(nomeAtributoLower);
	vetAtributosNamespaceAtual.push_back(xml);
}


string SaxHandler2::toMakeLower(string& texto)
{
	string textoLower = texto;
	///for( unsigned int i = 0; i < texto.size(); i++) 
	//tolower(textoLower[i]);

	std::transform(textoLower.begin(), textoLower.end(), textoLower.begin(), ::tolower);

	return textoLower;
}

