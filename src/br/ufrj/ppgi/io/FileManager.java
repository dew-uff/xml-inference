package br.ufrj.ppgi.io;

import java.io.BufferedReader;

import java.io.File;  
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.FileWriter;
import java.io.RandomAccessFile;

import java.util.HashMap;

import javax.swing.JFileChooser;
import javax.swing.filechooser.FileNameExtensionFilter;
import java.util.ArrayList;

public class FileManager {
	private static final String FACTS_FILE_NAME = "BaseFatos.pl";
	private static final String RULES_FILE_NAME = "BaseRegras.pl";
	private static final String PERMISSION = "rw";
	private static final String PATH = "/home/mury/Dropbox/Mestrado/Pesquisa/2011/Avaliacao Experimental/Benchmark/xBench/TCMD/";
	
	private HashMap<String, File> fileList = new HashMap<String, File>();

	public HashMap<String, File> getFileList(){
		return fileList;
	}
	
	public String factsFileName()
	{
		return FACTS_FILE_NAME;
	}
	
	public String rulesFileName()
	{
		return RULES_FILE_NAME;
	}
	
	public String loadFile(String fileType) {
		String fileName = null;
				
		try{
			final JFileChooser fc = new JFileChooser();
			String titulo = "Escolha um arquivo " + fileType;
			fc.setDialogTitle(titulo);
			FileNameExtensionFilter filter = new FileNameExtensionFilter("Arquivos XML", fileType);
		    fc.setFileFilter(filter);
		    fc.setCurrentDirectory(new File(PATH));
		    fc.setMultiSelectionEnabled(false);
		    int returnVal = fc.showOpenDialog(fc);
		    if (returnVal == JFileChooser.APPROVE_OPTION){
		    	File fileChosen = fc.getSelectedFile();
		    	fileName = fileChosen.getName();
		    	fileList.put(fileName, fileChosen);
		    }
		} catch (Exception e){
			 System.out.println(e.toString());
		}
		
		return (fileName);
	}
	
	public void writeRules(String text){	
		File file = new File(RULES_FILE_NAME);		
		FileWriter fw;
		try {
			fw = new FileWriter(file, true);
			fw.append(text);
			fw.close();
		} catch (IOException erro) {  
			System.out.print("Erro :" + erro.toString());  
		} catch (SecurityException erro2) {  
			System.out.print("Erro :" + erro2.toString());  
		}
	}
	
	public void writeFacts(String text){	
		File file = new File(FACTS_FILE_NAME);
		FileWriter fw;
		try {
			fw = new FileWriter(file, true);
			fw.append(text);
			fw.close();
		} catch (IOException erro) {  
			System.out.print("Erro :" + erro.toString());  
		} catch (SecurityException erro2) {  
			System.out.print("Erro :" + erro2.toString());  
		}
	}
        
        
	
	public String readRules(){
		File file = new File(RULES_FILE_NAME);
		String texto = "";  
		StringBuffer temp = new StringBuffer();    
		
		try {    
			FileReader arquivo = new FileReader(file);  
			BufferedReader ler = new BufferedReader(arquivo);  
			 
			boolean fim = false;  
			  
			while (!fim) {  
				String linha = ler.readLine();  
				if (linha == null)  
					fim = true;  
				else  
					temp.append(linha + "\n");  
			}  
			
			texto = temp.toString(); 
			ler.close();  
			arquivo.close();  
		} catch (IOException erro) {  
			System.out.print("Erro :" + erro.toString());  
		} catch (SecurityException erro2) {  
			System.out.print("Erro :" + erro2.toString());  
		}
		
		return texto;
	}
	
	
	public String readTestBase(){
		File file = new File("BaseCompleta.pl");
		String texto = "";  
		StringBuffer temp = new StringBuffer();    
		
		try {    
			FileReader arquivo = new FileReader(file);  
			BufferedReader ler = new BufferedReader(arquivo);  
			 
			boolean fim = false;  
			  
			while (!fim) {  
				String linha = ler.readLine();  
				if (linha == null)  
					fim = true;  
				else  
					temp.append(linha + "\n");  
			}  
			
			texto = temp.toString(); 
			ler.close();  
			arquivo.close();  
		} catch (IOException erro) {  
			System.out.print("Erro :" + erro.toString());  
		} catch (SecurityException erro2) {  
			System.out.print("Erro :" + erro2.toString());  
		}
		
		return texto;
	}
	
	public ArrayList<String> readRulesList(){
		File file = new File(RULES_FILE_NAME);
		ArrayList<String> rulesArray = new ArrayList<String>();		
		
		try {    
			FileReader arquivo = new FileReader(file);  
			BufferedReader ler = new BufferedReader(arquivo);  
			 
			boolean fim = false;  
			  
			while (!fim) {  
				String linha = ler.readLine();  
				if (linha == null)  
					fim = true;
				else
					rulesArray.add(linha);
					
			}  
			 
			ler.close();  
			arquivo.close();  
		} catch (IOException erro) {  
			System.out.print("Erro :" + erro.toString());  
		} catch (SecurityException erro2) {  
			System.out.print("Erro :" + erro2.toString());  
		}
		
		return rulesArray;
	}
	
	public String readFacts(){
		File file = new File(FACTS_FILE_NAME);
		String texto = "";  
		StringBuffer temp = new StringBuffer();    
		
		try {    
			FileReader arquivo = new FileReader(file);  
			BufferedReader ler = new BufferedReader(arquivo);  
			 
			boolean fim = false;  
			  
			while (!fim) {  
				String linha = ler.readLine();  
				if (linha == null)  
					fim = true;  
				else  
					temp.append(linha + "\n");  
			}  
			
			texto = temp.toString(); 
			ler.close();  
			arquivo.close();  
		} catch (IOException erro) {  
			System.out.print("Erro :" + erro.toString());  
		} catch (SecurityException erro2) {  
			System.out.print("Erro :" + erro2.toString());  
		}
		return texto;
	}
	
	public void clearFiles(){
		try{
			RandomAccessFile file = new RandomAccessFile(RULES_FILE_NAME, PERMISSION);
			file.setLength(0);
			file.close();
			
			file = new RandomAccessFile(FACTS_FILE_NAME, PERMISSION);
			file.setLength(0);
			file.close();
		}
		catch(FileNotFoundException fnfe){
			System.out.println(fnfe.getMessage());
		}
		catch(IOException ioe){
			System.out.println(ioe.getMessage());
		}
	}

	public void clearDataFacts() {
		// TODO Auto-generated method stub
		try{
			RandomAccessFile file = new RandomAccessFile(FACTS_FILE_NAME, PERMISSION);
			file.setLength(0);
			file.close();
		}
		catch(FileNotFoundException fnfe){
			System.out.println(fnfe.getMessage());
		}
		catch(IOException ioe){
			System.out.println(ioe.getMessage());
		}
	}	
	
}
