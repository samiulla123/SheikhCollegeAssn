package assign1;

public class getset {
	private String name;
	private String phno;
	private String addr;
	private String assign[];
	private String gen[];
	private String cit;
	
	public getset(int a, int b)
	{
		name="";
		phno="";
		addr="";
		assign=new String[a];
		gen=new String[b];
		cit="";
		
	}
	public getset()
	{
		
	}
	
	public void setName(String value)
	{
		name=value;
	}
	public String getName()
	{
		return name;
	}
	public void setAddr(String value)
	{
		addr=value;
	}
	public String getAddr()
	{
		return addr;
	}
	public void setPno(String value)
	{
		phno=value;
	}
	public String getPno()
	{
		return phno;
	}
	public void setAssign(int pos, String check)
	{
		assign[pos]=check;
	}
	
	public String[] getAssign()
	{
		return assign;
	}
	
	public void setGen(int pos1, String value)
	{
		gen[pos1]=value;
	}
	
	public String[] getGen()
	{
		return gen;
	}
	public void setCity(String value)
	{
		cit=value;
	}
	public String getCity()
	{
		return cit;
	}
}
