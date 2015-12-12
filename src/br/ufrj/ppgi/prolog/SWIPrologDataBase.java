package br.ufrj.ppgi.prolog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

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
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String line = null;
		String XMl = "";
		while (q2.hasMoreElements())
		{
			
			try {
				if((line = br.readLine()) != null)
				{
					XMl += line;
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//System.out.println( ((java.util.Hashtable)q2.nextElement()).toString());
		}
		
		return true;
	}
	
}
