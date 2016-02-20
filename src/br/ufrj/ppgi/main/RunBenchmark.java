package br.ufrj.ppgi.main;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import test.BenchMark;

public class RunBenchmark {

	public static void main(String[] args) {
		
		//String OS = System.getProperty("os.name").toLowerCase();
		//System.out.println("INICIO");
		 String path = "C:\\Program Files\\swipl";
		 BufferedReader br;
		try 
		{
			br = new BufferedReader(new FileReader("Configurations.txt"));
		     String line = null;
			 while((line =br.readLine())!=null)
			 {
			    if(line.contains("SWIPath="))
			    {
			         path = line.replace("SWIPath=", "");
			    }
			 }
		} 
		catch (FileNotFoundException e)
		{
				e.printStackTrace();
		}
		catch (IOException e)
		{
				e.printStackTrace();
		}
		
		System.getProperties().setProperty("InstalationPath", path);
		
		/*
		try
		{
			
			
			 String OS = System.getProperty("os.name").toLowerCase();
			 String cmd = "";
			 String extension = "";
			 String exec = "";
			 String fileExtension = "";
			 String file = "query";
			 String cmdFinish = "";
			 String strBenchMark = "";
			 
			 //if(query.split("#").length>0)
				 //strBenchMark = "true";
			 
			 if(OS.indexOf("win") >= 0)
			 {
				 cmd = "cmd /c start ";
				 extension = ".exe";
				 fileExtension= ".bat";
				 cmdFinish = " exit";
				 
				 PrintWriter writer;
				
				 writer = new PrintWriter(file+fileExtension, "UTF-8");
				 
				 writer.append("SWIProlog"+extension);
				 writer.append(" BaseSWI.pl ");
				 writer.append("\"");
				 writer.append(System.getProperties().getProperty("InstalationPath"));
				 writer.append("\"");
				 writer.append(" \"");
				 writer.append("bin\\swipl.dll");
				 writer.append("\"");
				 writer.append(" queries.txt ");
				 writer.append(strBenchMark+" | "); 
				 writer.append("OutputListen"+extension);
				 writer.append(" exit");
				 writer.close();
			 }
			 else
			 {
				 exec = "./ ";
				 fileExtension= ".sh";
				 cmd = "sh";
				 
				 PrintWriter writer = new PrintWriter(file+fileExtension, "UTF-8");
				 writer.append("./SWIProlog"+extension);
				 writer.append(" BaseSWI.pl ");
				 writer.append("\"");
				 writer.append(System.getProperties().getProperty("InstalationPath"));
				 writer.append("\"");
				 writer.append(" queries.txt ");
				 writer.append(strBenchMark+" | "); 
				 writer.append("./OutputListen"+extension);
				 writer.close();
				 
			 }
			 
			 
			 //String [] queryArray  = query.split("#");
			 String [] queryArray  = {"( print_item(NOGRANDPARENT,IDNODEORDERSORTED) )."};
			 PrintWriter writer = new PrintWriter("queries.txt", "UTF-8");
			 for(int i=0; i< queryArray.length;i++)
			 {
				 writer.println(queryArray[i]);
			 }
			 writer.close();
			 
			 Process p = Runtime.getRuntime().exec(cmd+file+fileExtension+cmdFinish);//"cmd /c start teste.bat"	
			 int exitVal = p.waitFor();
		}
		catch (FileNotFoundException e) 
		{
				// TODO Auto-generated catch block
				e.printStackTrace();
		} 
		catch (UnsupportedEncodingException e) 
		{
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
		catch (IOException e) 
		{
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
		catch (InterruptedException e) 
		{
				// TODO Auto-generated catch block
				e.printStackTrace();
		}*/ 
		
		BenchMark bench = new BenchMark();
    	bench.runBenchMark();
	}

}


