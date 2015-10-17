package br.ufrj.ppgi.parser;

public class SaxParserC extends ISaxParserC
{
	public boolean createBaseFacts(String filePath,String factsFilePath)
	{	
		SaxParserJNI saxParserC = new SaxParserJNI();
		boolean ret = saxParserC.createBaseFacts(filePath);
		return ret;
	}
}
