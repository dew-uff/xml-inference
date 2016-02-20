package wrapper;

import java.util.ArrayList;
import java.util.List;

import wrapper.expressionFilter.Function;
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
    private boolean isFunction = false;
    private boolean isJoin = false;
    private boolean isParenthesis = false;
	
	public void parseElement(String newElement){
		int posToken = newElement.indexOf("[");
		if ( posToken > -1 )
		{			
			String strParser = "";
			strParser =newElement.substring(posToken+1, newElement.length()-1);
			Parser parser = new Parser(strParser);
			queryFormula = parser.getTreeExpression();
			
			if (queryFormula instanceof Function)
			{
				isFunction = true;
				filterPart = true;
			}
			
			/*if(queryFormula instanceof OperatorEqual)
			{
				OperatorEqual op = (OperatorEqual) queryFormula;
				
				if(op.leftOperand() instanceof Function)
					isFunction = true;
				if(op.rightOperand() instanceof Function)
					isFunction = true;
			}*/
			 
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
	
	public String getExperimentalFormula(String strFather, int nCompareTag)
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
				
				if(nCompareTag > 0)
					prologFormula = prologFormula.replace(operator.getLeftOp().toUpperCase(), operator.getLeftOp().toUpperCase()+nCompareTag);
				
				String opRule= operator.getLeftOp().toLowerCase();
				
				if(opRule.contains("@"))
				{
					opRule = strFather.toLowerCase()+"_attribute_"+operator.getLeftOp().toLowerCase();
				}
				
				opRule+="(ID"+strFather.toUpperCase();
				if(nCompareTag > 0)
					opRule+=nCompareTag;
					
				opRule+=",";
				opRule+="ID"+operator.getLeftOp().toUpperCase();
				if(nCompareTag > 0)
					opRule+=nCompareTag;
		
				//opRule+="_";
				opRule+=",";
				opRule+=operator.getLeftOp().toUpperCase();
				if(nCompareTag > 0)
					opRule+=nCompareTag;
				
				opRule+=")";
				prologFormula+=","+opRule;
				
				prologFormula = prologFormula.replace("@", "");
				
			}
			else if(prologFormula.toUpperCase().contains("PARENT::"))
				prologFormula = prologFormula.replace("PARENT::", "ID");
			else if(prologFormula.toUpperCase().contains(". @"))
			{
				prologFormula = prologFormula.replace(". @",strFather.toUpperCase()+" @");
			}
			else if(prologFormula.toUpperCase().contains("@"))
			{
				if(prologFormula.toUpperCase().contains("="))
				{
					String[] vetAttribute = prologFormula.split("=");
					if(vetAttribute.length >1)
					{
						String attributeName = vetAttribute[0].replace("@", "");
						prologFormula = attributeName.toLowerCase()+"(ID"+strFather.toUpperCase();
						if(nCompareTag > 0)
							prologFormula+=nCompareTag;
						
						prologFormula+=",ID"+attributeName.toUpperCase()+","+attributeName.toUpperCase()+") ";
						prologFormula+=", "+attributeName.toUpperCase() + " ="+vetAttribute[1];
					}
				}
				else if (prologFormula.toUpperCase().contains("@*") || prologFormula.toUpperCase().contains("@ *"))
					return prologFormula;
				else
				   prologFormula = "nonvar("+prologFormula+") ";
				
				prologFormula = prologFormula.replace("@", "");
			}
			
			
			boolean bNumberComparation = false;
			String strNumberOperator = "";
			if(queryFormula instanceof OperatorGreaterThan)
			{
				strNumberOperator = "@>";
				bNumberComparation = true;
			}
			else if(queryFormula instanceof OperatorGreaterEqualThan)
			{
				strNumberOperator = "@>=";
				bNumberComparation = true;
			}
			else if(queryFormula instanceof OperatorLessThan)
			{
				strNumberOperator = "@<";
				bNumberComparation = true;
			}
			else if(queryFormula instanceof OperatorLessEqualThan)
			{
				strNumberOperator = "@<=";
				bNumberComparation = true;
			}
			
			if(bNumberComparation)
			{
				String [] vetLeftOp = prologFormula.split(strNumberOperator);
				if(vetLeftOp.length > 1)
				{
					String strLeftOp = vetLeftOp[0].trim();
					nCompareTag++;
					String strNCompRule = "mynumber("+strLeftOp.toUpperCase()+", "+strLeftOp.toUpperCase()+nCompareTag+"), ";
					strNCompRule += strLeftOp.toUpperCase()+nCompareTag+" ";
					prologFormula = prologFormula.replace(strLeftOp,strNCompRule);
				}
			}
		}
		
		return prologFormula;
	}
	
	public boolean hasFunction()
	{
		return hasFunction(queryFormula);
	}
	
	
	public boolean hasFunction(IExpression expression)
	{
		if(expression instanceof Function)
			return true;
		if(expression instanceof OperatorGreaterThan)
		{
			OperatorGreaterThan operator = (OperatorGreaterThan) expression;
			return hasFunction(operator.leftOperand()) || hasFunction(operator.rightOperand());
		}
		
		if(expression instanceof OperatorEqual)
		{
			OperatorEqual operator = (OperatorEqual) expression;
			return hasFunction(operator.leftOperand()) || hasFunction(operator.rightOperand());
		}
		
		if(expression instanceof OperatorGreaterEqualThan)
		{
			OperatorGreaterEqualThan operator = (OperatorGreaterEqualThan) expression;
			return hasFunction(operator.leftOperand()) || hasFunction(operator.rightOperand());
		}
		
		if(expression instanceof OperatorLessEqualThan)
		{
			OperatorLessEqualThan operator = (OperatorLessEqualThan) expression;
			return hasFunction(operator.leftOperand()) || hasFunction(operator.rightOperand());
		}
		
		if(expression instanceof OperatorLessThan)
		{
			OperatorLessThan operator = (OperatorLessThan) expression;
			return hasFunction(operator.leftOperand()) || hasFunction(operator.rightOperand());
		}
		
		
		return false;
	}
	
	public String getFunctionFormula(/*String strFather*/)
	{
		String prologFormula = "";
		
		
		if(queryFormula instanceof Function)
		{ 
			Function func = (Function)queryFormula;	
			prologFormula = func.getFunctionName();
			prologFormula+=func.interpretArguments();
		}
			
		
		return prologFormula;
	}
	
	public List<String> getFunctionSimpleElementArguments()
	{
		 List<String> listArguments = new ArrayList<String>();
		
		if(queryFormula instanceof Function)
		{ 
			Function func = (Function)queryFormula;	
			listArguments = func.simpleElementArguments();
		}
		
		return listArguments;
	}
	
	public boolean isFilterpart()
	{
		return filterPart;
	}
	
	public void setIsFilterpart(boolean bIsFilterPart)
	{
		filterPart = bIsFilterPart;
	}
	
	public void setIsJoin(boolean bIsJoin)
	{
		isJoin = bIsJoin;
	}
	
	public void setIsParenthesis(boolean bIsParenthesis)
	{
		isParenthesis = bIsParenthesis;
	}
	
	public boolean isFunction()
	{
		return isFunction;
	}
	
	public boolean isOrFilterPart()
	{
		return orFilterPart;
	}
	
	public boolean isJoin()
	{
		return isJoin;
	}
	
	public boolean isParenthesis()
	{
		return isParenthesis;
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
	
	public boolean hasOperator()
	{
	   if(queryFormula instanceof OperatorEqual)
		   return true;
	   
	   if(queryFormula instanceof OperatorGreaterThan)
		   return true;
	   
	   if(queryFormula instanceof OperatorGreaterEqualThan)
		   return true;
	   
	   if(queryFormula instanceof OperatorLessEqualThan)
		   return true;
	   
	   if(queryFormula instanceof OperatorLessThan)
		   return true;
		
		return false;
	}
	
	public IExpression getExpressionFormula()
	{
		return queryFormula;
	}
	
}
