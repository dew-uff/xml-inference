/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package wrapper.expressionFilter;

/**
 *
 * @author rafael
 */
public class OperatorOr implements IExpression {
        IExpression leftOperand;
        IExpression rightOperand;
        public OperatorOr(IExpression left, IExpression right) {
            leftOperand = left;
            rightOperand = right;
        }

        public String interpret()  {
            return leftOperand.interpret() + " ; " + rightOperand.interpret();
        }
    }
