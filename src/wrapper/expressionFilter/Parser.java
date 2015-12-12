/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package wrapper.expressionFilter;


import java.util.ArrayList;
import java.util.List;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import wrapper.Pair;



/**
 *
 * @author rpinheiro
 * @author lmachado
 */
public class Parser implements IExpression {
    
    private IExpression syntaxTree;

    public IExpression getTreeExpression(){
        return syntaxTree;
    }
    
    private boolean isNumber(String token){
    	boolean bNumber = false;
    	try
    	{
    	   int val = Integer.parseInt(token);
    	   if ( val > 0 )
    		   bNumber = true;
    	}
    	catch (NumberFormatException nfe)
    	{
    	   // bad data - set to sentinel
    	   bNumber = false;
    	}
    	
    	return bNumber;
    }
    
    private boolean isElement(String token){
    	boolean bElement = false;
    	if ( isNumber(token) || token.indexOf("'") > -1)
    		bElement = true;
    	
    	return bElement;    	
    }
    
    private boolean isOperator(String token){
        boolean bOperator = false;
        if ( token.equals("=") || token.equals(">") || token.equals(">=") || token.equals("<")
                || token.equals("<=") || token.toUpperCase().equals("AND")
                || token.toUpperCase().equals("OR") )
            bOperator = true;

        return bOperator;
    }

    private IExpression createOperator(String strOperator, IExpression left, IExpression right){
        IExpression operator = null;
        if ( strOperator.equals("=") ){
            operator = new OperatorEqual(left, right);
        }
        else
            if ( strOperator.equals(">") ){
                operator = new OperatorGreaterThan(left, right);
            }
            else
                if ( strOperator.equals(">=")){
                    operator = new OperatorGreaterEqualThan(left, right);
                }
                else
                    if ( strOperator.equals("<") ){
                        operator = new OperatorLessThan(left, right);
                    }
                    else
                        if ( strOperator.equals("<=") ){
                            operator = new OperatorLessEqualThan(left, right);
                        }
                        else
                            if ( strOperator.toUpperCase().equals("AND") ){
                                operator = new OperatorAnd(left, right);
                            }
                            else
                                if ( strOperator.toUpperCase().equals("OR") ){
                                operator = new OperatorOr(left, right);
                            }
         return operator;
    }

 
    public Parser(String expression) {
        String tempElementText = "";
        int nCountPlic = 0;
        Stack<IExpression> expressionStack = new Stack<IExpression>();
    	Stack<String> tempStack = new Stack<String>();
    	boolean bContinueParse = true;
    	
    	String[] listToken = expression.split(" ");
    	
    	if((expression.indexOf("(") != -1 && expression.indexOf("(") !=0) || expression.indexOf("namespace::") != -1)
    	{
    		
    		int posToken = expression.indexOf("(");
    		
    		if(posToken ==-1)
    		{
    			posToken = expression.indexOf("namespace::");
    			posToken = posToken + (new String("namespace::")).length();
    			
    			String functionName = expression.substring(0,posToken);
    			
    			String [] splitList = expression.split(" ");
    			
    			for (String argument : splitList)
    			{
    				if(argument.contains("namespace::"))
    				{
    					
    					String [] argsList = expression.split("::");
    					
    					if(argsList.length>1)
    	    			{
    	    				ArrayList<IExpression> argumentsList = new ArrayList<IExpression>();
    	    				
    	    				String strArg = argsList[1];
    	    				
    	    				String [] nameSpaceArgs = strArg.split(" ");
    	    				
    	    				if(nameSpaceArgs.length > 0)
    	    					strArg = nameSpaceArgs[0];
    	    				
    	    				Element arg = new Element(strArg);
    						argumentsList.add(arg);
    	    				IExpression operator = new Function(functionName,argumentsList );
    	                    expressionStack.push(operator);
    	                    
    	                    int posEndToken = argument.length();
    	                    
    	                    int nEnd = expression.length();
    	                    int nBegin = posEndToken; 
    	                    if(posEndToken+1 < nEnd)
    	                    	nBegin = posEndToken+1; 
    	                    
    	                    String tmpSubstring = expression.substring(nBegin, nEnd);
    	                    listToken =  tmpSubstring.split(" ");	
    	                    
    	                    break;
    	    			}
    				}
    			}

    		}
    		else
    		{
	    			if(listToken.length < 2 )
	        		{
	            		if ( posToken > -1 )
	            		{
	            			
	            			String functionName = expression.substring(0,posToken);
	            			
	            			//expressionStack.push(new Variable(functionName));
	            			int posTokenEnd = expression.indexOf(")");
	            			String  arguments = expression.substring(posToken+1, posTokenEnd); 
	            			
	            			String[] listArguments = arguments.split(",");
	            			
	            			ArrayList<IExpression> argumentsList = new ArrayList<IExpression>();
	            			for (String argument : listArguments) 
	            			{
	            				if(!argument.isEmpty())
	            				{
	            					Element arg = new Element(argument);
	            					argumentsList.add(arg);
	            				}
	            			}
	                        
	            			IExpression operator = new Function(functionName, argumentsList);
	                        expressionStack.push(operator);
	                        
	                        bContinueParse = false;
	            		}
	        		}
	        		else
	        		{
	        			/*String functionName = expression.substring(0,posToken);
	        			int posEndToken = expression.indexOf(")");
	        			
	        			
	        			String arguments = expression.substring(posToken+1, posEndToken);
	        			String[] listArguments = arguments.split(",");
	        			ArrayList<IExpression> argumentsList = new ArrayList<IExpression>();
	        			for (String argument : listArguments) 
	        			{
	        				if(!argument.isEmpty())
	        				{
	        					Element arg = new Element(argument);
	        					argumentsList.add(arg);
	        				}
	        			}*/
	        			
	        			String strFunction = expression;
	        			
	        			List<Pair<Integer,Integer>> pairParenthesisList = mapParenthsis(expression);
	        			int nPosEndFunction = expression.lastIndexOf(")");
	        			if(pairParenthesisList.size()>0 && pairParenthesisList.get(pairParenthesisList.size()-1).getValue() > nPosEndFunction)
	        				nPosEndFunction = pairParenthesisList.get(pairParenthesisList.size()-1).getValue();
	        			
	        			
	        			
	        			if(nPosEndFunction != -1 && nPosEndFunction+1 <= expression.length())
	        			{
	        				strFunction  = expression.substring(0,nPosEndFunction+1);
	        			}
	        				
	        			
	        			expressionStack.addAll(parseFunction(strFunction));
	        			//IExpression operator = new Function(functionName, argumentsList);
	                    //expressionStack.push(operator);
	        			if(nPosEndFunction == -1)
	        				nPosEndFunction = expression.lastIndexOf(")");
	        			
	        			if(expression.length()==nPosEndFunction+1)
	        			{
	        				String strOperator = "";
	        				
	        				if(expression.contains("true") )
	        					strOperator = "true";
	        				if(expression.contains("false"))
	        					strOperator = "false";
	        				if(expression.contains("=") )
	        					strOperator = "=";
	        			     if(!strOperator.isEmpty())
	        			     {
	        			    	 nPosEndFunction = expression.indexOf(strOperator);
	        			    	 nPosEndFunction--;
	        			     }
	        			}
	        			
	                    String tmpSubstring = expression.substring(nPosEndFunction+1, expression.length());
	                    if(tmpSubstring.startsWith(")"))
	                    	tmpSubstring = expression.substring(nPosEndFunction+2, expression.length());
	                    
	                    listToken =  tmpSubstring.split(" ");
	        		}
    		}
    		
    	}
    	
    	if(bContinueParse)
    	{
    	
			for (String token : listToken) 
	        {
	        	if(token.isEmpty())
	        		continue;
				
				if ( isOperator(token) )
	        	{
	        		tempStack.push(token);
	        	}
	        	else
	        	{
	        		
	        		if(isElement(token) && listToken.length == 1)
	        		{
	        			expressionStack.push(new Variable(token));
	        		}
	        		else
	        		{
		        		if ( !isElement(token) && nCountPlic == 0)
		        		{
		        			if(token.indexOf("(") != -1 && token.indexOf("(") !=0)
		        			{
		        				int posTokenEnd = token.indexOf(")");
		        				int posToken = token.indexOf("(");
		        				
		        				String functionName = token.substring(0,posToken);
		        				
		            			String  arguments = token.substring(posToken+1, posTokenEnd); 
		            			
		            			String[] listArguments = arguments.split(",");
		            			
		            			ArrayList<IExpression> argumentsList = new ArrayList<IExpression>();
		            			for (String argument : listArguments) 
		            			{
		            				if(!argument.isEmpty())
		            				{
		            					Element arg = new Element(argument);
		            					argumentsList.add(arg);
		            				}
		            			}
		                        
		            			IExpression operator = new Function(functionName, argumentsList);
		                        expressionStack.push(operator);
		        			}
		        			else
		        			{
		        				if(!(token.compareTo("(")==0) && !(token.compareTo(")")==0))
		        					expressionStack.push(new Variable(token));
		        			}
		        		}
		        		else
		        		{
		                    if ( token.indexOf("'") > -1 )
		                        nCountPlic++;
		
		                    if ( nCountPlic > 0 && nCountPlic < 2 )
		                    {
		                        tempElementText += token.replace("'", "") + " ";
		                        continue;
		                    }
		                    else
		                        if ( nCountPlic == 2 )
		                        {
		                            token = tempElementText + token.replace("'", "");
		                            tempElementText = "";
		                        }
		                    
		                    if(!tempStack.isEmpty())
		                    {
			        			String strOperator = tempStack.pop();
			        			            IExpression otherExp =  expressionStack.pop();
			                                IExpression operator = createOperator(strOperator, otherExp, new Element_(token));
			                                expressionStack.push(operator);
		                    }
		        		}
	        		}
	        	}
	        }	
	    	
	        
	        
	        if ( !tempElementText.isEmpty() ){
	            String strOperator = tempStack.pop();
	            IExpression operator = createOperator(strOperator, expressionStack.pop(), new Element_(tempElementText.trim()));
	            expressionStack.push(operator);        			
	        }
	
	        if ( !tempStack.isEmpty() ){
	
	            while ( !tempStack.isEmpty() ){
	                IExpression rightOperand = expressionStack.pop();
	                IExpression leftOperand = expressionStack.pop();
	                IExpression operator = createOperator(tempStack.pop(), leftOperand, rightOperand);
	                expressionStack.push(operator);
	            }
	        }
    	}
        syntaxTree = expressionStack.pop();
    }
    
    
    
    public String interpret() {
        return syntaxTree.interpret();
    }
    
    
    private List<IExpression> parseFunction(String function)
    {
    	List<IExpression> listExpression = new ArrayList<IExpression>();
    	
    	/*List<Pair<Integer,Integer>> pairList = new ArrayList<Pair<Integer,Integer>>();
		boolean bHasPlic = false;
		int beginPosPlic = function.indexOf("'",0);
		int endPosPlic = -1;
		while(beginPosPlic > -1)
		{
			endPosPlic = function.indexOf("'",beginPosPlic+1);
			if(beginPosPlic < endPosPlic)
			{
				bHasPlic = true;
				pairList.add(new Pair<Integer, Integer>(beginPosPlic,endPosPlic));
			}
			
			beginPosPlic = function.indexOf("'",endPosPlic+1);
		}*/
    	
    	
    	int posToken = function.indexOf("(");
    	String functionName = function.substring(0,posToken);
		
		String arguments = findFunctionArguments(function);
		
		String[] listArguments = arguments.split(",(?![^(]*\\))");
		ArrayList<IExpression> argumentsList = new ArrayList<IExpression>();
		
		boolean bContainsLogicalOperators = false;
		boolean bContainsMathOperators = false;
		if(listArguments.length > 0)
		{
			String argsUpper = listArguments[0].toUpperCase();
			bContainsLogicalOperators = argsUpper.contains(" NOT")
					|| argsUpper.contains(" AND");
			
			bContainsMathOperators = argsUpper.contains(" - ")
					|| argsUpper.contains(" +")
					|| argsUpper.contains(" *")
			        || argsUpper.contains(" DIV")
			        || argsUpper.contains(" MOD");
 		}
			 
		
		if(!bContainsLogicalOperators && !bContainsMathOperators)
		{
			for (String argument : listArguments) 
			{
				if(!argument.isEmpty())
				{
					int nArgParentesis = argument.indexOf("(");
					if(nArgParentesis == 0 && argument.length()>0)
						nArgParentesis = argument.indexOf("(",1);
						
					if(nArgParentesis != -1)
					{
						argumentsList.addAll(parseFunction(argument));				
					}
					else
					{
						Element arg = new Element(argument);
						argumentsList.add(arg);
					}
				}
			}  	
		}
		else
		{
			if(bContainsMathOperators && listArguments.length>0)
				argumentsList.addAll(parseMathOperation(listArguments[0]));
		}
		
        
		IExpression functionExp = new Function(functionName, argumentsList);
		listExpression.add(functionExp);
    	return listExpression;
    }
    
    boolean checkParenthesis(String s, int i, int open, int closed){
        if(i == s.length())
        {
            if(open != closed) 
            	return false;
            return true;
        }   

        if(s.charAt(i) == '(') 
        	open = open+1;

        if(s.charAt(i) == ')'){
            if(open > closed) 
            	closed = closed+1;
            else return false;
        } 

        return checkParenthesis(s, i+1, open, closed);
    }
    
    String findFunctionArguments(String in)
    {
    	/*Matcher m = Pattern.compile("\\(([^)]+)\\)").matcher(in);
    	
    	
        if(m.find()) 
        	return m.group(1);
        
        return in;*/
    	
    	String tmp = in;
    	/*if(!tmp.trim().endsWith(")"))
    		tmp+=")";*/
    	if(!checkParenthesis(tmp,0,0,0))
    		tmp+=")";
    	
    	
    	
    	int nStart = tmp.indexOf("(");
    	if(nStart != -1)
    	{
    		//###int nEnd = tmp.lastIndexOf(")");
    		int nEnd = tmp.lastIndexOf(")");
    		if(tmp.contains("true")|| tmp.contains("false"))
    			nEnd = tmp.indexOf(")");
    		if(nEnd != -1 && nStart < nEnd)
    			return tmp.substring(nStart+1,nEnd);
    	}
    	
    	return tmp;
    }
    
    ArrayList<IExpression> parseMathOperation(String mathSentence)
    {
    	ArrayList<IExpression> argumentsList = new ArrayList<IExpression>();
    	
    	/*List<Pair<Integer,Integer>> parenthesisPairList = mapParenthsis(mathSentence);
    	
    	if(parenthesisPairList.size()>0)
    	{
	    	List<String> listSentences = new ArrayList<String>();
    		
    		for(int i = parenthesisPairList.size()-1; i>=0;i--)
	    	{
	    		String subSentence =   mathSentence.substring(parenthesisPairList.get(i).getKey(),parenthesisPairList.get(i).getValue());
	    		
	    		for(int j=0;j<listSentences.size();j++)
	    		{
	    			subSentence = subSentence.replace(listSentences.get(j), "");
	    		}
	    		
	    		
	    		
	    	}
    	}
    	else
    	{
    		
    	}*/
            	
    	//Parser parser = new Parser("( number(current) - number(initial) ) div count(bidder) ) > 8");
    	
    	String[] listArguments = mathSentence.split(" ");
    	//for (String argument : listArguments)
    	for(int i=0; i<listArguments.length;i++)
		{
    		String argument = listArguments[i];
    		if(!argument.isEmpty())
			{
				int nArgParentesis = argument.indexOf("(");
				if(nArgParentesis == 0 && argument.length()>0)
					nArgParentesis = argument.indexOf("(",1);
				
				if(argument.toUpperCase().trim().compareTo("DIV") == 0)
				{
					if(i+1 < listArguments.length)
					{
						String nextArg = listArguments[i+1];
						
						if(isFunction(nextArg))
							argumentsList.addAll(parseFunction(nextArg));
						else
						{
							Element arg = new Element(argument);
							argumentsList.add(arg);
						}
							
						i++;
					}
					
					ArrayList<IExpression> divArgumentsList = new ArrayList<IExpression>(argumentsList);
					Function divFunction = new Function(Function.FUNCTION_DIV,divArgumentsList);
					argumentsList.clear();
					argumentsList.add(divFunction);
					
					continue;
				}
					
				if(nArgParentesis != -1 && nArgParentesis!= 0)
				{
					argumentsList.addAll(parseFunction(argument));				
				}
				else
				{
					Element arg = new Element(argument);
					argumentsList.add(arg);
				}
			}
		}
    	
    	
    	return argumentsList;
    	
    }
    
    
    private boolean isFunction(String argument)
    {
    	int nArgParentesis = argument.indexOf("(");
		if(nArgParentesis == 0 && argument.length()>0)
			nArgParentesis = argument.indexOf("(",1);
		
		if(nArgParentesis != -1 && nArgParentesis!= 0)
			return true;
		
		return false;
    }
    
    private List<Pair<Integer,Integer>> mapParenthsis(String text)  
	{
		
		List<Pair<Integer,Integer>> pairParenthesisList = new ArrayList<Pair<Integer,Integer>>();
		Stack<Integer> tmpStack  =new Stack<Integer>();
		int beginPosParenthesis = text.indexOf("(",0);
		while(beginPosParenthesis > -1)
		{
			tmpStack.add(beginPosParenthesis);
			beginPosParenthesis = text.indexOf("(",beginPosParenthesis+1);
		}
		
		
		int endPosParenthesis = -1 ;
		while(!tmpStack.isEmpty())
		{
			beginPosParenthesis = tmpStack.pop();
			if(endPosParenthesis == -1)
			    endPosParenthesis = beginPosParenthesis;
			
			endPosParenthesis = text.indexOf(")",endPosParenthesis+1);
			
			if(endPosParenthesis >-1)
				pairParenthesisList.add(new Pair<Integer, Integer>(beginPosParenthesis,endPosParenthesis));
		}
		
		return pairParenthesisList;
	}
}
