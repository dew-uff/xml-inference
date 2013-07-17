package br.ufrj.ppgi.prolog;
import jpl.*;

public class SWIPrologDataBase {
	Query dataBase;
	
	public SWIPrologDataBase()
	{
		String[] params = {"pl", "-A200m","-L5000m", "-G5000m","-T1500m"};
		JPL.init(params);				// we don't need this with the current JPL (lazy init-on-demand)
	}
	
	public boolean loadDataBase(String pathBase)
	{
		dataBase = new Query("consult", new Term[]{new Atom(pathBase)});
		return dataBase.hasSolution();
	}
	
	public boolean executeQuery(String query)
	{
		Query q2 = new Query(query);
		while (q2.hasMoreElements())
		{
			System.out.println( ((java.util.Hashtable)q2.nextElement()).toString());
		}
		
		return true;
	}
	
}
