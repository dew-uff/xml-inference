package br.ufrj.ppgi.parser;

import java.util.ArrayList;

public class RuleStringParser 
{
	
	private int nIndexBegin  = 0;
	private int nIndexEnd  = 0;
    
	
	public void setBeginIndex(int index)
	{
		nIndexBegin = index;
	}
	
	public int getBeginIndex()
	{
		return nIndexBegin;
	
	}
	
	public void setBeginEnd(int index)
	{
		nIndexEnd = index;
	}
	
	
	public int getEndIndex()
	{
		return nIndexEnd;
	
	}
	
	
	public ArrayList<String> getRules(String strRules)
	{
		ArrayList<String> ruleList = new ArrayList<String>();
		
		if(strRules.contains(":-"))
	    {
	    	 String [] ruleListSplit = strRules.split("\\:-");
	    	 
	    	 ruleList.add(ruleListSplit[0]);
	    	 nIndexBegin = 0;
	    	 nIndexEnd= ruleListSplit[1].length();
	    	 while (nIndexBegin < ruleListSplit[1].length()-1)
             {
	    		 ruleList.add(getRule(ruleListSplit[1]));
             }
	    }
		
		
		return ruleList;
	}
	
	
	 public String getRuleName( String strRule )
     {

         String ruleName = "";

         if(strRule.contains("("))
         {
             String[] splitRuleName = strRule.split("\\(");
             ruleName = splitRuleName[0];
         }

         return ruleName;
     }
	
	 private String getRule(String ruleText)
     {

         nIndexEnd =  ruleText.indexOf("),", nIndexBegin);

         if (nIndexEnd < 0)
         {
             nIndexEnd = ruleText.indexOf(").", nIndexBegin);
         }
        
         
        String strRule = ruleText.substring(nIndexBegin, nIndexBegin+(nIndexEnd -nIndexBegin)+1);

        nIndexBegin = nIndexEnd+2;

        return strRule;


     }
	 
	 public String replaceIDRule(String strRule)
	 {
	    	String strNewRule = strRule;
		    int nIndexPar = strRule.indexOf("(");
	        if(nIndexPar>=0)
	        {
	        	int nIndexComma = strRule.indexOf(",", nIndexPar);
	        	if(nIndexComma >=0 && nIndexPar < nIndexComma)
	        	{
	        		
	        		String strID = strRule.substring(nIndexPar,nIndexComma);
	        		if(strID.contains("ID"))
	        		{
	        			String strReplace = "(ID"+getRuleName(strRule).toUpperCase();
	        			strNewRule = strRule.replaceFirst("\\"+strID,strReplace);
	        		}
	        	}
	        } 
		 
	        
	       return strNewRule;
	 }
	 

}
