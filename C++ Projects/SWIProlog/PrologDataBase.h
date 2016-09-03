#pragma once
#include <SWI-cpp.h>
#include <string>
#include <vector>
#include <sstream>
#include <iostream>
#include <fstream>
//#include <boost/chrono/chrono.hpp>
using namespace std;


class PrologDataBase
{
public:
	PrologDataBase(void);
	~PrologDataBase(void);

public:
	void loadDataBase(std::string baseName,std::string env,std::string binPath);
	void executeQuery(string query, vector<string>& params);
	void totalRegistros(string query, vector<string>& params);
	void executeQuery(string query, string queryName);
	double getTime();

private:
	PlEngine* dataBase;
	std::streambuf* oldCoutStreamBuf;
	std::ostringstream strCout;
	//FILE *stream;
	

};

