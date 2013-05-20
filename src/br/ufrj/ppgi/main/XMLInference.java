package br.ufrj.ppgi.main;

import java.awt.Window;

import org.jdesktop.application.Application;
import org.jdesktop.application.SingleFrameApplication;

import br.ufrj.ppgi.view.XMLInferenceView;

public class XMLInference extends SingleFrameApplication {
    @Override protected void startup() {
    	show(new XMLInferenceView(this));
    }

    @Override protected void configureWindow(Window root) {
    	root.setLocation(0, 0);
    }

    public static XMLInference getApplication() {
        return Application.getInstance(XMLInference.class);
    }

    public static void main(String[] args) {
        launch(XMLInference.class, args);
    }
    
    @Override protected void shutdown(){
    	/*FileManager fileManager = new FileManager();
    	fileManager.clearFiles();*/
    }
}
