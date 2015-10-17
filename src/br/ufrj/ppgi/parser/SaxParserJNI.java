package br.ufrj.ppgi.parser;

public class SaxParserJNI {
	
	static {
	      System.loadLibrary("SaxParser"); // Load native library at runtime
	                                   // hello.dll (Windows) or libhello.so (Unixes)
	   }
	
	public native boolean createBaseFacts(String filePath);
}
