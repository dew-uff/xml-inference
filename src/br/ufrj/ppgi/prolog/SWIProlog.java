package br.ufrj.ppgi.prolog;

public class SWIProlog {
		private SWIPrologDataBase dataBase;
		
		public SWIProlog()
		{
			dataBase = new SWIPrologDataBase();
			dataBase.loadDataBase("BaseFatosTotal2.pl");
		}
		
		public boolean executeQuery(String query)
		{
			return dataBase.executeQuery(query);
		}
}
