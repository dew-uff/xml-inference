package br.ufrj.ppgi.view;

import java.awt.Component;
import java.io.IOException;
import java.util.HashMap;

import org.jdesktop.application.Action;
import org.jdesktop.application.Application;
import org.jdesktop.application.ResourceMap;

import br.ufrj.ppgi.io.FileManager;
import br.ufrj.ppgi.io.Serializer;
import br.ufrj.ppgi.main.XMLInference;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JPanel;
import javax.swing.GroupLayout;
import javax.swing.ActionMap;
import javax.swing.JTextArea;

public class ManualRulesView extends JFrame{
	private static final long serialVersionUID = 1L;
	private static final String LABEL = "Escolha um nome para identificar o conjunto de esquemas carregados.";
	private static final String TITLELABEL = "Nomeando o conjunto escolhido:";
	
	private ResourceMap resourceMap;
	private Component component;
	private JButton okButton;
    private JPanel mainPanel;
    private JTextArea newRulesTextArea;
    private JTextArea rulesTextArea;
    private JScrollPane newRulesTextAreaScroll;
    private JScrollPane rulesTextAreaScroll;
    private FileManager fileManager;
	
    public ManualRulesView(Component c) {
        super();
        
        component = c;
        fileManager = new FileManager();
        
        initComponents();
    }
    
    @Action
    public void insertManualRules() {
    	fileManager.writeRules(newRulesTextArea.getText() + "\n");
    	
    	String nameSet = JOptionPane.showInputDialog(null, LABEL, TITLELABEL, JOptionPane.QUESTION_MESSAGE);      	
      	if(nameSet != null){
      		Serializer serializer = new Serializer();        	
        	HashMap<String, String> rulesHashMap = null;
        	String text = fileManager.readRules();
        	
        	try {
    			rulesHashMap = serializer.read();
    		} catch (IOException e) {
    			rulesHashMap = new HashMap<String, String>();
    		} finally{
    			rulesHashMap.put(nameSet, text);
    			try{
    				serializer.write(rulesHashMap);
    			} catch (IOException e) {
    				e.printStackTrace();
    			}
    		}
    		
    		component.setEnabled(true);
    	
      		dispose();
      	}
    }

    private void initComponents() {
        mainPanel = new JPanel();
        okButton = new JButton();
        newRulesTextArea = new JTextArea(20, 20);
        rulesTextArea = new JTextArea(20, 20);
        newRulesTextAreaScroll = new JScrollPane(newRulesTextArea, JScrollPane.VERTICAL_SCROLLBAR_ALWAYS, JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
        rulesTextAreaScroll = new JScrollPane(rulesTextArea, JScrollPane.VERTICAL_SCROLLBAR_ALWAYS, JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
        
        String text = fileManager.readRules();
        rulesTextArea.setText(text);
        rulesTextArea.setEditable(false);

        resourceMap = Application.getInstance(XMLInference.class).getContext().getResourceMap(ManualRulesView.class);
        ActionMap actionMap = Application.getInstance(XMLInference.class).getContext().getActionMap(ManualRulesView.class, this);
        
        okButton.setAction(actionMap.get("insertManualRules")); 
        okButton.setToolTipText(resourceMap.getString("okButton.toolTipText")); 
        okButton.setName("okButton"); 
        okButton.setText("  OK  ");
       
        GroupLayout mainPanelLayout = new GroupLayout(mainPanel);
        mainPanel.setLayout(mainPanelLayout);
      
        mainPanelLayout.setAutoCreateContainerGaps(true);
      
        GroupLayout.SequentialGroup hGroup = mainPanelLayout.createSequentialGroup();
        hGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.CENTER)
        		.addComponent(newRulesTextAreaScroll, GroupLayout.Alignment.CENTER)
        		.addComponent(rulesTextAreaScroll, GroupLayout.Alignment.CENTER)
        		.addComponent(okButton, GroupLayout.Alignment.CENTER));
        mainPanelLayout.setHorizontalGroup(hGroup);
        
        GroupLayout.SequentialGroup vGroup = mainPanelLayout.createSequentialGroup();
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.CENTER)
        		.addComponent(newRulesTextAreaScroll));
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.CENTER)
        		.addComponent(rulesTextAreaScroll));
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.CENTER)
        		.addComponent(okButton));
        mainPanelLayout.setVerticalGroup(vGroup);

        mainPanel.setVisible(true);
        getContentPane().add(mainPanel);
        pack();
    }
}
