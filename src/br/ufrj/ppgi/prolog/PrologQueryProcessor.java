package br.ufrj.ppgi.prolog;

import alice.tuprolog.Prolog;
import alice.tuprolog.SolveInfo;
import alice.tuprolog.Theory;
import alice.tuprolog.event.OutputEvent;
import alice.tuprolog.event.OutputListener;
import br.ufrj.ppgi.io.FileManager;
import br.ufrj.ppgi.parser.PrologOutputParser;
import jpl.*;

import java.util.Hashtable;

public class PrologQueryProcessor {
	
	private String resultString;
	private String outputString;
	private PrologOutputParser parser;
	public PrologQueryProcessor()
	{
		resultString="";
		outputString = "";
	}
	public PrologQueryProcessor(String query)
	{
		FileManager fileManager = new FileManager();
		outputString = "";
		resultString = "";
		parser = new PrologOutputParser(PrologOutputParser.ParseType.TUPROLOG);
		
		String rules = fileManager.readRules();
		String facts = fileManager.readFacts();
		//String theory =facts + rules;
		String theory =facts;
		Prolog engine = new Prolog();
		
		engine.addOutputListener(new OutputListener() {
			
			@Override
			public void onOutput(OutputEvent arg0) {
				// TODO Auto-generated method stub
				//resultString += arg0.getMsg();
				outputString = outputString + arg0.getMsg().replace("\\n", "\n");
			}
		});

		
		//String teste = fileManager.readTestBase();
		
		/*String t1 = "consult('BaseCompleta.pl')";
		Query q1 = new Query(t1);
		
		 if(q1.hasSolution())
		 {
			 Query q2 = new Query(query);
			 if(q2.hasSolution())
			 {
				 int c= 1;
			 }
		 }*/

		try {
			engine.clearTheory();
			engine.setTheory(new Theory(theory));
			SolveInfo result = engine.solve(query);
			
			if(result.isSuccess())
			{
				resultString = parser.parseOutputToXML(result.toString());
				outputString = result.toString();
			 //##resultString = result.toString();
			}
			
			while(engine.hasOpenAlternatives()) 
			{
				result = engine.solveNext();
				resultString+=parser.parseOutputToXML(result.toString());
				//resultString = resultString + "\n" + result.toString();
				outputString = outputString + "\n" + result.toString();
			}
			
			resultString +=parser.endOutputParser();
			
			engine.clearTheory();
			engine.removeAllExceptionListeners();
			engine.removeAllOutputListeners();
			engine.removeAllSpyListeners();
			engine.removeAllWarningListeners();
			
		} catch (Exception e) {
			e.printStackTrace();
			resultString = "CONSULTA INVÁLIDA!!!";
		}
	}
	
	public String getResult(){
		return this.resultString;
	}
	
	public String getOutputResult()
	{
		return this.outputString;
	}
	
}
