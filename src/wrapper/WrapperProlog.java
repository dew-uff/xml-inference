package wrapper;

import java.util.ArrayList;

import br.ufrj.ppgi.io.FileManager;

public class WrapperProlog extends Wrapper {
	
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
	
	protected String convertQuery( String query )
	{
		String element = getElement(query);		
		String strQueryConvert = getQueryBaseProlog(element);
		return strQueryConvert;
	}


}
