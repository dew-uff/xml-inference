
package wrapper.expressionFilter;


public class Variable implements IExpression {
    private String variable;
    public Variable(String variable)       { this.variable = variable; }
        @Override
    public String interpret(){	
        	
        	if(variable.contains("'"))
        	{
        		int nFirst = variable.indexOf("'");
        		int nLast = variable.indexOf("'", nFirst+1);
        		
        		String nonUpper = variable.substring(nFirst+1,nLast);
        		
        		return variable.toUpperCase().replace(nonUpper.toUpperCase(), nonUpper);
        	}
        	else
        		return variable.toUpperCase(); 
        }
}


