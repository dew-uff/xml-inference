#include "stdafx.h"
#include "br_ufrj_ppgi_parser_SWIJNI.h"
#include <ctime>
#include <iostream> 
#include "PrologDataBase.h"


JNIEXPORT jboolean JNICALL Java_br_ufrj_ppgi_parser_SaxParserJNI_createBaseFacts(JNIEnv *env, jobject obj, jstring inJNIStr)
{
		std::string queries = env->GetStringUTFChars(inJNIStr, NULL);

        try 
		{
			/*clock_t time1, time2, time_diff;
			PrologDataBase db;

			db.loadDataBase();
			
			vector<string> strings;
			istringstream f(queries.c_str());
			string s;
			while (getline(f, s, ';')) 
			{
				//cout << s << endl;
				strings.push_back(s);
			}

			time1 = clock() / (CLOCKS_PER_SEC);///1000);
			for (int i = 0; i < strings.size(); i++)
			{
				std::stringstream out;
				std::string s;
				out << i;
				s = out.str();
				db.executeQuery(strings[i], s);
			}

			time2 = clock()/(CLOCKS_PER_SEC);///1000); 
			time_diff = time2 - time1;*/
			
        }
		catch (PlException & ex)
		{
			cout << (char*)ex;
		}
        catch (...) {
           
            return false;
        }

	return true;
}