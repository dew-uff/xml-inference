#include "stdafx.h"
#include "PrologDataBase.h"
#include <iostream>
#include <ctime>
#include <stdlib.h>
#include <stdio.h>
#include <io.h>
#include <time.h>

#if WIN32
	#include "RealTime.h"
#else
	#include <chrono>
#endif

//#include <fcntl.h>
//#include <unistd.h>

#if WIN32
#define putenv _putenv
#endif

PrologDataBase::PrologDataBase(void)
{
	dataBase = 0;
	// Redirect cout.
	//oldCoutStreamBuf = cout.rdbuf();
	//cout.rdbuf(strCout.rdbuf()); 
	
	//freopen_s(&stream, "result.xml", "w", stdout);
}


PrologDataBase::~PrologDataBase(void)
{
	//fclose(stream);
}

double PrologDataBase::getTime()
{
	double n = 0;
	#if WIN32
	  n= getRealTime();
	#else
		auto start_time = chrono::high_resolution_clock::now();
		n = (double) chrono::duration_cast<chrono::nanoseconds>(start_time).count();
	#endif

	return n;
}

void PrologDataBase::loadDataBase(std::string baseName,std::string env,std::string binPath)
{
	//Colocar tempo em NanoSegundos
	//clock_t time1, time2, time_diff; 
	//time1 = clock()/(CLOCKS_PER_SEC);///1000); 
	/*
	using Clock = std::chrono::high_resolution_clock;
    using std::chrono::milliseconds;
    using std::chrono::nanoseconds;
    using std::chrono::duration_cast;

    auto start = Clock::now();

    // code to time
    std::this_thread::sleep_for(milliseconds(500));

    auto end = Clock::now();
    std::cout << duration_cast<nanoseconds>(end-start).count() << " ns\n";
	
	*/


	double startTime, endTime;
	startTime = getTime( );

	//LARGE_INTEGER time1, time2;
	//QueryPerformanceCounter(&time1);

	//"bin\\swipl.dll"
	//"SWI_HOME_DIR=C:\\Program Files\\swipl"
	std::string finalEnv = "SWI_HOME_DIR=";
	finalEnv+= env;
	
	#if WIN32
		_putenv(finalEnv.c_str()); 
	#else
	    putenv((char*)finalEnv.c_str()); 
	#endif
	
	#if WIN32
		char* config[] = {&binPath[0], "-s", &baseName[0], 0}; 
		dataBase = new PlEngine(3, config);
	#else
	   char* config[] = {&binPath[0],NULL};
	   dataBase = new PlEngine(1, config); 
	#endif

	endTime = getTime( );
	cout << "#BaseTime- Base carregada em " <<(endTime - startTime) <<endl;

	//time2 = clock()/(CLOCKS_PER_SEC);///1000); 
	//time_diff = time2 - time1;

	//PL_write_prompt(TRUE);
	//open('file.txt', write, Out),set_output(Out),
	//int rc = PlCall("open('file.txt', write, Out),set_output(Out), current_output(Out), with_output_to(Out, writeln('asasas'))");
	//PlQuery q1("call", PlTermv(PlCompound("open('file.txt', write, Out),set_output(Out), current_output(Out) , with_output_to(Out, write('asasas'))")));
	//while (q1.next_solution());
	//cout << "#Time- Base carregada em " << time_diff << " segundos" << endl;

	//if (time_diff <= 0)
		//cout << "#Time- Base carregada em " << time_diff / 1000 << " ms" << endl;
	//else
		//cout << "#Time- Base carregada em " << time_diff << " seg" << endl;
}

void PrologDataBase::executeQuery(string query, vector<string>& params)
{
	PlTerm *arg;
	int functor, arity;
	int result;

	//predicate_t pred = PL_predicate("print", 1, NULL);
	//term_t h0 = PL_new_term_refs(1);
	
	//int rval;
	//char * expression = "print/1";
	//PL_put_atom_chars(h0, expression);
	
	//rval = PL_call_predicate(NULL, PL_Q_NORMAL, pred, h0);
	//PL_call(h0, NULL);
	//PL_halt(rval ? 0 : 1);
	
	clock_t time1, time2, time_diff; 
	time1 = clock()/(CLOCKS_PER_SEC); 

	PlTermv av(params.size());
	for ( int i = 0;i < params.size(); i++ )
	{
		av[i] = PlCompound(params[i].c_str());
	}


	//PlCall(query.c_str());
	//PlQuery q1(query.c_str(), 0);
	PlQuery q1("call", PlTermv(PlCompound(query.c_str())));

	while (q1.next_solution()) 
	{
		for ( int i = 0;i < params.size(); i++ )
		{
			cout << (char*)av[i] << ", ";
			//cout << "ASASA";
			cout << endl;
		}
		
			
	}

	//PlQuery q1("call", PlTermv(PlCompound("exec_halt")));

	time2 = clock()/(CLOCKS_PER_SEC); 
	time_diff = time2 - time1;

	// Restore old cout.
	//cout.rdbuf(oldCoutStreamBuf);

	if ( time_diff <= 0 )
		cout << "#Time- Dados carregados em  " << time_diff/1000 << " ms" << endl;
	else
		cout << "#Time- Dados carregados em  " << time_diff << " seg" << endl;
}


void PrologDataBase::executeQuery(string query,string queryName)
{
	FILE *stream;
	std::string fileName = "QueryResult_";
	fileName += queryName;
	fileName += ".xml";

	//std::string cmd = "open('";
	//cmd += fileName;
	//cmd +="', write, Out),set_output(Out)";

	//cout << "#Query -" << query.c_str() << endl;

	//Colocar tempo em NanoSegundos
	//clock_t time1, time2, time_diff;
	//time1 = clock() / (CLOCKS_PER_SEC);

	double startTime, endTime;
	startTime = getTime( );
	
	//int rc = PlCall(cmd.c_str());
	PlQuery q1("call", PlTermv(PlCompound(query.c_str())));

	//stream = fopen (fileName.c_str(), "wb");
	//const int stdout_fd = fileno(stdout); 
	//const int log_fd = fileno(stream);
	//dup2(log_fd, stdout_fd);
	//fclose(stream);
	//freopen(fileName.c_str(), "w+",stdout);
	//freopen_s(&stream, fileName.c_str(), "w",stdout);
	/*std::ofstream file;
    file.open (fileName);
    std::streambuf* sbuf = std::cout.rdbuf();
    std::cout.rdbuf(file.rdbuf());*/
	//char ch[100];
    //fgets(ch,100,stdout);
	bool bDone = false;
	//fclose(stdout);
	//char buf[4096] = { 0 };
    //stdout = fmemopen(buf, sizeof(buf), "w");
    //setbuf(stdout, NULL);
	//int out = open(fileName.c_str(),0);
	//dup2(out, 1);
	//close(out);
	while (q1.next_solution())
	{
		fflush(stdout);
	}

	

	/*try
	{
		PlCall("current_output(OUT),flush_output(OUT)");
		//PlQuery q2("call", PlTermv(PlCompound("nl")));
		//while (q2.next_solution());
	}
	catch(PlException & ex)
	{
		cout << (char*) ex;
	}
	catch(...)
	{
		cout << "ASASA";
	}*/

	
	//PlCall("writeln('')");
	//time2 = clock() / (CLOCKS_PER_SEC);
	//time_diff = time2 - time1;

	//cout << "#QueryName"+queryName << endl;

	endTime = getTime( );

	/*if (time_diff <= 0)
		cout << "#Time" << time_diff / 1000 << endl;
	else
		cout << "#Time" << time_diff << endl;*/

	cout << "#Time" <<(endTime - startTime) << endl;

	cout<<"#Split_File#"<< endl;


	//_pclose(stream);
	//file.close();
	//fclose(stream);
	//cout << "rename file.txt to  " << fileName.c_str()<< endl;
	//int result = rename( "file.txt" , fileName.c_str() );
	//std::stringstream out;
	//out << result;
	//cout << "resutado  " <<out.str() <<endl;
}



void PrologDataBase::totalRegistros(string query, vector<string>& params)
{
	clock_t time1, time2, time_diff; 
	time1 = clock()/(CLOCKS_PER_SEC);///1000); 
	//double startTime, endTime;
	//startTime = getRealTime( );

	PlTermv av(params.size());
	for ( int i = 0;i < params.size(); i++ )
	{
		av[i] = PlCompound(params[i].c_str());
	}

	int nCount = 0;
	PlQuery q1(query.c_str(), av);
	while (q1.next_solution()) 
	{
		nCount++;
	}

	//time2 = clock()/(CLOCKS_PER_SEC);///1000); 
	//time_diff = time2 - time1;


	if ( time_diff <= 0 )
		cout << nCount << " registros em " << time_diff/1000 << " ms" << endl;
	else
		cout << nCount << " registros em " << time_diff << " seg" << endl;
}

/*
static IOFUNCTIONS pq_functions;

void PrologDataBase::run() 
{
    pq_functions         = *Sinput->functions;
    pq_functions.read    = _read_;
    pq_functions.write	 = _write_;
 // pq_functions.close   = _close_; //JW: might be needed.  See pl-ntmain.c
    pq_functions.control = _control_;

    Sinput->functions  = &pq_functions;
    Soutput->functions = &pq_functions;
    Serror->functions  = &pq_functions;

    Sinput->flags  |= SIO_ISATTY;
    Soutput->flags |= SIO_ISATTY;
    Serror->flags  |= SIO_ISATTY;

    Sinput->encoding  = ENC_UTF8; // is this correct?
    Soutput->encoding = ENC_UTF8;
    Serror->encoding  = ENC_UTF8;

    Sinput->flags  &= ~SIO_FILE;
    Soutput->flags &= ~SIO_FILE;
    Serror->flags  &= ~SIO_FILE;

    PL_set_prolog_flag("console_menu", PL_BOOL, TRUE);
    PL_set_prolog_flag("console_menu_version", PL_ATOM, "qt");
    PL_set_prolog_flag("xpce_threaded", PL_BOOL, TRUE);

    target->add_thread(1);
    PL_exit_hook(halt_engine, NULL);

    PL_initialise(argc, argv);

    // use as initialized flag
    argc = 0;

    {   PlTerm color_term;
        if (PlCall("current_prolog_flag", PlTermv("color_term", color_term)) && color_term == "false")
            target->color_term = false;
    }

    for ( ; ; ) {
        int status = PL_toplevel() ? 0 : 1;
        qDebug() << "PL_halt" << status;
        PL_halt(status);
    }
}*/