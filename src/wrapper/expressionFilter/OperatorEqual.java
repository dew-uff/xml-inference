package wrapper.expressionFilter;


public class OperatorEqual implements IExpression {
    IExpression leftOperand;
    IExpression rightOperand;
    public OperatorEqual(IExpression left, IExpression right) { 
        leftOperand = left; 
        rightOperand = right;
    }

    public String interpret()  { 
        return leftOperand.interpret() + " = '" + rightOperand.interpret() + "'";
    }
    
    public String getLeftOp()
    {
    	return leftOperand.interpret();
    }
    
    public String getRightOp()
    {
    	return rightOperand.interpret();
    }

}
