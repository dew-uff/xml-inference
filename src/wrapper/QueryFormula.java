package wrapper;

public class QueryFormula {
	//constants
	private final String GREATER_THAN_PROLOG = "@>";
	private final String GREATER_THAN_EQUAL_PROLOG = "@>=";
	private final String LESS_THAN_PROLOG = "@<";
	private final String LESS_THAN_EQUAL_PROLOG = "@<=";
	private final String EQUAL_PROLOG = "=";
	
	private final String GREATER_THAN_QUERY = ">";
	private final String GREATER_THAN_EQUAL_QUERY = ">=";
	private final String LESS_THAN_QUERY = "<";
	private final String LESS_THAN_EQUAL_QUERY = "<=";
	private final String EQUAL_QUERY = "=";
	
	private final String OR_QUERY = "OR";
	private final String AND_QUERY = "AND";
	
	private final String OR_PROLOG = ";";
	private final String AND_PROLOG = ",";
	
	
	private final String INVALID = "-1";
	
	private String attribute;
	private String operator;
	private String value;
	
	private StringBuilder resultFormula = new StringBuilder();
	
	private String getOperatorProlog(String operator)
	{
		if ( operator.equals(GREATER_THAN_QUERY) ){
			return GREATER_THAN_PROLOG;
		}
		else
			if ( operator.equals(GREATER_THAN_EQUAL_QUERY)){
				return GREATER_THAN_EQUAL_PROLOG;
			}
			else
				if ( operator.equals(LESS_THAN_QUERY) ){
					return LESS_THAN_PROLOG;
				}
				else
					if ( operator.equals(LESS_THAN_EQUAL_QUERY) ){
						return LESS_THAN_EQUAL_PROLOG;
					}
					else
						if ( operator.equals(EQUAL_QUERY) ){
							return EQUAL_PROLOG;
						}
		return INVALID;
	}
	
	@SuppressWarnings("unused")
	private void extractFormula(String  newFormula){
		int posOperator = newFormula.indexOf(GREATER_THAN_QUERY);
		if ( posOperator == -1 )
			posOperator = newFormula.indexOf(GREATER_THAN_EQUAL_QUERY);
		else
			if ( posOperator == -1 )
				posOperator = newFormula.indexOf(LESS_THAN_QUERY);
			else
				if ( posOperator == -1 )
					posOperator = newFormula.indexOf(LESS_THAN_EQUAL_QUERY);
				else
					if ( posOperator == -1)
						posOperator = newFormula.indexOf(EQUAL_QUERY);
		
		if ( posOperator > -1)
		{
			attribute = newFormula.substring(0, posOperator-1);
			operator = getOperatorProlog(newFormula.substring(posOperator, posOperator+1));
			value = newFormula.substring(posOperator+1, newFormula.length()-1);
		}
	}
	
	@SuppressWarnings("unused")
	private boolean isOperator(char cOperator){
		if ( cOperator == '>' || cOperator == '=' || cOperator == '<')
			return true;
		
		return false;
	}
	
	private String getLogicOperatorProlog(String token){
		String logicOperatorProlog = "";
		if ( token.equals(AND_QUERY) ){
			logicOperatorProlog = AND_PROLOG;
		}
		else
			if ( token.equals(OR_QUERY) ){
				logicOperatorProlog = OR_PROLOG;
			}
		
		return logicOperatorProlog;
	}
	
	private boolean isNumber(String token){
		try {

            Integer.parseInt(token);
        
        } catch (NumberFormatException ex) {
            return false;
        }
        
        return true;
	}
	
	public void parseFormula(String newFormula){
		/*int posOperator = newFormula.indexOf(GREATER_THAN_QUERY);
		if ( posOperator == -1 )
			posOperator = newFormula.indexOf(GREATER_THAN_EQUAL_QUERY);
		
		if ( posOperator == -1 )
			posOperator = newFormula.indexOf(LESS_THAN_QUERY);
		
		if ( posOperator == -1 )
			posOperator = newFormula.indexOf(LESS_THAN_EQUAL_QUERY);
		
		if ( posOperator == -1)
			posOperator = newFormula.indexOf(EQUAL_QUERY);
		
		if ( posOperator > -1)
		{
			attribute = newFormula.substring(0, posOperator).toUpperCase();
			operator = getOperatorProlog(newFormula.substring(posOperator, posOperator+1));
			value = newFormula.substring(posOperator+1, newFormula.length()).trim();
		}*/
		
		
		for(String token: newFormula.split(" ")){
			if ( token.indexOf("'") == -1 ){
				if ( !getOperatorProlog(token).equals(INVALID) ){
					resultFormula.append(" ");
					resultFormula.append(getOperatorProlog(token));
				}else{
					if ( getLogicOperatorProlog(token.toUpperCase()).length() > 0 ){
						resultFormula.append(" ");
						resultFormula.append(getLogicOperatorProlog(token.toUpperCase()));
					}
					else{
						if (isNumber(token))
						{
							resultFormula.append("'");
							resultFormula.append(token);
							resultFormula.append("'");
							resultFormula.append(" ");
						}
						else {
							resultFormula.append(" ");
							resultFormula.append(token.toUpperCase());
						}
					}
				}
				
				
			}
			else{
				if ( token.indexOf("'") > -1 ){
						resultFormula.append(token);
						resultFormula.append(" ");
				}
			}
			
			
				
		}
		
	}
	
	@SuppressWarnings("unused")
	private String getAttribute(){		
		return attribute.toUpperCase();
	}
	
	@SuppressWarnings("unused")
	private String getOperator(){		
		return operator;
	}
	
	@SuppressWarnings("unused")
	private String getValue(){		
		return value;
	}
	
	public String getFormula(){
		return resultFormula.toString();
	}

}
