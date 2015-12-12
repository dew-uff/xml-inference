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

public class AboutBox extends JDialog {

	private static final long serialVersionUID = 2L;
	private JButton closeButton;

	public AboutBox() {
        super();
        initComponents();
        getRootPane().setDefaultButton(closeButton);
    }

    @Action public void closeAboutBox() {
        dispose();
    }

    private void initComponents() {
        closeButton = new JButton();
        JLabel appTitleLabel = new JLabel();
        JLabel versionLabel = new JLabel();
        JLabel appVersionLabel = new JLabel();
        JLabel vendorLabel = new JLabel();
        JLabel appVendorLabel = new JLabel();
        JLabel appDescLabel = new JLabel();

        setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        ResourceMap resourceMap = Application.getInstance(XMLInference.class).getContext().getResourceMap(AboutBox.class);
        setTitle(resourceMap.getString("title")); 
        setModal(true);
        setName("aboutBox"); 
        setResizable(false);

        ActionMap actionMap = Application.getInstance(XMLInference.class).getContext().getActionMap(AboutBox.class, this);
        closeButton.setAction(actionMap.get("closeAboutBox")); 
        closeButton.setText(resourceMap.getString("closeButton.text")); 
        closeButton.setName("closeButton"); 

        appTitleLabel.setFont(appTitleLabel.getFont().deriveFont(appTitleLabel.getFont().getStyle() | Font.BOLD, appTitleLabel.getFont().getSize()+4));
        appTitleLabel.setText(resourceMap.getString("Application.title")); 
        appTitleLabel.setName("appTitleLabel"); 

        versionLabel.setFont(versionLabel.getFont().deriveFont(versionLabel.getFont().getStyle() | Font.BOLD));
        versionLabel.setText(resourceMap.getString("versionLabel.text")); 
        versionLabel.setName("versionLabel"); 

        appVersionLabel.setText(resourceMap.getString("Application.version")); 
        appVersionLabel.setName("appVersionLabel"); 

        vendorLabel.setFont(vendorLabel.getFont().deriveFont(vendorLabel.getFont().getStyle() | Font.BOLD));
        vendorLabel.setText(resourceMap.getString("vendorLabel.text")); 
        vendorLabel.setName("vendorLabel"); 

        appVendorLabel.setText(resourceMap.getString("Application.vendor")); 
        appVendorLabel.setName("appVendorLabel"); 

        appDescLabel.setText(resourceMap.getString("appDescLabel.text")); 
        appDescLabel.setName("appDescLabel");
        
        JLabel label = new JLabel();
        label.setText("Vers\u00E3o:");
        label.setName("versionLabel");
        label.setFont(label.getFont().deriveFont(label.getFont().getStyle() | Font.BOLD));
        
        JLabel label_1 = new JLabel();
        label_1.setText("Equipe:");
        label_1.setName("vendorLabel");
        label_1.setFont(label_1.getFont().deriveFont(label_1.getFont().getStyle() | Font.BOLD));
        
        JLabel label_2 = new JLabel();
        label_2.setText("2.0");
        label_2.setName("appVersionLabel");
        
        JLabel lblProjetoDaDissertao = new JLabel();
        lblProjetoDaDissertao.setText("Projeto da Disserta\u00E7\u00E3o de Mestrado de Leonardo Cesar Machado");
        lblProjetoDaDissertao.setName("appDescLabel");
        
        JLabel lblLeonardoCesarMachado = new JLabel();
        lblLeonardoCesarMachado.setText("Leonardo Cesar Machado, Vanessa Braganholo Murta e Leonardo Paulino Gresta Murta");
        lblLeonardoCesarMachado.setName("appVendorLabel");

        
        GroupLayout layout = new GroupLayout(getContentPane());
        layout.setHorizontalGroup(
        	layout.createParallelGroup(Alignment.LEADING)
        		.addGroup(layout.createSequentialGroup()
        			.addGap(20)
        			.addGroup(layout.createParallelGroup(Alignment.LEADING)
        				.addGroup(layout.createSequentialGroup()
        					.addComponent(label, GroupLayout.PREFERRED_SIZE, 42, GroupLayout.PREFERRED_SIZE)
        					.addPreferredGap(ComponentPlacement.UNRELATED)
        					.addComponent(label_2, GroupLayout.PREFERRED_SIZE, 16, GroupLayout.PREFERRED_SIZE)
        					.addPreferredGap(ComponentPlacement.RELATED)
        					.addComponent(lblProjetoDaDissertao, GroupLayout.PREFERRED_SIZE, 770, GroupLayout.PREFERRED_SIZE))
        				.addGroup(layout.createSequentialGroup()
        					.addComponent(label_1, GroupLayout.PREFERRED_SIZE, 40, GroupLayout.PREFERRED_SIZE)
        					.addPreferredGap(ComponentPlacement.UNRELATED)
        					.addComponent(lblLeonardoCesarMachado, GroupLayout.PREFERRED_SIZE, 423, GroupLayout.PREFERRED_SIZE))
        				.addComponent(appTitleLabel)
        				.addGroup(layout.createSequentialGroup()
        					.addComponent(vendorLabel)
        					.addPreferredGap(ComponentPlacement.UNRELATED)
        					.addComponent(appVendorLabel))
        				.addComponent(closeButton, Alignment.CENTER)
        				.addGroup(layout.createSequentialGroup()
        					.addComponent(versionLabel)
        					.addPreferredGap(ComponentPlacement.UNRELATED)
        					.addComponent(appVersionLabel)
        					.addPreferredGap(ComponentPlacement.UNRELATED)
        					.addComponent(appDescLabel, GroupLayout.DEFAULT_SIZE, 770, Short.MAX_VALUE)))
        			.addContainerGap())
        );
        layout.setVerticalGroup(
        	layout.createParallelGroup(Alignment.LEADING)
        		.addGroup(layout.createSequentialGroup()
        			.addContainerGap()
        			.addComponent(appTitleLabel)
        			.addGap(26)
        			.addGroup(layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(versionLabel)
        				.addComponent(appVersionLabel)
        				.addComponent(appDescLabel))
        			.addPreferredGap(ComponentPlacement.RELATED)
        			.addGroup(layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(vendorLabel)
        				.addComponent(appVendorLabel))
        			.addGap(18)
        			.addGroup(layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(label)
        				.addComponent(label_2)
        				.addComponent(lblProjetoDaDissertao))
        			.addGap(6)
        			.addGroup(layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(label_1)
        				.addComponent(lblLeonardoCesarMachado))
        			.addComponent(closeButton)
        			.addContainerGap())
        );
        getContentPane().setLayout(layout);
        pack();
    }
}
