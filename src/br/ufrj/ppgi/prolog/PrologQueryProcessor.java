package br.ufrj.ppgi.prolog;

import alice.tuprolog.Prolog;
import alice.tuprolog.SolveInfo;
import alice.tuprolog.Theory;
import alice.tuprolog.event.OutputEvent;
import alice.tuprolog.event.OutputListener;
import br.ufrj.ppgi.io.FileManager;
import jpl.*;

import java.util.Hashtable;

public class PrologQueryProcessor {
	
	private String resultString;
	public PrologQueryProcessor()
	{
		resultString=""; 
	}
	public PrologQueryProcessor(String query){
		FileManager fileManager = new FileManager();
		String rules = fileManager.readRules();
		String facts = fileManager.readFacts();
		String theory =facts + rules;
		Prolog engine = new Prolog();
		
		engine.addOutputListener(new OutputListener() {
			
			@Override
			public void onOutput(OutputEvent arg0) {
				// TODO Auto-generated method stub
				resultString += arg0.getMsg();
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
			engine.setTheory(new Theory(theory));
			SolveInfo result = engine.solve(query);
			/*resultString = result.toString();
			
			while(engine.hasOpenAlternatives()) {
				result = engine.solveNext();
				resultString = resultString + "\n" + result.toString();
			}*/
		} catch (Exception e) {
			e.printStackTrace();
			resultString = "CONSULTA INVÃ�LIDA!!!";
		}
	}
	
	public String getResult(){
		return this.resultString;
	}
	
}
