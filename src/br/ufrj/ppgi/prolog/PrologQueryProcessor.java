package br.ufrj.ppgi.prolog;

import alice.tuprolog.Prolog;
import alice.tuprolog.SolveInfo;
import alice.tuprolog.Theory;
import alice.tuprolog.event.OutputEvent;
import alice.tuprolog.event.OutputListener;
import br.ufrj.ppgi.io.FileManager;
import br.ufrj.ppgi.parser.PrologOutputParser;
import jpl.Atom;
import jpl.Compound;
import jpl.Query;
import jpl.Term;
import jpl.Variable;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileReader;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.nio.file.Files;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;

import javax.swing.JOptionPane;


class LoggedPrintStream extends PrintStream {

    final StringBuilder buf;
    final PrintStream underlying;

    LoggedPrintStream(StringBuilder sb, OutputStream os, PrintStream ul) {
        super(os);
        this.buf = sb;
        this.underlying = ul;
    }

    public static LoggedPrintStream create(PrintStream toLog) {
        try {
            final StringBuilder sb = new StringBuilder();
            Field f = FilterOutputStream.class.getDeclaredField("out");
            f.setAccessible(true);
            OutputStream psout = (OutputStream) f.get(toLog);
            return new LoggedPrintStream(sb, new FilterOutputStream(psout) {
                public void write(int b) throws IOException {
                    super.write(b);
                    sb.append((char) b);
                }
            }, toLog);
        } catch (NoSuchFieldException shouldNotHappen) {
        } catch (IllegalArgumentException shouldNotHappen) {
        } catch (IllegalAccessException shouldNotHappen) {
        }
        return null;
    }
}

public class PrologQueryProcessor {
	
	private String resultString;
	private String outputString;
	private PrologOutputParser parser;
	public boolean bTuProlog;
	public PrologQueryProcessor()
	{
		resultString="";
		outputString = "";
		bTuProlog = false;
	}
	public PrologQueryProcessor(String query,PrologOutputParser.ParseType engine)
	{
		FileManager fileManager = new FileManager();
		outputString = "";
		resultString = "";
		try 
		{
			parser = new PrologOutputParser(engine);
			
			if(PrologOutputParser.ParseType.SWI == engine)
			{
				if(System.getProperties().getProperty("InstalationPath")==null || System.getProperties().getProperty("InstalationPath").isEmpty())
				{
					JOptionPane.showMessageDialog(null, "Configure o path de instalaçao do SWI Prolog");
					return;
				}
				
				 String OS = System.getProperty("os.name").toLowerCase();
				 String cmd = "";
				 String extension = "";
				 String exec = "";
				 String fileExtension = "";
				 String file = "query";
				 String cmdFinish = "";
				 String strBenchMark = "";
				 boolean bBechMark = false;
				 if(query.split("#").length>0)
				 {
					 strBenchMark = "true";
					 bBechMark = true;
				 }
				 
				 if(OS.indexOf("win") >= 0)
				 {
					 cmd = "cmd /c start ";
					 extension = ".exe";
					 fileExtension= ".bat";
					 cmdFinish = " exit";
					 
					 PrintWriter writer = new PrintWriter(file+fileExtension, "UTF-8");
					 writer.append("SWIProlog"+extension);
					 writer.append(" BaseSWI.pl ");
					 writer.append("\"");
					 writer.append(System.getProperties().getProperty("InstalationPath"));
					 writer.append("\"");
					 writer.append(" \"");
					 writer.append("bin\\swipl.dll");
					 writer.append("\"");
					 writer.append(" queries.txt ");
					 writer.append(strBenchMark); 
					 if(!bBechMark)
					 {
						 writer.append(" | ");
						 writer.append("OutputListen"+extension);
					 }
					 else
					 {
						 writer.append(" > NUL");
					 }
					 writer.append(" exit");
					 writer.close();
				 }
				 else
				 {
					 exec = "./ ";
					 fileExtension= ".sh";
					 cmd = "sh ";
					 
					 PrintWriter writer = new PrintWriter(file+fileExtension, "UTF-8");
					 writer.append("./SWIProlog"+extension);
					 writer.append(" BaseSWI.pl ");
					 writer.append("\"");
					 writer.append(System.getProperties().getProperty("InstalationPath"));
					 writer.append("\"");
					 //writer.append(" \"");
					 //writer.append("bin\\swipl.dll");
					 //writer.append("\"");
					 writer.append(" queries.txt ");
					 writer.append(strBenchMark); 
					 if(!bBechMark)
					 {
						 writer.append(" | ");
						 writer.append("./OutputListen"+extension);
					 }
					 else
					 {
						 writer.append(" > /dev/null");
					 }
					 //writer.append(" exit");
					 writer.close();
					 
					 Process p = Runtime.getRuntime().exec("chmod 777 "+file+fileExtension);
					 p.waitFor();
				 }
				 
				 //Properties props = System.getProperties();
				 //props.setProperty("gate.home", "http://gate.ac.uk/wiki/code-repository");
				 
				 String [] queryArray  = query.split("#");
				 PrintWriter writer = new PrintWriter("queries.txt", "UTF-8");
				 for(int i=0; i< queryArray.length;i++)
				 {
					 writer.println(queryArray[i]);
				 }
				 writer.close();
				 
				 
				 
				 
				 
				 /*cmd += exec+"SWIProlog"+extension;
				 cmd +=  " ";
				 //BaseName
				 cmd +="BaseSWI.pl";
				 cmd +=  " ";
				 //InstalationName
				 cmd+= System.getProperties().getProperty("InstalationPath");
				 cmd +=  " ";
				 //LibrayName
				 cmd +="bin\\swipl.dll\\";
				 cmd +=  " ";
				 //QueriesFile
				 cmd +="queries.txt";
				 cmd +=  " | ";
				 cmd +=  exec+"OutputListen"+extension;*/
				 
				//cmd /c SWIProlog.exe BaseSWI.pl "C:\\Program Files\\swipl" "bin\\swipl.dll" queries.txt | OutputListen.exe
				Process p = Runtime.getRuntime().exec(cmd+file+fileExtension+cmdFinish);//"cmd /c start teste.bat"
				//Process p = new ProcessBuilder("SWIProlog.exe","BaseSWI.pl","\""+System.getProperties().getProperty("InstalationPath")+"\"",
						//"\"bin\\swipl.dll\"","queries.txt"," | OutputListen.exe").start();
				int exitVal = p.waitFor();
				
				if(queryArray.length ==1 && exitVal==0)
				{
					BufferedReader br = new BufferedReader(new FileReader("QueryResult_1.xml"));
					String line = null;
					 while((line =br.readLine())!=null)
					 {
					    outputString+=line+"\n";
				     }
				
				}
				
			}
			/*else if(PrologOutputParser.ParseType.SWI == engine)
			{
				//BufferedReader br = new BufferedReader(new OutputStream(System.in));
				String line = null;
				String XMl = "";
				Query qFactBase = new Query("consult", new Term[]{new Atom( fileManager.SWIFileName())});
				//qFactBase.query();
				qFactBase.hasSolution();
				Query q1 = new Query(query);
				//q1.query();
				//q1.open();
				//if(q1.hasSolution())
				//LoggedPrintStream lpsOut = LoggedPrintStream.create(System.out);
				//System.setOut(lpsOut);
				while ( q1.hasMoreSolutions() )
				{
					
					//try {
						//if((line = br.readLine()) != null)
						//{
							//XMl += line;
						//}
					//} catch (IOException e) {
						// TODO Auto-generated catch block
						//e.printStackTrace();
					//}
					
					//
					//q1.allSolutions();
				    //while (q1.hasSolution())
					{
						
						//Hashtable hash = (Hashtable) q1.nextSolution();
						//q1.hasSolution();
						//System.out.println( hash);
					}
					/*ByteArrayOutputStream baos = new ByteArrayOutputStream();
				    PrintStream ps = new PrintStream(baos);
				    // IMPORTANT: Save the old System.out!
				    PrintStream old = System.out;
				    // Tell Java to use your special stream
				    System.setOut(ps);
				    
				   
					
					q1.open();
					Hashtable hash = q1.getSolution();
					//System.out.println( hash);
					//resultString = parser.parseOutputToXML(hash.toString());
					//outputString = q1.debugString();
					while(q1.hasMoreSolutions()) 
					{
						hash  = q1.nextSolution();
						//System.out.println( hash);
						//resultString+=parser.parseOutputToXML(hash.toString());
						//outputString = outputString + "\n" + hash.toString();
					}*/
					
					 // Put things back
				    //System.out.flush();
				    //System.setOut(old);
				    
				    //outputString = baos.toString();
				/*}
				
				System.out.println("");
			}*/
			else
			{
				//parser = new PrologOutputParser(PrologOutputParser.ParseType.TUPROLOG);
				
				String rules = fileManager.readRules();
				String facts = fileManager.readFacts();
				String printRules = fileManager.readPrintRules();
				//String theory =facts + rules;
				String theory =facts+printRules;
				Prolog tuPrologEngine = new Prolog();
				
				tuPrologEngine.addOutputListener(new OutputListener() {
					
					@Override
					public void onOutput(OutputEvent arg0) {
						// TODO Auto-generated method stub
						//resultString += arg0.getMsg();
						outputString = outputString + arg0.getMsg().replace("\\n", "\n").replace("'", "");
					}
				});
	
				
				//String teste = fileManager.readTestBase();
				
				/*String t1 = "consult('BaseCompleta.pl')";
				Query q1 = new Query(t1);
				
				 if(q1.hasSolution())
				 {
					 Query q2 = new Query(query);
					 if(q2.hasSolution())
					 {
						 int c= 1;
					 }
				 }*/
	
				
					tuPrologEngine.clearTheory();
					tuPrologEngine.setTheory(new Theory(theory));
					SolveInfo result = tuPrologEngine.solve(query);
					
					if(result.isSuccess())
					{
						//resultString = parser.parseOutputToXML(result.toString());
						resultString+=result.toString();
						//outputString = result.toString();
					 //##resultString = result.toString();
					}
					
					while(tuPrologEngine.hasOpenAlternatives()) 
					{
						result = tuPrologEngine.solveNext();
						//resultString+=parser.parseOutputToXML(result.toString());
						resultString+=result.toString();
						//resultString = resultString + "\n" + result.toString();
						//outputString = outputString + "\n" + result.toString();
					}
					
					
					tuPrologEngine.clearTheory();
					tuPrologEngine.removeAllExceptionListeners();
					tuPrologEngine.removeAllOutputListeners();
					tuPrologEngine.removeAllSpyListeners();
					tuPrologEngine.removeAllWarningListeners();
			}
			
			resultString +=parser.endOutputParser();
		} 
		catch (Exception e) {
			e.printStackTrace();
			resultString = "CONSULTA INVÁLIDA!!!";
		}
	}
	
	public String getResult(){
		return this.resultString;
	}
	
	public String getOutputResult()
	{
		return this.outputString;
	}
	
}
