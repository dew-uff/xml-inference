
package wrapper.expressionFilter;



public class Element implements IExpression {
    private String number;
    public Element(String number)       { this.number = number; }
        
    public String interpret()  { return number; }
}