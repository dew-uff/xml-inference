// SWIProlog.cpp : Defines the entry point for the console application.
//
//
//#include "stdafx.h"
//
//
//int _tmain(int argc, _TCHAR* argv[])
//{
//	return 0;
//}
//#include "stdafx.h"
#include <SWI-cpp.h> 
#include <iostream> 
#include <stdio.h>
 #include <stdlib.h>
#include "PrologDataBase.h"
using namespace std; 
 
int main(int argc, const char* argv[])
{ 
	try{
		
		if(argc<5)
			return 1;

		std::string baseName = "";
		std::string env = "";
		std::string binPath = "";
		std::string queriesFile = "";
		std::string benchMark = "";

		baseName = (argv[1]);
		env = (argv[2]);

		#if WIN32
			binPath = (argv[3]);
		#else
			binPath = (argv[0]);
		#endif
		
		queriesFile = (argv[4]);
		if(argc>5)
			benchMark = (argv[5]);
		


		//baseName = "BaseSWI.pl";
		//env = "C:\\Program Files\\swipl";
		//binPath = "bin\\swipl.dll"; 
		//queriesFile = "queries.txt";
		//benchMark = "false";

		bool bBench = false;

		if(benchMark.find("true") != std::string::npos)
		{
			bBench = true;
			cout << "#BenchMark"<< endl;
		}
		
		//##SWIProlog.exe BaseSWI.pl "C:\\Program Files\\swipl" "bin\\swipl.dll" queries.txt | OutputListen.exe


		PrologDataBase db;
		db.loadDataBase(baseName,env,binPath);
		//std::vector<string> params;
		//params.push_back("ID");
		//params.push_back("CATEGORY");
		//db.totalRegistros("categories", params);
		//db.executeQuery("categories", params);
		
		//std::vector<string> params2;
		//params2.push_back("A");
		//params2.push_back("B");
		//params2.push_back("C");
		//params2.push_back("FROM");
		//params2.push_back("TO");
		//params2.push_back("DATE");
		//params2.push_back("TEXT");
		//db.totalRegistros("mail", params2);
		//std::string query = " print_teste,told ";
		//findall( IDNODEORDER, ( 
		//tell('E:/mytable.data'), 
		//, told
		
		//int i=1;
		//./prog help me ou
		//for (;i<argc;i++)
		
		 vector<string> strings;
		 //ifstream myReadFile;
		 //myReadFile.open(queriesFile);
		 FILE * qFile = fopen(queriesFile.c_str(),"r");
		 char output[2000];
		 if (qFile != 0)
		 {
			 while (fgets(output, 2000, qFile) != NULL)
			 {
				 strings.push_back(output);
			 }
			 fclose(qFile);
		 }
		 
		 /*
		 if (myReadFile.is_open()) 
		 {
			 while (!myReadFile.eof()) 
			 {
				myReadFile >> output;
				strings.push_back(output);
			 }
		}
		myReadFile.close();*/


		//std::string query = "(findall( IDNODEORDER, (site(IDSITE), regions(IDSITE, IDREGIONS),  setof(_,( africa(IDREGIONS, IDAFRICA) , item(IDAFRICA, IDITEM)) ; ( asia(IDREGIONS, IDASIA) , item(IDASIA, IDITEM)) ; ( australia(IDREGIONS, IDAUSTRALIA) , item(IDAUSTRALIA, IDITEM)) ; ( europe(IDREGIONS, IDEUROPE) , item(IDEUROPE, IDITEM)) ; ( namerica(IDREGIONS, IDNAMERICA) , item(IDNAMERICA, IDITEM)) ; ( samerica(IDREGIONS, IDSAMERICA) , item(IDSAMERICA, IDITEM)) ,_) , mailbox(IDITEM, IDMAILBOX), mail(IDMAILBOX, IDMAIL), date(IDMAIL, IDDATE,DATE), substring( DATE, 7, 2, RESULT1) , RESULT1 = '20' ";
		//query += "	,  IDNODEORDER=IDMAIL, mail( _,IDNODEORDER)  ), LISTNODEORDER) ,   quick_sort(LISTNODEORDER, LISTNODEORDERSORTED), member(IDNODEORDERSORTED,LISTNODEORDERSORTED), IDMAIL = IDNODEORDERSORTED ,  ( print_mail(IDNOGRANDPARENT,IDMAIL)))";
		//
		//strings.push_back(" print_keyword(A,B) ");
		//strings.push_back(query);
		//strings.push_back("print_item(A,B)");
		for (int i = 0; i < strings.size();i++)
		{
			std::stringstream out;
			std::string s;
			out << i+1;
			s = out.str();
			//fclose(stdout);
			//std::string fileName = "QueryResult_";
			//fileName += s;
			//fileName += ".xml";
			//freopen(fileName.c_str(), "w",stdout);
			//__iob_func()[1] = fopen(fileName.c_str(),"w");

			if(bBench)
			{	
				cout << "#NewQuery"<< endl;
				for(int j=0; j <11; j++)
				{
					db.executeQuery(strings[i], s);
				}
			}
			else
			{
				db.executeQuery(strings[i], s);
			}
			
			
		}
	}
	catch(PlException & ex)
	{
		cout << (char*) ex;
	}
 
	//cin.get(); 
	return 1; 
} 

