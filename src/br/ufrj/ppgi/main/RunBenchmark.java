package br.ufrj.ppgi.main;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import test.BenchMark;

public class RunBenchmark {

	public static void main(String[] args) {
		
		//String OS = System.getProperty("os.name").toLowerCase();
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
		
		BenchMark bench = new BenchMark();
    	bench.runBenchMark();
	}

}
