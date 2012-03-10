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

public class AboutBox extends JDialog {

	private static final long serialVersionUID = 1L;
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
        JLabel imageLabel = new JLabel();

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

        imageLabel.setHorizontalAlignment(SwingConstants.CENTER);
        imageLabel.setIcon(resourceMap.getIcon("imageLabel.icon")); 
        imageLabel.setVerticalAlignment(SwingConstants.CENTER);
        imageLabel.setName("imageLabel"); 

        
        GroupLayout layout = new GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(20)
                .addGroup(layout.createParallelGroup(GroupLayout.Alignment.TRAILING)
                    .addGroup(GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addComponent(imageLabel, GroupLayout.PREFERRED_SIZE, 750, GroupLayout.PREFERRED_SIZE)
                        .addGap(20))
                    .addComponent(appTitleLabel, GroupLayout.Alignment.LEADING)
                    .addComponent(appDescLabel, GroupLayout.Alignment.LEADING, GroupLayout.DEFAULT_SIZE, 506, Short.MAX_VALUE)
                    .addComponent(versionLabel, GroupLayout.Alignment.LEADING)
                    .addComponent(vendorLabel, GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(GroupLayout.Alignment.LEADING)
                    	.addComponent(appVersionLabel)
                        .addComponent(appVendorLabel))
                    .addComponent(closeButton, GroupLayout.Alignment.CENTER))
                .addContainerGap()));
        layout.setVerticalGroup(
            layout.createParallelGroup(GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addGap(150, 150, 150)
                        .addComponent(appTitleLabel)
                        .addPreferredGap(LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(appDescLabel)
                        .addPreferredGap(LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(GroupLayout.Alignment.BASELINE)
                            .addComponent(versionLabel)
                            .addComponent(appVersionLabel))
                        .addPreferredGap(LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(GroupLayout.Alignment.BASELINE)
                            .addComponent(vendorLabel)
                            .addComponent(appVendorLabel))
                        .addPreferredGap(LayoutStyle.ComponentPlacement.RELATED, 70, Short.MAX_VALUE)
                        .addComponent(closeButton))
                    .addGroup(layout.createParallelGroup(GroupLayout.Alignment.TRAILING)
                    .addGroup(GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(GroupLayout.Alignment.LEADING)
                        .addGap(20, 20, 20)
                        .addComponent(imageLabel, GroupLayout.PREFERRED_SIZE, 120, GroupLayout.PREFERRED_SIZE)))))
                .addContainerGap()));
        pack();
    }
}
