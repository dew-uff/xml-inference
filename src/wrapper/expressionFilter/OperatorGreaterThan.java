/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package wrapper.expressionFilter;

/**
 *
 * @author rafael
 */
public class OperatorGreaterThan implements IExpression {
        IExpression leftOperand;
        IExpression rightOperand;
        public OperatorGreaterThan(IExpression left, IExpression right) {
            leftOperand = left;
            rightOperand = right;
        }

        public String interpret()  {
            return leftOperand.interpret() + " @> " + "'" + rightOperand.interpret() + "'";
        }
}