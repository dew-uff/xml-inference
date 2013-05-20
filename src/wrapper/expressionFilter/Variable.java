
package wrapper.expressionFilter;


public class Variable implements IExpression {
    private String variable;
    public Variable(String variable)       { this.variable = variable; }
        @Override
    public String interpret()  { return variable.toUpperCase(); }
}


