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
import br.ufrj.ppgi.parser.DocumentParser;
import br.ufrj.ppgi.parser.SchemaParser;
import br.ufrj.ppgi.parser.XMLParser;

import javax.swing.DefaultListModel;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JOptionPane;
import javax.swing.JRadioButton;
import javax.swing.JScrollPane;
import javax.swing.JPanel;
import javax.swing.GroupLayout;
import javax.swing.ActionMap;
import javax.swing.ListSelectionModel;

public class XMLLoaderView extends JFrame{
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
    private JLabel	labelParserType;
    private JRadioButton	rbParserSAX;
    private JRadioButton	rbParserDOM;
    private JCheckBox		ckClearData;
    private JCheckBox		ckResetLastId;
	public String nameSet;
	
    public XMLLoaderView(Component component, String extension) {
        super();
        
        this.component = component;
        this.extension = extension;
                
        initComponents();
        processButton.setEnabled(false);
        rbParserSAX.setSelected(true);
        rbParserDOM.setSelected(false);
        ckClearData.setSelected(false);
        ckResetLastId.setSelected(false);
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
    	//SchemaParser schemaParser = new SchemaParser();
    	//schemaParser.executeParse(fileList, nameSet);
    	SchemaParser.getInstance().executeParse(fileList, nameSet);
    	
    	component.setEnabled(true);
    	listModel.clear();
    	fileList.clear();
    	
    	dispose();
    }
    
    @Action
    public void translateXML() {
    	//XMLParser xmlParser = new XMLParser();
    	XMLParser.getInstance().setClearData(isCheckClearDataSelected());
    	XMLParser.getInstance().setResetLastId(isCheckResetLastId());
    	
    	if ( isParserSAXSelected())
    		XMLParser.getInstance().executeParseSax(fileList);
    	else
    		XMLParser.getInstance().executeParse(fileList);
    	
    	JOptionPane.showMessageDialog(mainPanel, "Base de fatos gerada com sucesso.\n" 
    												+ "Tempo de execução: "
    												+ XMLParser.getInstance().getTotalTime() + " segundo(s)");

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
        
        labelParserType = new JLabel();
        rbParserSAX = new JRadioButton();
        rbParserDOM = new JRadioButton();
        ckClearData = new JCheckBox();
        ckResetLastId = new JCheckBox();
        
        labelParserType.setText("Parser:");
        rbParserSAX.setText("SAX");
        rbParserDOM.setText("DOM");
        ckClearData.setText("Limpar dados anteriores");
        ckResetLastId.setText("Resetar ultimo ID gerado");
        
        rbParserSAX.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                OnClickRBSAX(evt);
            }
        });
        
        rbParserDOM.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                OnClickRBDOM(evt);
            }
        });
        
        mainPanel.setName("mainPanel"); 
        setTitle("Base de fatos");
        resourceMap = Application.getInstance(XMLInference.class).getContext().getResourceMap(XMLLoaderView.class);
        ActionMap actionMap = Application.getInstance(XMLInference.class).getContext().getActionMap(XMLLoaderView.class, this);
        
        loadButton.setAction(actionMap.get("xmlLoader")); 
        loadButton.setToolTipText(resourceMap.getString("loadButton.toolTipText")); 
        loadButton.setText("Carregar documentos " + extension); 
        loadButton.setName("loadButton"); 
        
        processButton.setAction(actionMap.get("translateXML")); 
        processButton.setToolTipText(resourceMap.getString("processButton.toolTipText_1")); 
        processButton.setText(resourceMap.getString("processButton.text")); 
        processButton.setName("processButton"); 
       
        GroupLayout mainPanelLayout = new GroupLayout(mainPanel);
        mainPanel.setLayout(mainPanelLayout);
      
        mainPanelLayout.setAutoCreateContainerGaps(true);
      
        GroupLayout.SequentialGroup hGroup = mainPanelLayout.createSequentialGroup();
        hGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.LEADING)
        		.addComponent(loadButton, GroupLayout.Alignment.CENTER)
        		.addComponent(listPanel, GroupLayout.DEFAULT_SIZE, 150, GroupLayout.DEFAULT_SIZE)
        		.addGroup(mainPanelLayout.createSequentialGroup()
        				.addGap(30,30,30)
        				.addComponent(labelParserType)
        				.addGap(20,20,20)
        				.addComponent(rbParserSAX)
        				.addGap(20,20,20)
        				.addComponent(rbParserDOM))
        				.addComponent(ckClearData, GroupLayout.Alignment.CENTER)
        				.addComponent(ckResetLastId, GroupLayout.Alignment.CENTER)
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
        		.addComponent(labelParserType)
        		.addComponent(rbParserSAX)
        		.addComponent(rbParserDOM)
        		.addGap(40, 40, 40));
        
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.BASELINE)
        		.addComponent(ckClearData)
        		.addGap(20, 20, 20));
        
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.BASELINE)
        		.addComponent(ckResetLastId)
        		.addGap(40, 40, 40));

        
        vGroup.addGroup(mainPanelLayout.createParallelGroup(GroupLayout.Alignment.BASELINE)
        		.addComponent(processButton, GroupLayout.Alignment.CENTER));
        mainPanelLayout.setVerticalGroup(vGroup);

        mainPanel.setVisible(true);
        getContentPane().add(mainPanel);
        pack();
    }
    
    @Action
    private void OnClickRBSAX(java.awt.event.ActionEvent evt)
    {    
    	if ( !rbParserSAX.isSelected() )
    		rbParserSAX.setSelected(true);
    	rbParserDOM.setSelected(false);
    }
    
    @Action
    private void OnClickRBDOM(java.awt.event.ActionEvent evt)
    {    
    	if ( !rbParserDOM.isSelected() )
    		rbParserDOM.setSelected(true);
    	rbParserSAX.setSelected(false);
    }
    
    private Boolean isParserSAXSelected()
    {
    	return rbParserSAX.isSelected();
    }
    
        
    private Boolean isCheckClearDataSelected()
    {
    	return ckClearData.isSelected();
    }
    
    private Boolean isCheckResetLastId()
    {
    	return ckResetLastId.isSelected();
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

