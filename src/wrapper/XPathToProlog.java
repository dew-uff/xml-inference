package wrapper;
import java.util.ArrayList;

import br.ufrj.ppgi.io.FileManager;
import br.ufrj.ppgi.parser.PrologOutputParser;
import br.ufrj.ppgi.prolog.*;


public class XPathToProlog {
	private String result;
	
	public String getResult()
	{
		return result;
	}
	
	public boolean executeQuery( String query )
	{
		String queryProlog = convertQueryToProlog(query);
		System.out.println(queryProlog);
		PrologQueryProcessor engineProlog = new PrologQueryProcessor(queryProlog,PrologOutputParser.ParseType.SWI);
		result = engineProlog.getResult();
		System.out.println(engineProlog.getResult());		
		
		return true;
	}
	
	private String getQueryBaseProlog(String element)
	{
		StringBuffer queryProlog = new StringBuffer();
		FileManager fileManager = new FileManager();
		ArrayList<String> rulesArray = fileManager.readRulesList();
		
		for ( int i = 0; i < rulesArray.size(); i++)
		{
			String currentRule = rulesArray.get(i);
			int index = currentRule.indexOf(element);
			if ( index > -1 )
			{
				int posTokenInitBody = currentRule.indexOf(":-", index+1);
				if ( posTokenInitBody > -1 )
				{
					queryProlog.append(currentRule.substring(index,  posTokenInitBody-1));
					break;
				}
			}
		}
		
		queryProlog.trimToSize();
		queryProlog.append(".");		
		
		return queryProlog.toString();
	}
	
	private String getElement(String query)
	{
		String element = "";
		int posLastBar = query.lastIndexOf("/");
		if ( posLastBar > -1 )
		{
			element = query.substring(posLastBar+1, query.length());
		}
		
		return element;
	}
	
	private String convertQueryToProlog( String query )
	{
		String element = getElement(query);		
		String strQueryConvert = getQueryBaseProlog(element);
		return strQueryConvert;
	}

}
