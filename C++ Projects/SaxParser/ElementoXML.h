#pragma once

#include <list>
#include <string>

using namespace std;

class ElementoXML
{

public:
	ElementoXML(void);
	~ElementoXML(void);
	
	enum Tipo{
		RAIZ, 
		FILHO,
		ATRIBUTO,
		TEXTO
	};
	

	void adicionarFilho(ElementoXML* filho);
	void setId(int novoId);
	void setNome(string& novoNome);
	void setTipo(Tipo novoTipo);
	void setConteudo(string& novoConteudo);
	void setPai(ElementoXML* novoPai);
	void setElementoImpresso(bool bImpresso);
	int getId();
	string getNome();
	Tipo getTipo();
	string getConteudo();
	ElementoXML* getPai();
	const list<ElementoXML*> getFilhos();
	bool ehElementoImpresso();
	//verificacoes
	bool ehElementoMisto();
	bool naoPossuiElementoTexto();
	bool possuiElementoFilho();

private:
	list<ElementoXML*> listaFilhos;
	ElementoXML* pPai;
	int id;
	int idPai;
	int idAvo;
	string nome;
	Tipo tipo;
	list<string> listaConteudo;
	bool bElementoImpresso;

};

