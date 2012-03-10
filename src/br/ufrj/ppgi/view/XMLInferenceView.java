package br.ufrj.ppgi.view;

import java.awt.Dimension;
import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;
import java.io.IOException;

import org.jdesktop.application.Action;
import org.jdesktop.application.Application;
import org.jdesktop.application.ResourceMap;
import org.jdesktop.application.SingleFrameApplication;
import org.jdesktop.application.FrameView;

import br.ufrj.ppgi.io.Serializer;
import br.ufrj.ppgi.main.XMLInference;
import br.ufrj.ppgi.prolog.PrologQueryProcessor;
import br.ufrj.ppgi.view.EnvironmentLoaderView;

import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JButton;
import javax.swing.JMenuBar;
import javax.swing.JPanel;
import javax.swing.GroupLayout;
import javax.swing.JMenu;
import javax.swing.JMenuItem;
import javax.swing.ActionMap;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.JTextArea;
import javax.swing.JSeparator;
import javax.swing.KeyStroke;
import javax.swing.SwingConstants;

public class XMLInferenceView extends FrameView {
	private static final String SCHEMA = "XSD";
	private static final String XML = "XML";
	private static final String ACTIONSCHEMA = "translateSchema";
	private static final String ACTIONXML = "translateXML";
	
    private JButton schemaLoaderButton;
    private JButton manualRulesButton;
    private JButton xmlLoaderButton;
    private JButton environmentLoaderButton;
    private JButton queryButton;
    private JSeparator jSeparator1;
    private JTextField queryTextField;
    private JTextArea resultTextArea;
    private JPanel mainPanel;
    private JMenuBar menuBar;  
    private JDialog aboutBox;
    private JScrollPane textAreaScroll;
    private JFrame xmlLoaderView;
    private JFrame xmlSchemaLoaderView;
    private JFrame manualRulesView;
    private JFrame environmentLoaderView;
	
    public XMLInferenceView(SingleFrameApplication app) {
        super(app);
        
        initComponents();
    }

    @Action
    public void showAboutBox() {
        if (aboutBox == null) {
        	aboutBox = new AboutBox();
            aboutBox.setLocationRelativeTo(null);
        }
        aboutBox.setVisible(true);
    }
    
	@Action
    public void loadAutomaticRules() {
		if(xmlSchemaLoaderView == null){
			xmlSchemaLoaderView = new XMLLoaderView(manualRulesButton, SCHEMA, ACTIONSCHEMA);
			xmlSchemaLoaderView.setSize(new Dimension(250, 350));
			xmlSchemaLoaderView.setResizable(false);
			xmlSchemaLoaderView.setLocationRelativeTo(null);
		}
		xmlSchemaLoaderView.setVisible(true);
		environmentLoaderButton.setEnabled(false);
    }
	
	@Action
    public void insertManualRules() {
		manualRulesView = new ManualRulesView(xmlLoaderButton);
		manualRulesView.setSize(new Dimension(800, 400));
		manualRulesView.setResizable(false);
		manualRulesView.setLocationRelativeTo(null);
    	manualRulesView.setVisible(true);
    }
	
	@Action
    public void loadXMLDocument() {
		if(xmlLoaderView == null){
			xmlLoaderView = new XMLLoaderView(queryButton, XML, ACTIONXML);
			xmlLoaderView.setSize(new Dimension(250, 350));
			xmlLoaderView.setResizable(false);
			xmlLoaderView.setLocationRelativeTo(null);
		}
		xmlLoaderView.setVisible(true);
    }
	
	@Action
    public void environmentLoader() {
		environmentLoaderView = new EnvironmentLoaderView(manualRulesButton, xmlLoaderButton, environmentLoaderButton);
		environmentLoaderView.setSize(new Dimension(250, 350));
		environmentLoaderView.setResizable(false);
		environmentLoaderView.setLocationRelativeTo(null);
		environmentLoaderView.setVisible(true);
    }
	
	@Action
    public void query() {
		String query = queryTextField.getText();
		long startTime = System.nanoTime();
		PrologQueryProcessor prologQueryProcessor = new PrologQueryProcessor(query); 
		resultTextArea.setText(prologQueryProcessor.getResult());
		long stopTime = System.nanoTime();
		long estimatedTime = stopTime - startTime;
		//System.out.println(estimatedTime);
		System.out.println(estimatedTime*Math.pow(10, -9));
    }

    private void initComponents() {
    	ResourceMap resourceMap;
    	ActionMap actionMap;
    	
        mainPanel = new JPanel();
        schemaLoaderButton = new JButton();
        manualRulesButton = new JButton();
        xmlLoaderButton = new JButton();
        environmentLoaderButton = new JButton();
        queryButton = new JButton();
        queryTextField = new JTextField();
        resultTextArea = new JTextArea();
        menuBar = new JMenuBar();
        JMenu fileMenu = new JMenu();
        JMenuItem exitMenuItem = new JMenuItem();
        JMenu helpMenu = new JMenu();
        JMenuItem aboutMenuItem = new JMenuItem();
        
        textAreaScroll = new JScrollPane(resultTextArea, JScrollPane.VERTICAL_SCROLLBAR_ALWAYS, JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
        resultTextArea.setEditable(false);
        
        jSeparator1 = new JSeparator(SwingConstants.HORIZONTAL); 
        
        resourceMap = Application.getInstance(XMLInference.class).getContext().getResourceMap(XMLInferenceView.class);
        actionMap = Application.getInstance(XMLInference.class).getContext().getActionMap(XMLInferenceView.class, this);
        
        schemaLoaderButton.setAction(actionMap.get("loadAutomaticRules")); 
        schemaLoaderButton.setToolTipText(resourceMap.getString("schemaLoaderButton.toolTipText"));
        schemaLoaderButton.setName(resourceMap.getString("schemaLoaderButton.name")); 
        schemaLoaderButton.setText(" Regras Automáticas ");
        
        manualRulesButton.setAction(actionMap.get("insertManualRules")); 
        manualRulesButton.setToolTipText(resourceMap.getString("manualRulesButton.toolTipText")); 
        manualRulesButton.setName(resourceMap.getString("manualRulesButton.name"));
        manualRulesButton.setText("  Regras Manuais  ");

        xmlLoaderButton.setAction(actionMap.get("loadXMLDocument")); 
        xmlLoaderButton.setToolTipText(resourceMap.getString("xmlLoaderButton.toolTipText")); 
        xmlLoaderButton.setName(resourceMap.getString("xmlLoaderButton.name"));
        xmlLoaderButton.setText("  Documentos XML  ");
        
        environmentLoaderButton.setAction(actionMap.get("environmentLoader"));
        environmentLoaderButton.setToolTipText(resourceMap.getString("environmentLoaderButton.toolTipText")); 
        environmentLoaderButton.setName(resourceMap.getString("environmentLoaderButton.name"));
        environmentLoaderButton.setText("  Carregar Ambiente  ");
        
        queryButton.setAction(actionMap.get("query")); 
        queryButton.setToolTipText(resourceMap.getString("queryButton.toolTipText"));
        queryButton.setName(resourceMap.getString("queryButton.name")); 
        queryButton.setText("Consultar");
        
        GroupLayout mainPanelLayout = new GroupLayout(mainPanel);
        mainPanel.setLayout(mainPanelLayout);
        mainPanelLayout.setAutoCreateContainerGaps(true);
      
        GroupLayout.SequentialGroup hGroup = mainPanelLayout.createSequentialGroup();
        hGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.CENTER)
        		.addComponent(schemaLoaderButton, GroupLayout.Alignment.LEADING)
        		.addComponent(manualRulesButton, GroupLayout.Alignment.CENTER)		
        		.addComponent(xmlLoaderButton, GroupLayout.Alignment.TRAILING)
        		.addComponent(environmentLoaderButton, GroupLayout.Alignment.CENTER)
        		.addComponent(jSeparator1, GroupLayout.PREFERRED_SIZE, 500, GroupLayout.PREFERRED_SIZE)
        		.addComponent(queryTextField, GroupLayout.Alignment.LEADING, GroupLayout.PREFERRED_SIZE, 420, GroupLayout.PREFERRED_SIZE)
        		.addComponent(queryButton, GroupLayout.Alignment.TRAILING)
        		.addComponent(textAreaScroll, GroupLayout.DEFAULT_SIZE, 500, GroupLayout.DEFAULT_SIZE));
        mainPanelLayout.setHorizontalGroup(hGroup);
        
        GroupLayout.SequentialGroup vGroup = mainPanelLayout.createSequentialGroup();
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.CENTER)
        		.addComponent(schemaLoaderButton)
        		.addComponent(manualRulesButton)
        		.addComponent(xmlLoaderButton));
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.CENTER)
        		.addGap(20));
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.CENTER)
        		.addComponent(environmentLoaderButton));
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.CENTER)
        		.addGap(20));
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.CENTER)
        		.addComponent(jSeparator1));
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.CENTER)
        		.addComponent(queryTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        		.addComponent(queryButton, GroupLayout.Alignment.CENTER));
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.CENTER)
        		.addGap(20));
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.CENTER)
        		.addComponent(textAreaScroll, javax.swing.GroupLayout.DEFAULT_SIZE, 300, javax.swing.GroupLayout.DEFAULT_SIZE));		
        mainPanelLayout.setVerticalGroup(vGroup);    

        fileMenu.setText(resourceMap.getString("fileMenu.text")); 
        exitMenuItem.setAction(actionMap.get("quit")); 
        fileMenu.add(exitMenuItem);
        menuBar.add(fileMenu);

        helpMenu.setText(resourceMap.getString("helpMenu.text")); 
        aboutMenuItem.setAction(actionMap.get("showAboutBox")); 
        aboutMenuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_H, InputEvent.CTRL_MASK));
        helpMenu.add(aboutMenuItem);
        menuBar.add(helpMenu);

        setComponent(mainPanel);
        setMenuBar(menuBar);

        getFrame().setResizable(false);
        
        //manualRulesButton.setEnabled(false);
        //xmlLoaderButton.setEnabled(false);
        queryButton.setEnabled(false);
        
        Serializer serializer = new Serializer();
        
        try {
			serializer.read();
		} catch (IOException e) {
			environmentLoaderButton.setEnabled(false);
		}
    }
}
