#include "stdafx.h"
#include "br_ufrj_ppgi_parser_SaxParserJNI.h"
#include "SaxHandle.h"
#include "SaxHandler2.h"
#include <xercesc/sax2/SAX2XMLReader.hpp>
#include <xercesc/sax2/XMLReaderFactory.hpp>
#include <xercesc/sax2/DefaultHandler.hpp>
#include <xercesc/util/XMLString.hpp>
#include <ctime>


JNIEXPORT jboolean JNICALL Java_br_ufrj_ppgi_parser_SaxParserJNI_createBaseFacts(JNIEnv *env, jobject obj, jstring inJNIStr)
{
		
		try 
		{
            XMLPlatformUtils::Initialize();
        }
        catch (const XMLException& toCatch) 
		{
            char* message = XMLString::transcode(toCatch.getMessage());
            XMLString::release(&message);
            return false;
        }

        //char* xmlFile = "C:\\Users\\Rafael\\Documents\\Mestrado\\base xml\\dictionary\\dictionary.xml";
		//char* xmlFile = "dictionary.xml";
		std::string xml = env->GetStringUTFChars(inJNIStr, NULL);
		//std::string factFilePath = env->GetStringUTFChars(inJNIStr, NULL);
        SAX2XMLReader* parser = XMLReaderFactory::createXMLReader();
		parser->setFeature(XMLUni::fgSAX2CoreValidation, true);
		parser->setFeature(XMLUni::fgSAX2CoreNameSpaces, true);   // optional
		

		DefaultHandler* defaultHandler = new SaxHandler2("BaseFatos.pl");
		parser->setContentHandler(defaultHandler);
		parser->setErrorHandler(defaultHandler);

        try 
		{
			clock_t time1, time2, time_diff; 
			time1 = clock()/(CLOCKS_PER_SEC);///1000);
			parser->parse(xml.c_str());
			time2 = clock()/(CLOCKS_PER_SEC);///1000); 
			time_diff = time2 - time1;
			cout << "Base carregada em " << time_diff << " segundos" << endl;
			
        }
        catch (const XMLException& toCatch) {
            char* message = XMLString::transcode(toCatch.getMessage());
			/*FILE* arquivo = fopen("ErrorSaxParser.txt", "w");
			fputs(message, arquivo);	
			fclose(arquivo);*/
			cout << message ;
            XMLString::release(&message);
            return false;
        }
        catch (const SAXParseException& toCatch) {
            char* message = XMLString::transcode(toCatch.getMessage());
			/*FILE* arquivo = fopen("ErrorSaxParser.txt", "w");
			fputs(message, arquivo);	
			fclose(arquivo)*/
			cout << message ;
            XMLString::release(&message);
            return false;
        }
        catch (...) 
		{
            cout << "Unexpected Exception \n" ;
            return false;
        }

		delete parser;
		delete defaultHandler;

	return true;
}