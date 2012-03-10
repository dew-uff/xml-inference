package br.ufrj.ppgi.io;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;

public class Serializer {
	private static final String RULESET_OBJ = "ruleSet.obj";
	
	public void write(HashMap<String, String> hashMap) throws IOException {
		File file = new File(RULESET_OBJ);
		FileOutputStream fos = new FileOutputStream(file);
		ObjectOutputStream oos = new ObjectOutputStream(fos);
		oos.writeObject(hashMap);
		oos.close();
		fos.close();
	}
	
	@SuppressWarnings("unchecked")
	public HashMap<String, String> read() throws IOException {
		File file = new File(RULESET_OBJ);
		InputStream is = new FileInputStream(file);
		ObjectInputStream ois = new ObjectInputStream(is);
		try {
			return (HashMap<String, String>) ois.readObject();
		} catch (ClassNotFoundException e){
			throw new LinkageError(e.getMessage());
		} finally {
			ois.close();
			is.close();
		}
	}
}
