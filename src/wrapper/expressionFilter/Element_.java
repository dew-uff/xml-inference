
package wrapper.expressionFilter;



public class Element_ implements IExpression {
    private String number;
    public Element_(String number)       { this.number = number; }
        
    public String interpret()  { return number; }
}