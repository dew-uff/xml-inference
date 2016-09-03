// MySaxParser.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "SaxHandle.h"
#include "SaxHandler2.h"
#include <xercesc/sax2/SAX2XMLReader.hpp>
#include <xercesc/sax2/XMLReaderFactory.hpp>
#include <xercesc/sax2/DefaultHandler.hpp>
#include <xercesc/util/XMLString.hpp>
#include <xercesc/util/OutOfMemoryException.hpp>

#include <iostream>
#include <ctime>

using namespace std;
using namespace xercesc;

//#pragma comment(linker, "/STACK:40000000")
//#pragma comment(linker, "/HEAP:4000000")

int _tmain(int argc, _TCHAR* argv[])
{
	try {
            XMLPlatformUtils::Initialize();
        }
        catch (const XMLException& toCatch) {
            char* message = XMLString::transcode(toCatch.getMessage());
            cout << "Error during initialization! :\n"
                 << message << "\n";
            XMLString::release(&message);
            return 1;
        }

        //char* xmlFile = "C:\\Users\\Rafael\\Documents\\Mestrado\\base xml\\dictionary\\dictionary.xml";
		char* xmlFile = "dictionary.xml";
		std::string xml =	"DocAlmendro1MB.xml";
        SAX2XMLReader* parser = XMLReaderFactory::createXMLReader();
		parser->setFeature(XMLUni::fgSAX2CoreValidation, true);
		//parser->setFeature(XMLUni::fgSAX2CoreNameSpaces, true);   // optional

		SAX2XMLReader* parser2 = XMLReaderFactory::createXMLReader();
		parser2->setFeature(XMLUni::fgSAX2CoreValidation, true);
		

		//DefaultHandler* defaultHandler = new SaxHandle("BaseFatos.pl");
		DefaultHandler* defaultHandler2 = new SaxHandler2("BaseFatosNova.pl");
		
		//parser->setContentHandler(defaultHandler);
		//parser->setErrorHandler(defaultHandler);

		parser2->setContentHandler(defaultHandler2);
		parser2->setErrorHandler(defaultHandler2);

        try 
		{
			clock_t time1, time2, time_diff; 
			time1 = clock()/(CLOCKS_PER_SEC);///1000);
			parser2->parse(xml.c_str());
			time2 = clock()/(CLOCKS_PER_SEC);///1000); 
			time_diff = time2 - time1;
			cout << "Base carregada em " << time_diff << " segundos" << endl;
			//int a;
			//cin >> a; 

			/*time1 = clock() / (CLOCKS_PER_SEC);///1000);
			parser->parse(xml.c_str());
			time2 = clock() / (CLOCKS_PER_SEC);///1000); 
			time_diff = time2 - time1;
			cout << "Base carregada em " << time_diff << " segundos" << endl;*/
        }
        catch (const XMLException& toCatch) 
		{
            char* message = XMLString::transcode(toCatch.getMessage());
            cout << "Exception message is: \n"
                 << message << "\n";
            XMLString::release(&message);
            return -1;
        }
        catch (const SAXParseException& toCatch) 
		{
            char* message = XMLString::transcode(toCatch.getMessage());
            cout << "Exception message is: \n"
                 << message << "\n";
            XMLString::release(&message);
            return -1;
        }
		catch (const OutOfMemoryException& toCatch) 
		{
			char* message = XMLString::transcode(toCatch.getMessage());
			cout << "Exception message is: \n"
				<< message << "\n";

			cout << "Source: \n"
				<< toCatch.getSrcFile() << "\n";

			cout << "Line: \n"
				<< toCatch.getSrcLine() << "\n";

			XMLString::release(&message);
			return -1;
		}
        /*catch (...) 
		{
            cout << "Unexpected Exception \n" ;
            return -1;
        }*/


		delete parser;
		delete parser2;
		//delete defaultHandler;
		delete defaultHandler2;

		XMLPlatformUtils::Terminate();

	return 0;
}

