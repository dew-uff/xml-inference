package wrapper.expressionFilter;

import java.util.ArrayList;
import java.util.List;

public class Function  implements IExpression {
	 ArrayList<IExpression> arguments;
	 String functionName;
	 
	 public static final String FUNCTION_LOCAL_NAME = "localName";
	 public static final String FUNCTION_NAME = "name";
	 public static final String FUNCTION_LANG = "lang";
	 public static final String FUNCTION_POSITION = "position";
	 public static final String FUNCTION_LAST = "last";
	 public static final String FUNCTION_NAMESPACE = "namespace::";
	 public static final String FUNCTION_PARENT = "parent::";
	 public static final String FUNCTION_SUBSTRING_BEFORE = "substringBefore";
	 public static final String FUNCTION_SUBSTRING = "substring";
	 public static final String FUNCTION_SUBSTRING_AFTER = "substringAfter";
	 public static final String FUNCTION_NORMALIZE_SPACE = "normalizeSpace";
	 public static final String FUNCTION_STRING_LENGTH = "stringLength";
	 public static final String FUNCTION_FLOOR = "floor";
	 public static final String FUNCTION_CEILING = "ceiling";
	 public static final String FUNCTION_SUM = "sum";
	 public static final String FUNCTION_ROUND = "round";
	 public static final String FUNCTION_NUMBER = "number";
	 public static final String FUNCTION_DIV = "div";
	 public static final String FUNCTION_COUNT = "count";
	 public static final String FUNCTION_BOOLEAN = "boolean";
	 public static final String FUNCTION_CONCAT = "concat";
	 public static final String FUNCTION_STRING = "string";
	 public static final String FUNCTION_CONTAINS = "contains";
	 public static final String FUNCTION_STARTS_WITH = "startsWith";
	 public static final String FUNCTION_TRANSLATE = "translate";
	 public static final String FUNCION_NAMESPACE_URI = "namespaceUri";
	 public static final String FUNCTION_NOT = "not";
	 public static final String FUNCTION_TRUE = "true";
	 public static final String FUNCTION_FALSE = "false";
	 public static final String FUNCTION_RESULT = "RESULT";
	 
	 //true()
	 //false()
	 
	 public Function(String functionName, ArrayList<IExpression> arguments) {
		 this.functionName = functionName;
		 this.arguments = arguments;
     }
	 
	 
	 public String getFunctionName()
	 {
		 String treatedFunctionName = functionName;
		 if(functionName.contains("-"))
			 treatedFunctionName = toCamelCase(functionName,"-");
		 
		 return treatedFunctionName;
	 }
	 
	 private String toCamelCase(String inputText, String wordSeparator)
	 {
		 String treatedText = inputText;
		 if(inputText.contains(wordSeparator))
		 {
			 int nCount =1;
			 for (String s : inputText.split(wordSeparator)) 
			 {
				 if(nCount==1)
					 treatedText = s;
				 else
					 treatedText += s.substring(0, 1).toUpperCase() + s.substring(1).toLowerCase();
				 
				 nCount++;
			 }
		 }
		 
		 return treatedText;
	 }

     public String interpret()  {
         String strReturn =  functionName;
         
         if( arguments.size() >0) 
             strReturn += "(";
         
         for (int i=0; i<arguments.size();i++)
         {
        	 IExpression argument = arguments.get(i);
        	 if(argument instanceof Element )
        	    strReturn += argument.interpret().toUpperCase();
        	 else
        		strReturn += argument.interpret(); 
        	 
        	 if(i<arguments.size()-1)
        		 strReturn += ",";
         }
         
         
         if( arguments.size() >0) 
         strReturn += " )";
         
         return strReturn;
     }
	 
	 
     public String interpretArguments()
     {
    	 String strReturn = "";
    	 
    	 if( arguments.size() >0) 
             strReturn += "(";
         
         for (int i=0; i<arguments.size();i++)
         {
        	 IExpression argument = arguments.get(i);
        	 String strArgument = argument.interpret();
        	 
        	 if(! strArgument.contains("'"))
        		 strArgument = strArgument.toUpperCase();
        	 
        	 strReturn += strArgument;
        	 
        	 if(i<arguments.size()-1)
        		 strReturn += ",";
         }
         
         
         if( arguments.size() >0) 
         strReturn += " )";
    	 
    	 return strReturn;
     }

     public List<String> simpleElementArguments()
     {
    	 List<String> listArguments = new ArrayList<String>();
    	 
    	 for (int i=0; i<arguments.size();i++)
         {
        	 IExpression argument = arguments.get(i);
        	 
        	 if(argument instanceof Element ) 
        	 {
        		 listArguments.add(argument.interpret());
        		 
        	 }
         }
    	 
    	 return listArguments;
     }
     
    public ArrayList<IExpression> arguments()
    {
    	return arguments;
    }
     
    public boolean isTextFunction()
    {
    	if(getFunctionName().compareToIgnoreCase(FUNCTION_SUBSTRING_BEFORE)==0)
    		return true;
    	else if(getFunctionName().compareToIgnoreCase(FUNCTION_SUBSTRING)==0) 
    	    return true;
    	else if(getFunctionName().compareToIgnoreCase(FUNCTION_SUBSTRING_AFTER)==0)
    		return true;
    	else if(getFunctionName().replace("-","").compareToIgnoreCase(FUNCTION_NORMALIZE_SPACE)==0)
    		return true;
    		
    	return false;
    		
    }
    
    static public String mountMathListFunction(String functionName,String tagName,String strPrevisousRules, String tagFatherName, String resultVarName,boolean bHasComplexChilds)
    {
    	String sumFormula = "";
    	if(functionName.compareToIgnoreCase("sum")==0 && !bHasComplexChilds)
    		sumFormula = " findall("+tagName.toUpperCase().trim()+",";
    	else 
    		sumFormula = " findall(ID"+tagName.toUpperCase().trim()+",";
    	sumFormula += " (";	
    	sumFormula += strPrevisousRules;
    	sumFormula +=   tagName.toLowerCase().trim(); //Last filter item, or last item 
			
		{
			sumFormula +="(ID"+tagFatherName.toUpperCase().trim();
			//sumFormula +=",IDSEARCH"+String.valueOf(nVarId);
			//sumFormula +=",_";
			sumFormula +=",ID"+tagName.toUpperCase().trim();
			if(!bHasComplexChilds)
			{
				if(functionName.compareToIgnoreCase("sum")==0)
					sumFormula += ","+tagName.toUpperCase().trim();
				else
					sumFormula +=",_";
			}
			
			//sumFormula += tagName.toUpperCase().trim(); // Value for the search
			sumFormula +=")";
		}
		sumFormula +=")";
		sumFormula +=",LIST ) ";
		
		sumFormula +=", "+functionName+"(LIST,";
		sumFormula +=resultVarName+" )";
		
		return sumFormula;
    }
}
