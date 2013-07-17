package br.ufrj.ppgi.prolog;

import java.util.HashMap;

public class SWIPrologData {
	private HashMap<String,String> mapData;
	
	public SWIPrologData()
	{
		mapData = new HashMap<String,String>();
	}
	
	public void addData(String key, String value)
	{
		mapData.put(key, value);
	}
	
	public String getValue(String key)
	{
		return mapData.get(key);
	}
}
