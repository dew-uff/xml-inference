/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package wrapper.expressionFilter;


import java.util.Stack;



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
        for (String token : expression.split(" ")) {
        	if ( isOperator(token) ){
        		tempStack.push(token);
        	}
        	else{
        		if ( !isElement(token) && nCountPlic == 0)
        			expressionStack.push(new Variable(token));
        		else{
                    if ( token.indexOf("'") > -1 )
                        nCountPlic++;

                    if ( nCountPlic > 0 && nCountPlic < 2 ){
                        tempElementText += token.replace("'", "") + " ";
                        continue;
                    }
                    else
                        if ( nCountPlic == 2 ){
                            token = tempElementText + token.replace("'", "");
                            tempElementText = "";
                        }
                    
        			String strOperator = tempStack.pop();
                                IExpression operator = createOperator(strOperator, expressionStack.pop(), new Element_(token));
                                expressionStack.push(operator);        			
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
        
        syntaxTree = expressionStack.pop();
    }
 
    public String interpret() {
        return syntaxTree.interpret();
    }
}
