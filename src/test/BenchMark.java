package test;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import br.ufrj.ppgi.parser.PrologOutputParser;
import br.ufrj.ppgi.parser.SchemaParser;
import br.ufrj.ppgi.parser.XMLParser;
import br.ufrj.ppgi.prolog.PrologQueryProcessor;
import wrapper.*;

public class BenchMark {

	private static final String FILE_PATH ="F:/ESTUDOS/MESTRADO/ORIENTACAO/XMLINFERENCE2/xml-inference/XML1.xsd";
	private static final String FILE_NAME ="XML1.xsd";
	
	private static final String QUERIES_FILE_NAME ="F:/ESTUDOS/MESTRADO/ORIENTACAO/XMLINFERENCE2/xml-inference/Benchmark.txt";
	private static final String QUERIES_TRANSLATE_FILE_NAME ="F:/ESTUDOS/MESTRADO/ORIENTACAO/XMLINFERENCE2/xml-inference/TranslateTimes.txt";
	
	private WrapperSchema wrapper = null;
	
	private boolean load()
	{
		if(wrapper == null)
		{
		   wrapper = new WrapperSchema();
		   HashMap<String,File> hash = new HashMap<String, File>();
	       File file = new File(FILE_PATH);
	       hash.put(FILE_NAME, file);
	       SchemaParser.getInstance().executeParse(hash, null);
		}
		
		return true;
	}
	
	
	public void runBenchMark()
	{
		load();
		 File file = new File(QUERIES_FILE_NAME);
		 
		String queries = "";  
		//StringBuffer temp = new StringBuffer();
		ArrayList<String> listQueries = new ArrayList<String>(); 
		
		try {    
			FileReader arquivo = new FileReader(file);  
			BufferedReader ler = new BufferedReader(arquivo);  
			 
			boolean fim = false;  
			  
			while (!fim) {  
				String linha = ler.readLine();  
				if (linha == null)  
					fim = true;  
				else  
					listQueries.add(linha);  
			}  
			
			//queries = temp.toString(); 
			ler.close();  
			arquivo.close();  
		} catch (IOException erro) {  
			System.out.print("Erro :" + erro.toString());  
		} catch (SecurityException erro2) {  
			System.out.print("Erro :" + erro2.toString());  
		}
		
		String queriesTranslateFileName = "";
		for(int i=0;i<listQueries.size();i++)
		{	
			long begin = System.nanoTime();
			queries+=wrapper.convertQuery(listQueries.get(i), false);
			long elapsedTime = System.nanoTime()-begin;
			queriesTranslateFileName+=i+ "-"+elapsedTime+";\n";
			
			if(i+1 < listQueries.size())
				queries+="#";
		}
		
		FileWriter fw;
		File fileQueryTime = new File(QUERIES_TRANSLATE_FILE_NAME);
		try {
			fw = new FileWriter(fileQueryTime, true);
			fw.append(queriesTranslateFileName);
			fw.close();
		} 
		catch (IOException erro) 
		{  
			System.out.print("Erro :" + erro.toString());  
		} 
		catch (SecurityException erro2) 
		{  
			System.out.print("Erro :" + erro2.toString());  
		}
		
		
		if(!queries.isEmpty())
		{
			PrologQueryProcessor engineProlog = new PrologQueryProcessor(queries,PrologOutputParser.ParseType.SWI);
			System.out.println(queries);
		}
		
	}
}
