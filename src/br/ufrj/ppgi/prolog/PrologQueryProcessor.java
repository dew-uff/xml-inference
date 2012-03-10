package br.ufrj.ppgi.prolog;

import alice.tuprolog.Prolog;
import alice.tuprolog.SolveInfo;
import alice.tuprolog.Theory;

import br.ufrj.ppgi.io.FileManager;

public class PrologQueryProcessor {
	
	private String resultString;
	
	public PrologQueryProcessor(String query){
		FileManager fileManager = new FileManager();
		String rules = fileManager.readRules();
		String facts = fileManager.readFacts();
		String theory = facts + rules;
		Prolog engine = new Prolog();

		try {
			engine.setTheory(new Theory(theory));
			SolveInfo result = engine.solve(query);
			resultString = result.toString();
			
			while(engine.hasOpenAlternatives()) {
				result = engine.solveNext();
				resultString = resultString + "\n" + result.toString();
			}
		} catch (Exception e) {
			e.printStackTrace();
			resultString = "CONSULTA INVÁLIDA!!!";
		}
	}
	
	public String getResult(){
		return this.resultString;
	}
}
