package br.ufrj.ppgi.prolog;

import alice.tuprolog.Prolog;
import alice.tuprolog.SolveInfo;
import alice.tuprolog.Theory;
import alice.tuprolog.event.OutputEvent;
import alice.tuprolog.event.OutputListener;
import br.ufrj.ppgi.io.FileManager;
import br.ufrj.ppgi.parser.PrologOutputParser;
import jpl.Atom;
import jpl.Compound;
import jpl.Query;
import jpl.Term;
import jpl.Variable;

import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;


public class PrologQueryProcessor {
	
	private String resultString;
	private String outputString;
	private PrologOutputParser parser;
	public boolean bTuProlog;
	public PrologQueryProcessor()
	{
		resultString="";
		outputString = "";
		bTuProlog = false;
	}
	public PrologQueryProcessor(String query,PrologOutputParser.ParseType engine)
	{
		FileManager fileManager = new FileManager();
		outputString = "";
		resultString = "";
		try 
		{
			parser = new PrologOutputParser(engine);
			if(PrologOutputParser.ParseType.SWI == engine)
			{
				Query qFactBase = new Query("consult", new Term[]{new Atom( fileManager.factsFileName())});
				qFactBase.query();
				Query q1 = new Query(query);
				q1.query();
				
				if(q1.hasSolution())
				{
					/*while (q1.hasMoreElements())
					{
						
						Hashtable hash = (Hashtable) q1.nextElement();
						System.out.println( hash);
					}*/
					q1.open();
					Hashtable hash = q1.getSolution();
					//System.out.println( hash);
					resultString = parser.parseOutputToXML(hash.toString());
					outputString = hash.toString();
					while(q1.hasMoreSolutions()) 
					{
						hash  = q1.nextSolution();
						//System.out.println( hash);
						resultString+=parser.parseOutputToXML(hash.toString());
						outputString = outputString + "\n" + hash.toString();
					}
					
				}
				
			}
			else
			{
				//parser = new PrologOutputParser(PrologOutputParser.ParseType.TUPROLOG);
				
				String rules = fileManager.readRules();
				String facts = fileManager.readFacts();
				//String theory =facts + rules;
				String theory =facts;
				Prolog tuPrologEngine = new Prolog();
				
				tuPrologEngine.addOutputListener(new OutputListener() {
					
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
	
				
					tuPrologEngine.clearTheory();
					tuPrologEngine.setTheory(new Theory(theory));
					SolveInfo result = tuPrologEngine.solve(query);
					
					if(result.isSuccess())
					{
						resultString = parser.parseOutputToXML(result.toString());
						outputString = result.toString();
					 //##resultString = result.toString();
					}
					
					while(tuPrologEngine.hasOpenAlternatives()) 
					{
						result = tuPrologEngine.solveNext();
						resultString+=parser.parseOutputToXML(result.toString());
						//resultString = resultString + "\n" + result.toString();
						outputString = outputString + "\n" + result.toString();
					}
					
					tuPrologEngine.clearTheory();
					tuPrologEngine.removeAllExceptionListeners();
					tuPrologEngine.removeAllOutputListeners();
					tuPrologEngine.removeAllSpyListeners();
					tuPrologEngine.removeAllWarningListeners();
			}
			
			resultString +=parser.endOutputParser();
		} 
		catch (Exception e) {
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
