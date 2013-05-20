package br.ufrj.ppgi.view;

import java.awt.Component;
import java.awt.Dimension;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.io.File;
import java.util.HashMap;

import org.jdesktop.application.Action;
import org.jdesktop.application.Application;
import org.jdesktop.application.ResourceMap;

import br.ufrj.ppgi.io.FileManager;
import br.ufrj.ppgi.main.XMLInference;
import br.ufrj.ppgi.parser.SchemaParser;
import javax.swing.DefaultListModel;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JList;
import javax.swing.JScrollPane;
import javax.swing.JPanel;
import javax.swing.GroupLayout;
import javax.swing.ActionMap;
import javax.swing.ListSelectionModel;

public class XMLSchemaLoaderView extends JFrame{
	private static final long serialVersionUID = 1L;

	private ResourceMap resourceMap;
	private String extension;
	private HashMap<String, File> fileList;
	private Component component;
	private JButton loadButton;
    private JButton processButton;
    private JPanel mainPanel;
    private JList<String> lista;  
    private JPanel listPanel;  
    private JScrollPane scroll;  
    private DefaultListModel<String> listModel;
    private FileManager fileManager;
    public String nameSet;
	
    public XMLSchemaLoaderView(Component component, String extension) {
        super();
        
        this.component = component;
        this.extension = extension;
        
        initComponents();
        processButton.setEnabled(false);        
    }

    @Action
    public void xmlLoader() {
    	String fileName = fileManager.loadFile(extension);
    	
    	fileList = fileManager.getFileList();
    	
    	if(fileName != null){
    		listModel.addElement(fileName);
    		processButton.setEnabled(true);
        	processButton.setToolTipText(resourceMap.getString("processButton.toolTipText_2")); 
    	}
    }
    
    @Action
    public void translateSchema() {
    	SchemaParser schemaParser = new SchemaParser();
    	schemaParser.executeParse(fileList, nameSet);
    	
    	component.setEnabled(true);
    	listModel.clear();
    	fileList.clear();
    	
    	dispose();
    }
    
    private void initComponents() {
    	fileManager = new FileManager();   	
        mainPanel = new JPanel();
        loadButton = new JButton();
        processButton = new JButton();
        listModel = new DefaultListModel<String>();  
        listPanel = new JPanel();        
        lista = new JList<String>(listModel);
        lista.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        lista.setVisibleRowCount(-1);  
        scroll = new JScrollPane(lista);
        scroll.setPreferredSize(new Dimension(150, 200));
        listPanel.add(scroll);
        lista.addMouseListener(mouseListener);
        
               
        mainPanel.setName("mainPanel"); 
        setTitle("Base de regras");
        resourceMap = Application.getInstance(XMLInference.class).getContext().getResourceMap(XMLSchemaLoaderView.class);
        ActionMap actionMap = Application.getInstance(XMLInference.class).getContext().getActionMap(XMLSchemaLoaderView.class, this);
        
        loadButton.setAction(actionMap.get("xmlLoader")); 
        loadButton.setToolTipText(resourceMap.getString("loadButton.toolTipText")); 
        loadButton.setText("Carregar documentos " + extension); 
        loadButton.setName("loadButton1"); 
        
        processButton.setAction(actionMap.get("translateSchema")); 
        processButton.setToolTipText(resourceMap.getString("processButton.toolTipText")); 
        processButton.setText(resourceMap.getString("processButton.text")); 
        processButton.setName("processButton1"); 
       
        GroupLayout mainPanelLayout = new GroupLayout(mainPanel);
        mainPanel.setLayout(mainPanelLayout);
      
        mainPanelLayout.setAutoCreateContainerGaps(true);
      
        GroupLayout.SequentialGroup hGroup = mainPanelLayout.createSequentialGroup();
        hGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.CENTER)
        		.addComponent(loadButton, GroupLayout.Alignment.CENTER)
        		.addComponent(listPanel, GroupLayout.DEFAULT_SIZE, 150, GroupLayout.DEFAULT_SIZE)
        		.addComponent(processButton, GroupLayout.Alignment.CENTER));
        mainPanelLayout.setHorizontalGroup(hGroup);
        
        GroupLayout.SequentialGroup vGroup = mainPanelLayout.createSequentialGroup();
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.BASELINE)
        		.addGap(50, 50, 50)
        		.addComponent(loadButton));
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.BASELINE)
        		.addComponent(listPanel, GroupLayout.DEFAULT_SIZE, 150, GroupLayout.DEFAULT_SIZE));
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.BASELINE)
        		.addGap(20, 20, 20));
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.BASELINE)
        		.addComponent(processButton, GroupLayout.Alignment.CENTER));
        mainPanelLayout.setVerticalGroup(vGroup);

        mainPanel.setVisible(true);
        getContentPane().add(mainPanel);
        pack();
    }
    
    
    MouseListener mouseListener = new MouseAdapter() {
        public void mouseClicked(MouseEvent e) {
            if (e.getClickCount() == 2) {
            	String itemLista = lista.getSelectedValue();
            	listModel.removeElement(itemLista);
            	fileList.remove(itemLista);
             }
        }
    };
}

