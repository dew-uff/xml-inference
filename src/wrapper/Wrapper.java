package wrapper;

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

	
	public boolean executeQuery( String query )
	{
		String queryProlog = convertQuery(query,false);
                //queryProlog = "findall(G, (item(_, PRODUTO, QUANTIDADE, PRECO_UNIT), PRODUTO = 'caneta preta', quantidade(G,QUANTIDADE)), A).";
		System.out.println(queryProlog);
		return true;
		/*PrologQueryProcessor engineProlog = new PrologQueryProcessor(queryProlog);
		setResult(engineProlog.getResult());
		System.out.println(engineProlog.getResult());		
		
		return true;*/
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
