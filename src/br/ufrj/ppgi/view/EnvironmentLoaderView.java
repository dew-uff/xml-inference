package br.ufrj.ppgi.view;

import java.awt.Component;
import java.awt.Dimension;
import java.io.IOException;
import java.util.HashMap;
import java.util.Set;

import org.jdesktop.application.Action;
import org.jdesktop.application.Application;

import br.ufrj.ppgi.io.FileManager;
import br.ufrj.ppgi.io.Serializer;
import br.ufrj.ppgi.main.XMLInference;

import javax.swing.DefaultListModel;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JList;
import javax.swing.JScrollPane;
import javax.swing.JPanel;
import javax.swing.GroupLayout;
import javax.swing.ActionMap;
import javax.swing.ListSelectionModel;

public class EnvironmentLoaderView extends JFrame{
	private static final long serialVersionUID = 1L;

	private Serializer serializer;
	private Component manualRulesButton;
	private Component xmlLoaderButton;
	private Component environmentLoaderButton;
    private JButton loadEnvironmentButton;
    private JPanel mainPanel;
    private JList lista;  
    private JPanel listPanel;  
    private JScrollPane scroll;  
    private DefaultListModel listModel;
    
    
    public EnvironmentLoaderView(Component component1, Component component2, Component component3) {
        super();
        
        serializer = new Serializer();
        this.manualRulesButton = component1;
        this.xmlLoaderButton = component2;
        this.environmentLoaderButton = component3;
        
        initComponents();

        loadEnvironmentButton.setEnabled(true);
    }
    
    @Action
    public void loadEnvironment() {
    	String name = (String) lista.getSelectedValue();
    	
    	try {
    		HashMap<String, String> rulesHashMap = serializer.read();
    		String rules = rulesHashMap.get(name);
    		FileManager fileManager = new FileManager();
        	fileManager.writeRules(rules + "\n");
        	
        	manualRulesButton.setEnabled(true);
        	xmlLoaderButton.setEnabled(true);
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			environmentLoaderButton.setEnabled(false);
		}
    	
    	dispose();
    }

    private void initComponents() {
        mainPanel = new JPanel();
        loadEnvironmentButton = new JButton();
        listModel = new DefaultListModel();  
        listPanel = new JPanel();        
        lista = new JList(listModel);
        lista.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        lista.setVisibleRowCount(-1);  
        scroll = new JScrollPane(lista);
        scroll.setPreferredSize(new Dimension(150, 200));
        listPanel.add(scroll);
    	
    	try {
    		HashMap<String, String> rulesHashMap = serializer.read();
			Set<String> keyNames = rulesHashMap.keySet();
	    	
	    	for(String name : keyNames){
	    		listModel.addElement(name);
	    	}
		} catch (IOException e) {
			e.printStackTrace();
			dispose();
		} finally{
			environmentLoaderButton.setEnabled(false);
		}
		
        mainPanel.setName("mainPanel"); 

        ActionMap actionMap = Application.getInstance(XMLInference.class).getContext().getActionMap(EnvironmentLoaderView.class, this);
        
        loadEnvironmentButton.setAction(actionMap.get("loadEnvironment")); 
        loadEnvironmentButton.setText("  OK  ");
        loadEnvironmentButton.setName("processButton"); 
       
        GroupLayout mainPanelLayout = new GroupLayout(mainPanel);
        mainPanel.setLayout(mainPanelLayout);
      
        mainPanelLayout.setAutoCreateContainerGaps(true);

        GroupLayout.SequentialGroup hGroup = mainPanelLayout.createSequentialGroup();      
        hGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.CENTER)
        		.addComponent(listPanel, GroupLayout.DEFAULT_SIZE, 150, GroupLayout.DEFAULT_SIZE)
        		.addComponent(loadEnvironmentButton, GroupLayout.Alignment.CENTER));
        mainPanelLayout.setHorizontalGroup(hGroup);
        
        GroupLayout.SequentialGroup vGroup = mainPanelLayout.createSequentialGroup();
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.BASELINE)
        		.addGap(50, 50, 50));
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.BASELINE)
        		.addComponent(listPanel, GroupLayout.DEFAULT_SIZE, 150, GroupLayout.DEFAULT_SIZE));
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.BASELINE)
        		.addGap(20, 20, 20));
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.BASELINE)
        		.addComponent(loadEnvironmentButton, GroupLayout.Alignment.CENTER));
        mainPanelLayout.setVerticalGroup(vGroup);

        mainPanel.setVisible(true);
        getContentPane().add(mainPanel);
        pack();
    }
}
