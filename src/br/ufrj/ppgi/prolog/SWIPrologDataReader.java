package br.ufrj.ppgi.prolog;

import java.util.ArrayList;


public class SWIPrologDataReader {
	private ArrayList<SWIPrologData> listDataResult;
	
	public SWIPrologDataReader()
	{
		listDataResult = new ArrayList<SWIPrologData>();
	}
	
	public void addData(SWIPrologData resultData)
	{
		listDataResult.add(resultData);
	}
}
