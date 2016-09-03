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

class SaxHandle: public DefaultHandler
{
public:
	SaxHandle(std::string _factsFilePath);
	~SaxHandle(void);

	void startElement(const   XMLCh* const    uri,
                            const   XMLCh* const    localname,
                            const   XMLCh* const    qname,
                            const   Attributes&     attrs);

	void endElement(const XMLCh *const uri, const XMLCh *const localname, const XMLCh *const qname);

	void startPrefixMapping (const XMLCh *const prefix, const XMLCh *const uri);

	//void endPrefixMapping(const XMLCh *const prefix);

	void characters (const XMLCh *const chars, const XMLSize_t length);

	

private:
	void processarAtributos(const   Attributes&     attrs, ElementoXML* pai);
	void inserirNomeRepetido(string& novoNome);
	bool removerNomeRepetido(string& nomeRepetido);
	bool existeNomeRepetido(string& nomeRepetido);

	void escreverNoArquivo(ElementoXML* elemento, FILE* arquivo);
	void imprimirPai(ElementoXML* pai, string& conteudo);
	string toMakeLower(string& texto);
	void escreverNoArquivo2(ElementoXML* elemento, FILE* arquivo, int& nRecursionLevel);
	void escreverNoArquivo2(ElementoXML* elemento, ofstream& arquivo, int& nRecursionLevel);
	void replaceAllOcurrences(std::string& in, std::string oldStr, std::string newStr);

private:
	int nContador;
	vector<ElementoXML*> pilha;
	vector<ElementoXML*> namespaceAttributes;
	ElementoXML* elementoAtual;
	ElementoXML* elementoRaiz;
	list<vector<string>> listaNomesElementosRespetidos;
	FILE* arquivo;
	//std::ofstream arquivo;
	std::map<std::string,int> levelNodeHash;
	std::map<std::string,int> tmplevelNodeHash;
	int nMaxDepth;
	int nOpenNodes;
	std::stack<std::string> levelStack;
	int nRootDepth;
};

