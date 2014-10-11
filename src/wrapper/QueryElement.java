package wrapper;

import wrapper.expressionFilter.IExpression;
import wrapper.expressionFilter.OperatorAnd;
import wrapper.expressionFilter.OperatorEqual;
import wrapper.expressionFilter.OperatorGreaterEqualThan;
import wrapper.expressionFilter.OperatorGreaterThan;
import wrapper.expressionFilter.OperatorLessEqualThan;
import wrapper.expressionFilter.OperatorLessThan;
import wrapper.expressionFilter.OperatorOr;
import wrapper.expressionFilter.Parser;


public class QueryElement {
	private String element;
	private IExpression queryFormula;
    private String querySchema;
    private boolean filterPart = false;
    private boolean orFilterPart = false;
	
	public void parseElement(String newElement){
		int posToken = newElement.indexOf("[");
		if ( posToken > -1 )
		{			
			String strParser = "";
			strParser =newElement.substring(posToken+1, newElement.length()-1);
			Parser parser = new Parser(strParser);
			queryFormula = parser.getTreeExpression();	
			element = newElement.substring(0, posToken);		
		}
		else
		{
			element = newElement.replace("/", "");
		}
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
            else
            {
                //condFormula = querySchema + ", " + formula;
            	condFormula = formula;
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
	
	public String getExperimentalFormula(String strFather)
	{
		String prologFormula = "";
		if ( queryFormula != null )
		{
			prologFormula = createFormula(queryFormula.interpret());                        
		}   
		
		
		if(!prologFormula.isEmpty())
		{
			if(queryFormula instanceof OperatorEqual)
			{ 
				OperatorEqual operator = (OperatorEqual)queryFormula;
				String opRule= operator.getLeftOp().toLowerCase();
				opRule+="(ID"+strFather.toUpperCase();
				opRule+=",";
				opRule+="ID"+operator.getLeftOp().toUpperCase();
				//opRule+="_";
				opRule+=",";
				opRule+=operator.getLeftOp().toUpperCase()+")";
				prologFormula+=","+opRule;
				
			}
			
		}
		
		return prologFormula;
	}
	
	public boolean isFilterpart()
	{
		return filterPart;
	}
	
	public void setIsFilterpart(boolean bIsFilterPart)
	{
		filterPart = bIsFilterPart;
	}
	
	public boolean isOrFilterPart()
	{
		return orFilterPart;
	}
	
	public void setIsOrFilterpart(boolean bIsOrFilterPart)
	{
		orFilterPart = bIsOrFilterPart;
	}
	
	public String getVariable()
	{
		String variable = element;
		
		if(!getFormula().isEmpty())
		{
			variable = getFormula();
			String strOP = "";
			 if ( getFormula().contains("=") ){
				 strOP = "=";
		        }
		        else
		            if ( getFormula().contains(">") ){
		            	 strOP = ">";
		            }
		            else
		                if ( getFormula().contains(">=")){
		                	 strOP = ">=";
		                }
		                else
		                    if ( getFormula().contains("<") ){
		                    	 strOP = "<";
		                    }
		                    else
		                        if ( getFormula().contains("<=") ){
		                        	 strOP = "<=";
		                        }
		                        else
		                            if ( getFormula().toUpperCase().contains("AND") ){
		                            	 strOP = "AND";
		                            }
		                            else
		                                if ( getFormula().toUpperCase().contains("OR") ){
		                                	 strOP = "OR";
		                            }
			 if(!strOP.isEmpty())
				 variable = getVariable(strOP);
			 
		}
		
		return variable.toLowerCase();
		
	}

	private String getVariable(String strOP) 
	{
		String variable = "";
		
		String [] vetFormula =  getFormula().toUpperCase().split(strOP.toUpperCase());
		
		if(vetFormula.length >0)
			variable = vetFormula[0];
		
		return variable;
	}
	
}
