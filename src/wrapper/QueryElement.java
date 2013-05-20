package wrapper;

import wrapper.expressionFilter.IExpression;
import wrapper.expressionFilter.Parser;


public class QueryElement {
	private String element;
	private IExpression queryFormula;
        private String querySchema;
	
	public void parseElement(String newElement){
		int posToken = newElement.indexOf("[");
		if ( posToken > -1 )
		{			
			Parser parser = new Parser(newElement.substring(posToken+1, newElement.length()-1));
			queryFormula = parser.getTreeExpression();	
			element = newElement.substring(0, posToken);
		}
		else
			element = newElement;
	}
	
	public String getElement(){
		return element;
	}
        
        public void setQueryFromSchema(String query){
            querySchema = query;
        }
        
        public String getFinalQuery(){
            String finalQuery = querySchema;
            if ( !getFormula().isEmpty() )
                finalQuery = getFormula();
            
            finalQuery += ".";
            
            return finalQuery;
        }
        
        private String createFormula(String formula){
            String condFormula = "";
            if ( formula.indexOf(";") > -1){
                String condOr = "";
                String query = "; "+querySchema+", ";
                formula = formula.replace(";", query );
                condOr += "setof("+element.toUpperCase()+",(" + querySchema + ", ";
                condOr += formula;
                condOr += "),_)";
                condFormula = condOr;
            }
            else{
                condFormula = querySchema + ", " + formula;
            }                
                
            return condFormula;
        }
	
	public String getFormula()
	{
		String prologFormula = "";
		if ( queryFormula != null ){
			prologFormula = createFormula(queryFormula.interpret());                        
		}                                              
		return prologFormula;
	}

}
