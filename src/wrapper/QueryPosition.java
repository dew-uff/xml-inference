package wrapper;

/**
*
* @author leonardo machado
*/

public class QueryPosition extends QueryElement 
{
    private String itemFilter;
    private String compareVariable;
    //private String position;
    private String searchValue;
    boolean bHasChildren;
    boolean bIsRoot;
    
	public QueryPosition() 
	{
	   super();	
	   itemFilter ="";
	   compareVariable ="";
	   searchValue ="";
	   bHasChildren = false;
	   bIsRoot = false;
	}
	
	
	public String getPositionFormula(int nSearch)
	{
		String positionFormula ="";
		//Position Filter
		//if( isNumber(prologFormula) )
		//{
		positionFormula = " findall(IDSEARCH"+String.valueOf(nSearch)+",";
		
		positionFormula +=   itemFilter.toLowerCase().trim(); //Last filter item, or last item 
		
		if(isRoot())
		{
			positionFormula +="(IDSEARCH"+String.valueOf(nSearch)+")";
		}
		else
		{
			positionFormula +="(_";
			positionFormula +=",IDSEARCH"+String.valueOf(nSearch);
			if(!bHasChildren)
			{
				//positionFormula +=	"ID"+itemFilter.toUpperCase().trim();	
				positionFormula += ",";
				positionFormula +=	searchValue.toUpperCase().trim(); // Value for the search
			}
			positionFormula +=	")";
		}
		
		positionFormula +=",LIST )";
		positionFormula +=",indexOf(LIST,IDSEARCH"+String.valueOf(nSearch)+",";
		positionFormula +=	super.getVariable();
		positionFormula +=")";
		
		if(!compareVariable.isEmpty())
		{
		   positionFormula +=",IDSEARCH"+String.valueOf(nSearch)+"=";
		   positionFormula +=	"ID"+compareVariable.toUpperCase(); // Variable from last filter
		}
		//}	
				
		
		return positionFormula;
	}


	public boolean hasChildren() {
		return bHasChildren;
	}


	public void setHasChildren(boolean bHasChildren) {
		this.bHasChildren = bHasChildren;
	}


	public String getItemFilter() 
	{
		return itemFilter;
	}


	public void setItemFilter(String itemFilter) {
		this.itemFilter = itemFilter;
	}


	public String getCompareVariable() 
	{
		return compareVariable;
	}


	public void setCompareVariable(String compareVariable) 
	{
		this.compareVariable = compareVariable;
	}


	/*public String getPosition() 
	{
		return position;
	}


	public void setPosition(String position) 
	{
		this.position = position;
	}*/


	public String getSearchValue() 
	{
		return searchValue;
	}


	public void setSearchValue(String searchValue) 
	{
		this.searchValue = searchValue;
	}


	public void setIsRoot(boolean root) 
	{
		bIsRoot = root;	
	}
    
	public boolean isRoot() 
	{
		return bIsRoot;	
	}
}
