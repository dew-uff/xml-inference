#pragma once
#include "xercesc\sax2\DefaultHandler.hpp"
#include "xercesc\sax2\Attributes.hpp"
#include "xercesc\util\XMLString.hpp"
#include "xercesc\parsers\SAXParser.hpp"
#include <vector>
#include <map>
#include <stack>
#include <iostream>
#include <fstream>

#include "ElementoXML.h"

using namespace std;
using namespace xercesc;
class SaxHandler2 : public DefaultHandler
{
public:
	SaxHandler2(std::string _factsFilePath);
	~SaxHandler2(void);

	void startElement(const   XMLCh* const    uri,
		const   XMLCh* const    localname,
		const   XMLCh* const    qname,
		const   Attributes&     attrs);

	void endElement(const XMLCh *const uri, const XMLCh *const localname, const XMLCh *const qname);

	void startPrefixMapping(const XMLCh *const prefix, const XMLCh *const uri);

	//void endPrefixMapping(const XMLCh *const prefix);

	void characters(const XMLCh *const chars, const XMLSize_t length);


private:
	//std::map<std::string, std::pair<int, std::string>> processarAtributos(const   Attributes&     attrs);
	std::vector<ElementoXML> processarAtributos(const   Attributes&     attrs);
	string toMakeLower(string& texto);
	void escreveArquivo(std::string _conteudo);
	std::string constroiStringAtributo(std::string _nomeAtributo, std::string _conteudo, std::string _nomePai, int _idPai, int _idFilho);
	std::string constroiStringElementoMisto(int _idPai, int _idFilho, std::string _conteudo);
	std::string constroiStringElementoPai(std::string _nomeElemento);
	std::string constroiStringElementoFilho(std::string _nomeElemento, std::string _conteudoElemento);

private:
	int nContador;
	bool bRootProcessed;
	bool elementIsOpened;
	int idPai;
	int idFilho;
	int idAvo;
	std::map<std::string, std::pair<int,std::string>> mapAtributosAtual;
	std::vector<ElementoXML> vetAtributosAtual;
	std::map<std::string, std::pair<int, std::string>> mapAtributosNamespaceAtual;
	std::vector<ElementoXML> vetAtributosNamespaceAtual; 
	std::string ultimoElemento;
	std::vector<int> stackID;
	std::string conteudoAtual;
	FILE* arquivo;
	ElementoXML* elementoAtual;
	ElementoXML* elementoRaiz;
	bool bPossuiNamespaces;
	int idPaiElementoNamespace;
};

