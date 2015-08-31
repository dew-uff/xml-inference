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
	 
	 public int  getRuleParametersNumber( String strRule )
	 {
		 int nParameters = -1;
		 if(strRule.contains("("))
         {
			 int nIndexOpen =  strRule.indexOf("(",0);
			 int nIndexClose =  strRule.indexOf(")", nIndexOpen);
			 
			 String [] ruleListSplit = strRule.substring(nIndexOpen, nIndexClose).split("\\,");
			 nParameters = ruleListSplit.length;
         }
		 
		 
		 return nParameters;
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
	 
	 public String replaceIDRule(String strRule, String strToReplace)
	 {
	    	String strNewRule = strRule;
		    int nIndexPar = strRule.indexOf("(");
	        if(nIndexPar>=0)
	        {
	        		String strTagName = strRule.substring(0,nIndexPar);
	        		if(strTagName.contains("_attribute_"))
	        		{
	        			String [] vetName = strTagName.split("\\_attribute_");
	        			if(vetName.length>1)
	        				strTagName = vetName[1];
	        		}
	        		
	        		if(strRule.contains("ID"+strTagName.toUpperCase()))
	        		{
	        			int nFrom  = strRule.indexOf("ID"+strTagName.toUpperCase());
	        			int nTo = strRule.indexOf(",",strRule.indexOf(",")+1);
	        			if(nTo<=0)
	        			{
	        				nTo = strRule.indexOf(")");
	        				if(nTo<=0)
	        					nTo = strRule.length();
	        			}
	        			
	        			
	        			String temp = strRule.substring(nFrom, nTo);
	        			strNewRule = strRule.replaceFirst(temp,strToReplace);
	        		}
	        } 
		 
	       return strNewRule;
	 }
	 
	 public String replaceParentIDRule(String strRule,String strParent)
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
	        			String strReplace = "(ID"+strParent.replace(":", "_").toUpperCase();
	        			strNewRule = strRule.replaceFirst("\\"+strID,strReplace);
	        		}
	        	}
	        } 
		 
	        
	       return strNewRule;
	 }
	 

}
