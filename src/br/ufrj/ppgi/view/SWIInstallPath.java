package br.ufrj.ppgi.view;

import java.awt.Font;

import org.jdesktop.application.Action;
import org.jdesktop.application.Application;
import org.jdesktop.application.ResourceMap;

import br.ufrj.ppgi.main.XMLInference;

import javax.swing.ActionMap;
import javax.swing.GroupLayout;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JButton;
import javax.swing.LayoutStyle;
import javax.swing.SwingConstants;
import javax.swing.WindowConstants;
import javax.swing.GroupLayout.Alignment;
import javax.swing.LayoutStyle.ComponentPlacement;
import javax.swing.JTextField;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class SWIInstallPath extends JDialog {

	private static final long serialVersionUID = 2L;
	private JButton closeButton;
	private JTextField textField;

	public SWIInstallPath() {
        super();
        initComponents();
        getRootPane().setDefaultButton(closeButton);
        
        String path = System.getProperties().getProperty("InstalationPath");
        if(path==null)
        	path = "";
        
        if(path.isEmpty())
        {
        	//if(System.getProperties().getProperty("sun.arch.data.model").compareToIgnoreCase("64")==0)
        	path = "C:\\Program Files\\swipl";
        	BufferedReader br;
        	try 
    		{
    			 br = new BufferedReader(new FileReader("Configurations.txt"));
    		     String line = null;
    			 while((line =br.readLine())!=null)
    			 {
    			    if(line.contains("SWIPath="))
    			    {
    			         path = line.replace("SWIPath=", "");
    			    }
    			 }
    		} 
    		catch (FileNotFoundException e)
    		{
    				e.printStackTrace();
    		}
    		catch (IOException e)
    		{
    				e.printStackTrace();
    		}
        	
        	
        	System.getProperties().setProperty("InstalationPath", path);
        	textField.setText(path);
        }
    }

    /*@Action public void closeAboutBox() {
        
    	System.getProperties().setProperty("InstalationPath", textField.getText());
    	
    	dispose();
    }*/

    private void initComponents() {
        closeButton = new JButton();
        closeButton.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent arg0) {
        		System.getProperties().setProperty("InstalationPath", textField.getText());
            	
        		
        		
            	dispose();
        	}
        });
        
        JLabel versionLabel = new JLabel();

        setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        ResourceMap resourceMap = Application.getInstance(XMLInference.class).getContext().getResourceMap(AboutBox.class);
        setTitle("Path SWI Prolog "); 
        setModal(true);
        setName("aboutBox"); 
        setResizable(false);

        /*ActionMap actionMap = Application.getInstance(XMLInference.class).getContext().getActionMap(AboutBox.class, this);
        closeButton.setAction(actionMap.get("closeAboutBox"));*/ 
        closeButton.setText("OK"); 
        closeButton.setName("OK");

        versionLabel.setFont(versionLabel.getFont().deriveFont(versionLabel.getFont().getStyle() | Font.BOLD));
        versionLabel.setText("Path de Insta\u00E7\u00E3o do SWI Prolog:"); 
        versionLabel.setName("versionLabel");
        
        textField = new JTextField();
        textField.setColumns(10);

        
        GroupLayout layout = new GroupLayout(getContentPane());
        layout.setHorizontalGroup(
        	layout.createParallelGroup(Alignment.LEADING)
        		.addGroup(layout.createSequentialGroup()
        			.addGroup(layout.createParallelGroup(Alignment.LEADING)
        				.addGroup(layout.createSequentialGroup()
        					.addGap(20)
        					.addComponent(versionLabel)
        					.addPreferredGap(ComponentPlacement.UNRELATED)
        					.addComponent(textField, GroupLayout.PREFERRED_SIZE, 391, GroupLayout.PREFERRED_SIZE))
        				.addGroup(layout.createSequentialGroup()
        					.addGap(312)
        					.addComponent(closeButton)))
        			.addContainerGap(276, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
        	layout.createParallelGroup(Alignment.LEADING)
        		.addGroup(layout.createSequentialGroup()
        			.addGap(56)
        			.addGroup(layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(versionLabel)
        				.addComponent(textField, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE))
        			.addGap(47)
        			.addComponent(closeButton)
        			.addGap(36))
        );
        getContentPane().setLayout(layout);
        pack();
    }
}
