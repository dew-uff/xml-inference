#include "stdafx.h"
#include "SaxHandle.h"
#include <iostream>
#include <stdio.h>
#include <algorithm>
#include <sstream>
#include <string>


SaxHandle::SaxHandle(std::string _factsFilePath)
{
	nContador = 0;
	//arquivo = 0;
	arquivo = fopen(_factsFilePath.c_str(), "w");
	
	//arquivo.open (_factsFilePath.c_str());	

	elementoRaiz = 0;
	elementoAtual =0;
	nMaxDepth =0;
	nOpenNodes = 0;
}


SaxHandle::~SaxHandle(void)
{
	fclose(arquivo);
	//arquivo.close();
	/*if ( arquivo )
		delete arquivo;*/
}

void SaxHandle::startElement(const   XMLCh* const    uri,
                            const   XMLCh* const    localname,
                            const   XMLCh* const    qname,
                            const   Attributes&     attrs)
{
	ElementoXML* novoElemento = new ElementoXML();
	novoElemento->setTipo(ElementoXML::FILHO);
	string nomeElemento = XMLString::transcode(qname);

	if(nomeElemento == "item")
	{
		for (unsigned int i=0; i< attrs.getLength(); i++)
	    {
	
			string nomeAtributo = XMLString::transcode(attrs.getQName(i));

		}
	}

	nOpenNodes++;

	//####
	int posicaoLetra = nomeElemento.find(":");
	if (posicaoLetra != string::npos)
	{
		nomeElemento.replace(posicaoLetra, 1, "_");
	}

	//###inserirNomeRepetido(nomeElemento);

	novoElemento->setNome(nomeElemento);
	novoElemento->setId(++nContador);

	for(int i=0; i< namespaceAttributes.size();i++)
	{
		namespaceAttributes[i]->setPai(novoElemento);
		namespaceAttributes[i]->setId(++nContador);
		novoElemento->adicionarFilho(namespaceAttributes[i]);
	}
	
	namespaceAttributes.clear();
	
	if (pilha.size() < 2 )
	{
		if( elementoRaiz != 0 )
			novoElemento->setPai(elementoRaiz);

	    pilha.push_back(novoElemento);
		elementoAtual = novoElemento;
		elementoRaiz = novoElemento;

		if ( pilha.size() == 1 )
		{
			string conteudoArquivo = toMakeLower(novoElemento->getNome());
			std::ostringstream s;
			s << "(" << novoElemento->getId() << ").\n";

			//####
			processarAtributos(attrs, elementoAtual);

			conteudoArquivo += s.str();
			fputs(conteudoArquivo.c_str(), arquivo);		
			//arquivo << conteudoArquivo.c_str();
			novoElemento->setElementoImpresso(true);
			conteudoArquivo = "";
			novoElemento->setTipo(ElementoXML::Tipo::RAIZ);
			int nRecursionLevel = 0;
			escreverNoArquivo2(novoElemento,arquivo,nRecursionLevel);
		}

		

		return;
	}
	else
	{
		novoElemento->setPai(elementoAtual);
	}

	elementoAtual->adicionarFilho(novoElemento);

	/*std::map<string,int>::iterator it;
	it = tmplevelNodeHash.find(nomeElemento);
	//Se existe algum nó Já aberto o seu filho nunca terá profundidade maior que o pai
    if (it == tmplevelNodeHash.end())
	{
		for (std::map<string,int>::iterator it=tmplevelNodeHash.begin(); it!=tmplevelNodeHash.end(); ++it)
			  it->second++;

		tmplevelNodeHash[nomeElemento] = 1;
	}
	else
	{
	     for (std::map<string,int>::iterator it=tmplevelNodeHash.begin(); it!=tmplevelNodeHash.end(); ++it)
			  it->second++;
		//tmplevelNodeHash[nomeElemento]  = tmplevelNodeHash[nomeElemento] +1;
	}*/


	elementoAtual = novoElemento;

	//string nomeElemento = XMLString::transcode(qname);
	//cout << "I saw element: "<< nomeElemento << endl;
 ////   //XMLString::release(&message);

	processarAtributos(attrs, elementoAtual);
}


void SaxHandle::endElement(const XMLCh *const uri, const XMLCh *const localname, const XMLCh *const qname)
{
	string nomeElemento = XMLString::transcode(qname);

	/*std::map<string,int>::iterator itTmp;
	itTmp = tmplevelNodeHash.find(nomeElemento);
	if (itTmp != tmplevelNodeHash.end())
	{
		std::map<string,int>::iterator it;
		it = levelNodeHash.find(nomeElemento);
		if (it != levelNodeHash.end())
		{
			if( tmplevelNodeHash[nomeElemento]  < levelNodeHash[nomeElemento])
			{
				int a =  tmplevelNodeHash[nomeElemento];
				levelNodeHash[nomeElemento] = tmplevelNodeHash[nomeElemento];
			}
		}
		else
		{
			int a =  tmplevelNodeHash[nomeElemento];
			levelNodeHash[nomeElemento] = tmplevelNodeHash[nomeElemento];
		}
	}*/

	//##removerNomeRepetido(nomeElemento);

	 
	if ( nomeElemento == elementoRaiz->getNome() /*##&& existeNomeRepetido(nomeElemento) == false*/)
	{
		//eh raiz
		int nRecursionLevel = 0;
		escreverNoArquivo2(elementoRaiz, arquivo,nRecursionLevel);

		/*bool bAdd = true;
		std::map<string,int>::iterator itTmp;
		itTmp = tmplevelNodeHash.find(nomeElemento);
		if (itTmp != tmplevelNodeHash.end())
		{
			if(tmplevelNodeHash[nomeElemento] > nRecursionLevel)
				bAdd = false;
				
		}*/

		/*if(bAdd)
			tmplevelNodeHash[nomeElemento] = nRecursionLevel;*/

		/*if(nRecursionLevel>nRootDepth)
			nRootDepth = nRecursionLevel + 1;*/
		cout << "Tamanho Pilha Antes:" << pilha.size()<<endl;
		if (!pilha.empty())
		{
			//ElementoXML* pElemento = pilha.back();
			pilha.pop_back();
			//cout << pElemento->getNome() <<endl;
			//delete pElemento;
		}
		if (!pilha.empty())
		{
			//ElementoXML* pElemento = pilha.back();
			pilha.pop_back();
			//delete pElemento;
		}
		
		cout << "Tamanho Pilha Depois:" << pilha.size()<<endl;

		ElementoXML* elementoFilhoTemp = 0;
		if( elementoRaiz->getPai() != 0 )
		{
			elementoFilhoTemp = new ElementoXML();
			elementoFilhoTemp->setTipo( elementoRaiz->getPai()->getTipo() );
			elementoFilhoTemp->setNome( elementoRaiz->getPai()->getNome() );
			elementoFilhoTemp->setPai( elementoRaiz->getPai()->getPai() );
			elementoFilhoTemp->setId( elementoRaiz->getPai()->getId() );
			elementoFilhoTemp->setElementoImpresso( elementoRaiz->getPai()->ehElementoImpresso() );
			pilha.push_back(elementoFilhoTemp);
			delete elementoRaiz;
			elementoRaiz = 0;
			elementoRaiz = elementoFilhoTemp;
			elementoAtual = elementoFilhoTemp;
		}
		else
		{
			delete elementoRaiz;
			elementoRaiz = 0;
		}
	}
	else
	{
		//#######
		if (elementoAtual->getFilhos().size() == 0)
		{
			ElementoXML * pNovoElemento = new ElementoXML();
			pNovoElemento->setTipo(ElementoXML::TEXTO);
			std::string tmpConteudo = "";
			pNovoElemento->setConteudo(tmpConteudo);
			pNovoElemento->setId(++nContador);
			elementoAtual->adicionarFilho(pNovoElemento);
			pNovoElemento->setPai(elementoAtual);
		}
		
		elementoAtual = elementoAtual->getPai();
	}

    /*cout << "End element: "<< message << endl;
    XMLString::release(&message);*/
}

void SaxHandle::characters (const XMLCh *const chars, const XMLSize_t length)
{
	string conteudo = XMLString::transcode(chars);

	std::string str = conteudo;
	str.erase(std::remove_if( str.begin(), str.end(), 
     [](char c){ return (c =='\n' || c =='\t' || c == ' ' || c == '\n');}), str.end() );
	

	if ( str.empty() )
		return;

	ElementoXML* novoElementoXML = new ElementoXML();
	novoElementoXML->setId(++nContador);
	novoElementoXML->setTipo(ElementoXML::TEXTO);
	novoElementoXML->setConteudo(conteudo);
	novoElementoXML->setPai(elementoAtual);
	elementoAtual->adicionarFilho(novoElementoXML);
//	cout << "Content: "<< content << endl;
}

void SaxHandle::processarAtributos(const   Attributes&     attrs, ElementoXML* pai)
{
	for (unsigned int i=0; i< attrs.getLength(); i++)
	{
		ElementoXML* elementoAtributo = new ElementoXML();
		elementoAtributo->setTipo(ElementoXML::ATRIBUTO);
		elementoAtributo->setId(++nContador);
		
		string nomeAtributo = XMLString::transcode(attrs.getQName(i));
		
		int posicaoLetra = nomeAtributo.find(":");
		if (  posicaoLetra != string::npos)
		{
			nomeAtributo.replace(posicaoLetra, 1, "_");
		}
		
		//####
		//std::transform(nomeAtributo.begin(), nomeAtributo.end(), nomeAtributo.begin(), ::tolower);
		
		//elementoAtributo->setNome(nomeAtributo);
		//####
		elementoAtributo->setNome(toMakeLower(nomeAtributo));

		elementoAtributo->setPai(pai);
		pai->adicionarFilho(elementoAtributo);

		ElementoXML*  elementoConteudo = new ElementoXML();
		elementoConteudo->setTipo(ElementoXML::TEXTO);
		//elementoConteudo->setId(++nContador);
		elementoConteudo->setPai(elementoAtributo);
	
		string novoConteudo = XMLString::transcode(attrs.getValue(i));

		elementoConteudo->setConteudo(novoConteudo);
		
		elementoAtributo->adicionarFilho(elementoConteudo);
//		cout << "Nome: " << XMLString::transcode(attrs.getQName(i)) << " Valor: " << XMLString::transcode(attrs.getValue(i)) << endl;
	}
}

void SaxHandle::startPrefixMapping (const XMLCh *const prefix, const XMLCh *const uri)
{

	std::string teste = XMLString::transcode(prefix);
	std::string teste2 = XMLString::transcode(uri);

	string nomeAtributo  = "xmlns:"+teste;

	ElementoXML* elementoAtributo = new ElementoXML();
	elementoAtributo->setTipo(ElementoXML::ATRIBUTO);
	//elementoAtributo->setId(++nContador);
		
	//string nomeAtributo = XMLString::transcode(attrs.getQName(i));
		
	int posicaoLetra = nomeAtributo.find(":");
	if (  posicaoLetra != string::npos)
	{
		nomeAtributo.replace(posicaoLetra, 1, "_");
	}
	elementoAtributo->setNome(toMakeLower(nomeAtributo));

	//elementoAtributo->setPai(pai);
	//pai->adicionarFilho(elementoAtributo);

	ElementoXML*  elementoConteudo = new ElementoXML();
	elementoConteudo->setTipo(ElementoXML::TEXTO);
	//elementoConteudo->setId(++nContador);
	elementoConteudo->setPai(elementoAtributo);
	
	string novoConteudo = teste2;

	elementoConteudo->setConteudo(novoConteudo);
		
	elementoAtributo->adicionarFilho(elementoConteudo);

	namespaceAttributes.push_back(elementoAtributo);

}

/*void SaxHandle::endPrefixMapping(const XMLCh *const prefix)
{
	std::string teste = XMLString::transcode(prefix);
}*/

void SaxHandle::inserirNomeRepetido(string& novoNome)
{
	if ( listaNomesElementosRespetidos.size() == 0 )
	{
		vector<string> vecNomeRepetido;
		vecNomeRepetido.push_back(novoNome);
		listaNomesElementosRespetidos.push_back(vecNomeRepetido);
		return;
	}

	bool bExisteVetorNomeRepetido = true;
	list<vector<string>>::iterator itListaNomeRepetido;
	for( itListaNomeRepetido = listaNomesElementosRespetidos.begin(); itListaNomeRepetido != listaNomesElementosRespetidos.end(); itListaNomeRepetido++)
	{
		vector<string>& vecNomeRepetido = *itListaNomeRepetido;
		if ( vecNomeRepetido.size() > 0 && vecNomeRepetido[0] == novoNome )
		{
			vecNomeRepetido.push_back(novoNome);
			bExisteVetorNomeRepetido = true;
		}
		else
			bExisteVetorNomeRepetido = false;		
	}

	if ( !bExisteVetorNomeRepetido )
	{
		vector<string> vecNomeRepetido;
		vecNomeRepetido.push_back(novoNome);
		listaNomesElementosRespetidos.push_back(vecNomeRepetido);
	}
}

bool SaxHandle::removerNomeRepetido(string& nomeRepetido)
{
	list<vector<string>>::iterator itListaNomeRepetido;
	for( itListaNomeRepetido = listaNomesElementosRespetidos.begin(); itListaNomeRepetido != listaNomesElementosRespetidos.end(); itListaNomeRepetido++)
	{
		vector<string>& vecNomeRepetido = *itListaNomeRepetido;
		if ( vecNomeRepetido.size() > 0 && vecNomeRepetido[0] == nomeRepetido )
		{
			vecNomeRepetido.pop_back();
			return true;
		}
	}

	return false;
}

bool SaxHandle::existeNomeRepetido(string& nomeRepetido)
{
	list<vector<string>>::iterator itListaNomeRepetido;
	for( itListaNomeRepetido = listaNomesElementosRespetidos.begin(); itListaNomeRepetido != listaNomesElementosRespetidos.end(); itListaNomeRepetido++)
	{
		vector<string>& vecNomeRepetido = *itListaNomeRepetido;
		if ( vecNomeRepetido.size() > 0 && vecNomeRepetido[0] == nomeRepetido )
		{
			return true;
		}
	}

	return false;
}

void SaxHandle::escreverNoArquivo(ElementoXML* elemento, FILE* arquivo)
{
	string conteudoArquivo = "";	
	if ( elemento->getPai() == 0 )
	{
		//transform(elemento->getNome().begin(), elemento->getNome().end(), elemento->getNome().begin(), ::tolower);
		conteudoArquivo += toMakeLower(elemento->getNome());
		std::ostringstream s;
		s << "(" << elemento->getId() << ").\n";
		conteudoArquivo += s.str();
		fputs(conteudoArquivo.c_str(), arquivo);

		const list<ElementoXML*> listaFilhos = elemento->getFilhos();
		list<ElementoXML*>::const_iterator itListaFilhos;
		for( itListaFilhos = listaFilhos.begin(); itListaFilhos != listaFilhos.end(); itListaFilhos++ )
		{
			escreverNoArquivo((*itListaFilhos), arquivo);
		}
	}
	else
	{
		if ( elemento->getFilhos().size() == 0 )
			return;
		
		bool bElementoMisto = elemento->ehElementoMisto();		
		const list<ElementoXML*> listaFilhos = elemento->getFilhos();
		list<ElementoXML*>::const_iterator itListaFilhos;
		for( itListaFilhos = listaFilhos.begin(); itListaFilhos != listaFilhos.end(); itListaFilhos++ )
		{
			if ( elemento->getPai()->getPai() == 0 )
			{
			//	transform(elemento->getNome().begin(), elemento->getNome().end(), elemento->getNome().begin(), ::tolower);
				conteudoArquivo += toMakeLower(elemento->getNome());
				std::ostringstream s;
				s << "(" << elemento->getPai()->getId() << ", " << elemento->getId() << ").\n";
				conteudoArquivo += s.str();
				fputs(conteudoArquivo.c_str(), arquivo);
			}

			if ( (*itListaFilhos)->getTipo() == ElementoXML::FILHO )
			{
				//transform((*itListaFilhos)->getNome().begin(), (*itListaFilhos)->getNome().end(), (*itListaFilhos)->getNome().begin(), ::tolower);
				conteudoArquivo += toMakeLower((*itListaFilhos)->getNome());
				std::ostringstream s;
				s << "(" << (*itListaFilhos)->getPai()->getId() << ", " << (*itListaFilhos)->getId() << ").\n";
				conteudoArquivo += s.str();
				fputs(conteudoArquivo.c_str(), arquivo);
			}
			if ( (*itListaFilhos)->getTipo() != ElementoXML::FILHO || (*itListaFilhos)->getTipo() != ElementoXML::ATRIBUTO )
			{
				if ( bElementoMisto && (*itListaFilhos)->getTipo() == ElementoXML::TEXTO )
				{
					imprimirPai((*itListaFilhos)->getPai(), conteudoArquivo);
					conteudoArquivo += "xml/mixedElement";
					std::ostringstream s;
					s << "(" << (*itListaFilhos)->getPai()->getId() << ", " << (*itListaFilhos)->getId() << "'" << (*itListaFilhos)->getConteudo() <<  "').\n";
					conteudoArquivo += s.str();
					fputs(conteudoArquivo.c_str(), arquivo);

				}
				else
				{
					if ( (*itListaFilhos)->getTipo() == ElementoXML::TEXTO )
					{
						if ( (*itListaFilhos)->getPai() != 0 && (*itListaFilhos)->getPai()->getTipo() == ElementoXML::ATRIBUTO )
						{
					//		transform((*itListaFilhos)->getPai()->getNome().begin(), (*itListaFilhos)->getPai()->getNome().end(), (*itListaFilhos)->getPai()->getNome().begin(), ::tolower);
							conteudoArquivo += toMakeLower((*itListaFilhos)->getPai()->getNome());
							std::ostringstream s;
							s << "(" << (*itListaFilhos)->getPai()->getPai()->getId() << ", " << (*itListaFilhos)->getPai()->getId() << ", "<< "'" << (*itListaFilhos)->getConteudo() <<  "').\n";
							conteudoArquivo += s.str();
							fputs(conteudoArquivo.c_str(), arquivo);
						}
						else
						{
							imprimirPai((*itListaFilhos)->getPai()->getPai(), conteudoArquivo);
						//	transform((*itListaFilhos)->getPai()->getNome().begin(), (*itListaFilhos)->getPai()->getNome().end(), (*itListaFilhos)->getPai()->getNome().begin(), ::tolower);
							conteudoArquivo += toMakeLower((*itListaFilhos)->getPai()->getNome());
							std::ostringstream s;
							s << "(" << (*itListaFilhos)->getPai()->getPai()->getId() << ", " << (*itListaFilhos)->getPai()->getId() << ", " << "'" << (*itListaFilhos)->getConteudo() <<  "').\n";
							conteudoArquivo += s.str();
							fputs(conteudoArquivo.c_str(), arquivo);
						}

					}
				}
			}
			escreverNoArquivo((*itListaFilhos), arquivo);
		}
		
	}
}

void SaxHandle::imprimirPai(ElementoXML* pai, string& conteudo)
{
    if ( !pai->ehElementoImpresso() ){
		
		//transform(pai->getNome().begin(), pai->getNome().end(), pai->getNome().begin(), tolower);

		conteudo += toMakeLower(pai->getNome());
		
		std::ostringstream s;
		s << "(" << pai->getPai()->getId() << ", " << pai->getId() << ").\n";

		conteudo += s.str();
	    pai->setElementoImpresso(true);
    }
}

string SaxHandle::toMakeLower(string& texto)
{
	string textoLower = texto;
	///for( unsigned int i = 0; i < texto.size(); i++) 
		//tolower(textoLower[i]);

	std::transform(textoLower.begin(), textoLower.end(), textoLower.begin(), ::tolower);

	return textoLower;
}

void SaxHandle::escreverNoArquivo2(ElementoXML* elemento, FILE* arquivo, int& nRecursionLevel)
//void SaxHandle::escreverNoArquivo2(ElementoXML* elemento, ofstream& arquivo, int& nRecursionLevel)
{
	string conteudoArquivo;
	
	/*if ( elemento->getPai() == 0 && !elemento->ehElementoImpresso() )
	{
		conteudoArquivo += toMakeLower(elemento->getNome());
		std::ostringstream s;
		s << "(" << elemento->getId() << ").\n";
		conteudoArquivo += s.str();
		fputs(conteudoArquivo.c_str(), arquivo);		
		elemento->setElementoImpresso(true);
		conteudoArquivo = "";
	}*/

	if ( elemento->getTipo() == ElementoXML::FILHO && elemento->getPai()->getPai() == 0)
	{
		conteudoArquivo += toMakeLower(elemento->getNome());
		std::ostringstream s;
		s << "(" << elemento->getPai()->getId() << ", " << elemento->getId() << ").\n";
		conteudoArquivo += s.str();
		fputs(conteudoArquivo.c_str(), arquivo);
		//arquivo << conteudoArquivo.c_str();
		elemento->setElementoImpresso(true);
		conteudoArquivo = "";
	}


	const list<ElementoXML*> listaFilhos = elemento->getFilhos();
	list<ElementoXML*>::const_iterator itListaFilhos;
	
	int nNewRecursionLevel = 0;
	/*####if(elemento->possuiElementoFilho())
	{
		nRecursionLevel ++;
	}
	else if (elemento->getTipo() == ElementoXML::FILHO)
	{
	    tmplevelNodeHash[elemento->getNome()] = 0;
	}*/

	for( itListaFilhos = listaFilhos.begin(); itListaFilhos != listaFilhos.end(); itListaFilhos++ )
	{
		ElementoXML* filho = *itListaFilhos;
		if ( filho->ehElementoImpresso() )
			continue;

		//if ( filho->getTipo() == ElementoXML::FILHO && filho->getPai()->getPai() == 0)
		if ( filho->getTipo() == ElementoXML::FILHO && !filho->naoPossuiElementoTexto())
		{
			conteudoArquivo += toMakeLower(filho->getNome());
			std::ostringstream s;
			s << "(" << filho->getPai()->getId() << ", " << filho->getId() << ").\n";
			conteudoArquivo += s.str();
			fputs(conteudoArquivo.c_str(), arquivo);
			//arquivo << conteudoArquivo.c_str();
			filho->setElementoImpresso(true);
			conteudoArquivo = "";
		}
		else
			if( filho->getTipo() == ElementoXML::TEXTO )
			{
				bool bElementoMisto = filho->getPai()->ehElementoMisto();
				if ( bElementoMisto )
				{
					//####
					//conteudoArquivo += "xml/mixedElement";
					if (!filho->getPai()->ehElementoImpresso())
					{
						conteudoArquivo += toMakeLower(filho->getPai()->getNome());
						std::ostringstream t;
						t << "(" << filho->getPai()->getPai()->getId() << ", " << filho->getPai()->getId() << ").\n";
						conteudoArquivo += t.str();
						fputs(conteudoArquivo.c_str(), arquivo);
						conteudoArquivo = "";
					}

					conteudoArquivo += "xmlMixedElement";
					std::ostringstream s;
					std::string  conteudo = filho->getConteudo();
					
					//####
					std::replace(conteudo.begin(), conteudo.end(), '\'', '`'); 
					//replaceAllOcurrences(conteudo, "'", "`");
					//replaceAllOcurrences(conteudo, "\r\n", "");
					//replaceAllOcurrences(conteudo, "\\n", "");
					std::replace(conteudo.begin(), conteudo.end(), '\n', ' '); 

					s << "(" << filho->getPai()->getId() << ", " << filho->getId() << ", " << "'" << conteudo << "').\n";
					conteudoArquivo += s.str();
					fputs(conteudoArquivo.c_str(), arquivo);
					//arquivo << conteudoArquivo.c_str();
					filho->setElementoImpresso(true);
					filho->getPai()->setElementoImpresso(true);
					conteudoArquivo = "";
				}
				else
				{
					if (!filho->getPai()->ehElementoImpresso())
					{
						conteudoArquivo += toMakeLower(filho->getPai()->getNome());
						std::ostringstream s;
						//####
						std::string  conteudo = (*itListaFilhos)->getConteudo();
						std::replace(conteudo.begin(), conteudo.end(), '\'', '`');
						std::replace(conteudo.begin(), conteudo.end(), '\n', ' ');
						//replaceAllOcurrences(conteudo, "'", "`");
						//replaceAllOcurrences(conteudo, "\\r\\n", "");
						//replaceAllOcurrences(conteudo, "\\n", "");
						//std::replace(conteudo.begin(), conteudo.end(), "'", "`");

						s << "(" << filho->getPai()->getPai()->getId() << ", " << filho->getPai()->getId() << ", " << "'" << conteudo << "').\n";
						conteudoArquivo += s.str();
						fputs(conteudoArquivo.c_str(), arquivo);
						//arquivo << conteudoArquivo.c_str();
						filho->setElementoImpresso(true);
						conteudoArquivo = "";
					}
				}
			}
			else
				if( filho->getTipo() == ElementoXML::ATRIBUTO )
				{
					//####
					conteudoArquivo += toMakeLower(filho->getPai()->getNome());
					conteudoArquivo += "_attribute_";

					if(filho->getNome() == "featured")
					{
						int a = 1 ;
						a++;
					}

					conteudoArquivo += toMakeLower(filho->getNome());
					string valorAtributo = (*filho->getFilhos().begin())->getConteudo();
					//####
					std::replace(valorAtributo.begin(), valorAtributo.end(), '\'', '`'); 
					std::replace(valorAtributo.begin(), valorAtributo.end(), '\n', ' '); 
					//replaceAllOcurrences(valorAtributo, "'", "`");
					//replaceAllOcurrences(valorAtributo, "\\r\\n", "");
					//replaceAllOcurrences(valorAtributo, "\\n", "");

					//std::replace(valorAtributo.begin(), valorAtributo.end(), "'", "`");

					(*filho->getFilhos().begin())->setElementoImpresso(true);
					std::ostringstream s;
					s << "(" << filho->getPai()->getId() << ", " << filho->getId() << ", "<< "'" << valorAtributo <<  "').\n";
					conteudoArquivo += s.str();
					fputs(conteudoArquivo.c_str(), arquivo);
					//arquivo << conteudoArquivo.c_str();
					filho->setElementoImpresso(true);
					conteudoArquivo = "";
				}

		escreverNoArquivo2(filho, arquivo,nNewRecursionLevel);
	}

	/*####if(elemento->possuiElementoFilho())
	{
		nRecursionLevel +=nNewRecursionLevel;
		bool bAdd = true;
		std::map<string,int>::iterator itTmp;
		itTmp = tmplevelNodeHash.find(elemento->getNome());
		if (itTmp != tmplevelNodeHash.end())
		{
			if(tmplevelNodeHash[elemento->getNome()] > nRecursionLevel)
				bAdd = false;
				
		}

		if(bAdd)
			tmplevelNodeHash[elemento->getNome()] = nRecursionLevel;
	}*/
	/*if(elemento->getTipo()==ElementoXML::FILHO)
	{
		bool bAdd = true;
		std::map<string,int>::iterator itTmp;
		itTmp = tmplevelNodeHash.find(elemento->getNome());
		if (itTmp != tmplevelNodeHash.end())
		{
			if(tmplevelNodeHash[elemento->getNome()] > nRecursionLevel)
				bAdd = false;
				
		}

		if(bAdd)
			tmplevelNodeHash[elemento->getNome()] = nRecursionLevel;
	}*/
}

void SaxHandle::replaceAllOcurrences(std::string& in, std::string oldStr, std::string newStr)
{
	std::string::size_type n = 0;
	while ((n = in.find(oldStr, n)) != std::string::npos)
	{
		in.replace(n, oldStr.size(), newStr);
		n += newStr.size();
	}

}

 