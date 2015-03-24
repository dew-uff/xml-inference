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
    	
    	if(expression.indexOf("(") != -1 || expression.indexOf("namespace::") != -1)
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
    	                    
    	                    String tmpSubstring = expression.substring(posEndToken+1, expression.length());
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
	            			String  arguments =	arguments = expression.substring(posToken+1, posTokenEnd); 
	            			
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
	        			expressionStack.addAll(parseFunction(expression));
	        			//IExpression operator = new Function(functionName, argumentsList);
	                    //expressionStack.push(operator);
	        			int posEndFunction = expression.lastIndexOf(")");
	        			
	                    String tmpSubstring = expression.substring(posEndFunction+1, expression.length());
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
		        			expressionStack.push(new Variable(token));
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
		for (String argument : listArguments) 
		{
			if(!argument.isEmpty())
			{
				int nArgParentesis = argument.indexOf("(");
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
        
		IExpression functionExp = new Function(functionName, argumentsList);
		listExpression.add(functionExp);
    	return listExpression;
    }
    
    String findFunctionArguments(String in)
    {
    	/*Matcher m = Pattern.compile("\\(([^)]+)\\)").matcher(in);
    	
    	
        if(m.find()) 
        	return m.group(1);
        
        return in;*/
    	
    	int nStart = in.indexOf("(");
    	if(nStart != -1)
    	{
    		int nEnd = in.lastIndexOf(")");
    		if(nEnd != -1 && nStart < nEnd)
    			return in.substring(nStart+1,nEnd);
    	}
    	
    	return in;
    }
}
