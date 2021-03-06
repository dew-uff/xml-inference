package wrapper;

import java.text.DecimalFormat;

import alice.tuprologx.pj.engine.PrologInvocationKind;
import br.ufrj.ppgi.parser.PrologOutputParser;
import br.ufrj.ppgi.prolog.PrologQueryProcessor;

public abstract class Wrapper {
	private String result;
	
	protected abstract String convertQuery( String query, boolean _bJustTranslate );
	
	protected String getElement(String query)
	{
		String element = "";
		int posLastBar = query.lastIndexOf("/");
		if ( posLastBar > -1 )
		{
			element = query.substring(posLastBar+1, query.length());
		}
		
		return element;
	}

	
	public boolean executeQuery( String query,PrologOutputParser.ParseType engine )
	{
		//PrologOutputParser parser = new PrologOutputParser(PrologOutputParser.ParseType.TUPROLOG);
		//System.out.println(parser.tuPrologParseTest());
		
		//return true;
		long startTime = System.nanoTime();
		String queryProlog = convertQuery(query,false);
		long stopTime = System.nanoTime();
		long estimatedTime = stopTime - startTime;
		System.out.println("Translation Time : " + new DecimalFormat("#.##########").format((double)estimatedTime / 1000000000) + " Seconds");
		
                //queryProlog = "findall(G, (item(_, PRODUTO, QUANTIDADE, PRECO_UNIT), PRODUTO = 'caneta preta', quantidade(G,QUANTIDADE)), A).";
		System.out.println(queryProlog);
		//return true;
		PrologQueryProcessor engineProlog = new PrologQueryProcessor(queryProlog,engine);
		//setResult(engineProlog.getResult());
		setResult(engineProlog.getOutputResult());
		//System.out.println(engineProlog.getOutputResult());		
		
		return true;
	}
	
	public String getResult()
	{
		return result;
	}
	
	public void setResult(String str)
	{
		result = str;
	}
	
}
