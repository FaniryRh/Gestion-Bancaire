/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion.bancaire;


import java.text.ParseException;
import javax.swing.JFrame;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

/**
 *
 * @author Silver
 */
public class GestionBancaire {

    
    public static void main(String[] args) throws ParseException {
    java.awt.EventQueue.invokeLater(new Runnable(){

        @Override
        public void run() {
             Login l = new Login();
             l.setVisible(true);
         
        }

    
    });
    
    
    

    
    
    }
    
}
