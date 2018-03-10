/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion.bancaire;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.MessageFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Silver
 */
public class Audit extends javax.swing.JFrame {

    /**
     * Creates new form Audit
     */
   Connecter conn= new Connecter();
   Statement stm;
   ResultSet Res;
   DefaultTableModel model_operation = new DefaultTableModel();
   DefaultTableModel model_retrait = new DefaultTableModel();
   DefaultTableModel model_versement = new DefaultTableModel();
   DefaultTableModel model_compte = new DefaultTableModel();
   DefaultTableModel model_transfert = new DefaultTableModel();
   
   
    public Audit() {
        initComponents();
        
        
        model_operation.addColumn("ID");
        model_operation.addColumn("Type");
        model_operation.addColumn("Cheque");
        model_operation.addColumn("Compte");
        model_operation.addColumn("Client");
        model_operation.addColumn("Montant");
        model_operation.addColumn("Date/Heur");
        model_operation.addColumn("Utilisateur");
        
        model_retrait.addColumn("ID");
        model_retrait.addColumn("Type");
        model_retrait.addColumn("Compte");
        model_retrait.addColumn("Client");
        model_retrait.addColumn("Ancien montant");
        model_retrait.addColumn("Nouveau montant");
        model_retrait.addColumn("Date/Heur");
        model_retrait.addColumn("Utilisateur");
        
        model_versement.addColumn("ID");
        model_versement.addColumn("Type");
        model_versement.addColumn("Compte");
        model_versement.addColumn("Client");
        model_versement.addColumn("Ancien montant");
        model_versement.addColumn("Nouveau montant");
        model_versement.addColumn("Date/Heur");
        model_versement.addColumn("Utilisateur");
        
        model_compte.addColumn("ID");
        model_compte.addColumn("Type");
        model_compte.addColumn("Compte");
        model_compte.addColumn("Client");
        model_compte.addColumn("Ancien solde");
        model_compte.addColumn("Nouveau solde");
        model_compte.addColumn("Date/Heur");
        model_compte.addColumn("Utilisateur");
        
        model_transfert.addColumn("ID");
        model_transfert.addColumn("Type");
        model_transfert.addColumn("Date");
        model_transfert.addColumn("N° Transfert");
        model_transfert.addColumn("N° Expéditeur");
        model_transfert.addColumn("N° Destinataire");
        model_transfert.addColumn("Montant ancien");
        model_transfert.addColumn("Montant nouveau");
        model_transfert.addColumn("Utilisateur");
        
        afficher_audite_operation();
        afficher_audite_retrait();
        afficher_audite_versement();
        afficher_audite_compte();
        afficher_audite_transfert();
       
        
    }
    
    private static void actualiser(){
       
    }
    
    public final void afficher_audite_compte(){
        
        try{
            model_compte.setRowCount(0);
            stm= conn.obtenirconnexion().createStatement();
            ResultSet rs= stm.executeQuery("select * from audit_compte");
            while(rs.next()){
                model_compte.addRow(new Object[]{rs.getString("id"), rs.getString("Type_op")
                , rs.getString("numcompte"), rs.getString("nomclient"), rs.getString("SoldeAncien")
                        , rs.getString("SoldeNouveau"), rs.getString("date_miseajour"),
                rs.getString("utilisateur")});
            }
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "une erreur a été détectée: \n"+e);
            System.out.println(e);
        }
         
        tbl_compte.setModel(model_compte);
       
    }
    
    public final void afficher_audite_transfert(){
        
        try{
            model_transfert.setRowCount(0);
            stm= conn.obtenirconnexion().createStatement();
            ResultSet rs= stm.executeQuery("select * from audit_transfer");
            while(rs.next()){
                model_transfert.addRow(new Object[]{rs.getString("id"), rs.getString("Type_op")
                , rs.getString("date_op"), rs.getString("num_transfert"), rs.getString("num_exp")
                        , rs.getString("num_dest"), rs.getString("Montant_ancien"),rs.getString("Montant_nouveau"),
                rs.getString("utilisateur")});
            }
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "une erreur a été détectée: \n"+e);
            System.out.println(e);
        }
         
        Table_audit_transfert.setModel(model_transfert);
       
    }
    
    public final void afficher_audite_versement(){
        
        try{
            model_versement.setRowCount(0);
            stm= conn.obtenirconnexion().createStatement();
            ResultSet rs= stm.executeQuery("select * from audit_versement");
            while(rs.next()){
                model_versement.addRow(new Object[]{rs.getString("numversement"), rs.getString("Type_op")
                , rs.getString("numcompte"), rs.getString("nomclient"), rs.getString("Montant_ancien")
                        , rs.getString("Montant_nouveau"), rs.getString("date_miseajour"),
                rs.getString("utilisateur")});
            }
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "une erreur a été détectée: \n"+e);
            System.out.println(e);
        }
         
        tbl_versement.setModel(model_versement);
       
    }
    
    
    public final void afficher_audite_retrait(){
        
        try{
            model_retrait.setRowCount(0);
            stm= conn.obtenirconnexion().createStatement();
            ResultSet rs= stm.executeQuery("select * from audit_retrait");
            while(rs.next()){
                model_retrait.addRow(new Object[]{rs.getString("numretrait"), rs.getString("Type_op")
                , rs.getString("numcompte"), rs.getString("nomclient"), rs.getString("Montant_ancien")
                        , rs.getString("Montant_nouveau"), rs.getString("date_miseajour"),
                rs.getString("utilisateur")});
            }
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "une erreur a été détectée: \n"+e);
            System.out.println(e);
        }
         
        tbl_retrait.setModel(model_retrait);
       
    }
    
    
    public final void afficher_audite_operation(){
        
        try{
            model_operation.setRowCount(0);
            stm= conn.obtenirconnexion().createStatement();
            ResultSet rs= stm.executeQuery("select * from audit_operation");
            while(rs.next()){
                model_operation.addRow(new Object[]{rs.getString("id"), rs.getString("Type_op"), rs.getString("numcheque")
                , rs.getString("numcompte"), rs.getString("nomclient"), rs.getString("Montant"), rs.getString("date_op"),
                rs.getString("utilisateur")});
            }
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "une erreur a été détectée: \n"+e);
            System.out.println(e);
        }
         
        tbl_operation.setModel(model_operation);
       
    }
    

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel1 = new javax.swing.JPanel();
        jPanel5 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbl_operation = new javax.swing.JTable();
        Imprim_Btn = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jPanel6 = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        tbl_retrait = new javax.swing.JTable();
        jButton2 = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        jPanel7 = new javax.swing.JPanel();
        jScrollPane3 = new javax.swing.JScrollPane();
        tbl_versement = new javax.swing.JTable();
        jButton3 = new javax.swing.JButton();
        jPanel9 = new javax.swing.JPanel();
        jScrollPane5 = new javax.swing.JScrollPane();
        tbl_compte = new javax.swing.JTable();
        jButton1 = new javax.swing.JButton();
        jPanel4 = new javax.swing.JPanel();
        jScrollPane4 = new javax.swing.JScrollPane();
        Table_audit_transfert = new javax.swing.JTable();
        jButton4 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setMaximumSize(new java.awt.Dimension(1066, 483));
        setMinimumSize(new java.awt.Dimension(1066, 483));
        setResizable(false);

        tbl_operation.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(tbl_operation);

        Imprim_Btn.setText("Imprimer");
        Imprim_Btn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Imprim_BtnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 1028, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel5Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(Imprim_Btn, javax.swing.GroupLayout.PREFERRED_SIZE, 112, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 448, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 22, Short.MAX_VALUE)
                .addComponent(Imprim_Btn, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        jTabbedPane1.addTab("Audit Operation", jPanel1);

        tbl_retrait.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane2.setViewportView(tbl_retrait);

        jButton2.setText("Imprimer");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel6Layout = new javax.swing.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 1028, Short.MAX_VALUE)
                    .addGroup(jPanel6Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 124, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 459, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton2, javax.swing.GroupLayout.DEFAULT_SIZE, 34, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        jTabbedPane1.addTab("Audit Retrait", jPanel2);

        tbl_versement.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane3.setViewportView(tbl_versement);

        jButton3.setText("Imprimer");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel7Layout = new javax.swing.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel7Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane3, javax.swing.GroupLayout.DEFAULT_SIZE, 1028, Short.MAX_VALUE)
                    .addGroup(jPanel7Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 106, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel7Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 457, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton3, javax.swing.GroupLayout.DEFAULT_SIZE, 36, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        jTabbedPane1.addTab("Audit Versement", jPanel3);

        tbl_compte.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane5.setViewportView(tbl_compte);

        jButton1.setText("Imprimer");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel9Layout = new javax.swing.GroupLayout(jPanel9);
        jPanel9.setLayout(jPanel9Layout);
        jPanel9Layout.setHorizontalGroup(
            jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel9Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane5, javax.swing.GroupLayout.DEFAULT_SIZE, 1048, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel9Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 85, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        jPanel9Layout.setVerticalGroup(
            jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel9Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane5, javax.swing.GroupLayout.PREFERRED_SIZE, 467, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton1, javax.swing.GroupLayout.DEFAULT_SIZE, 37, Short.MAX_VALUE)
                .addContainerGap())
        );

        jTabbedPane1.addTab("Audit compte", jPanel9);

        Table_audit_transfert.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane4.setViewportView(Table_audit_transfert);

        jButton4.setText("Imprimer");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel4Layout.createSequentialGroup()
                .addContainerGap(20, Short.MAX_VALUE)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane4, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 1010, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton4, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 111, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(38, 38, 38))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 438, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(42, Short.MAX_VALUE))
        );

        jTabbedPane1.addTab("Audit Transfert", jPanel4);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jTabbedPane1)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jTabbedPane1)
                .addContainerGap())
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void Imprim_BtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Imprim_BtnActionPerformed
       MessageFormat header= new MessageFormat("Report audit operation");
       MessageFormat footer= new MessageFormat("");
       try{
           tbl_operation.print(JTable.PrintMode.FIT_WIDTH, header,footer);
       }catch(java.awt.print.PrinterException e){
           System.err.format("cannot print %s, %n", e.getMessage());
       }
    }//GEN-LAST:event_Imprim_BtnActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
       MessageFormat header= new MessageFormat("Report audit retrait");
       MessageFormat footer= new MessageFormat("");
       try{
           tbl_retrait.print(JTable.PrintMode.FIT_WIDTH, header,footer);
       }catch(java.awt.print.PrinterException e){
           System.err.format("cannot print %s, %n", e.getMessage());
       }
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        MessageFormat header= new MessageFormat("Report audit versement");
       MessageFormat footer= new MessageFormat("");
       try{
           tbl_versement.print(JTable.PrintMode.FIT_WIDTH, header,footer);
       }catch(java.awt.print.PrinterException e){
           System.err.format("cannot print %s, %n", e.getMessage());
       }
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
         MessageFormat header= new MessageFormat("Report audit compte");
       MessageFormat footer= new MessageFormat("");
       try{
           tbl_compte.print(JTable.PrintMode.FIT_WIDTH, header,footer);
       }catch(java.awt.print.PrinterException e){
           System.err.format("cannot print %s, %n", e.getMessage());
       }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        MessageFormat header= new MessageFormat("Report audit transfert");
       MessageFormat footer= new MessageFormat("");
       try{
           Table_audit_transfert.print(JTable.PrintMode.FIT_WIDTH, header,footer);
       }catch(java.awt.print.PrinterException e){
           System.err.format("cannot print %s, %n", e.getMessage());
       }
    }//GEN-LAST:event_jButton4ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Audit.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Audit.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Audit.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Audit.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                Thread thread = new Thread();
       int i = 1;
       while(i == 1){
             
               try {
                   thread.sleep(1000);
               } catch (InterruptedException ex) {
                   Logger.getLogger(Audit.class.getName()).log(Level.SEVERE, null, ex);
               }
               new Audit().setVisible(true);
               
       
       }
                
            }
        });
        
        
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Imprim_Btn;
    private javax.swing.JTable Table_audit_transfert;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel9;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JScrollPane jScrollPane5;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JTable tbl_compte;
    private javax.swing.JTable tbl_operation;
    private javax.swing.JTable tbl_retrait;
    private javax.swing.JTable tbl_versement;
    // End of variables declaration//GEN-END:variables
}
