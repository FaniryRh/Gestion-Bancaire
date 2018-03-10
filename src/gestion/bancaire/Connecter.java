/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion.bancaire;

/**
 *
 * @author Silver
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import java.sql.PreparedStatement;

public class Connecter {
    
    Connection con;
    public Connecter(){
        
        
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } 
        catch(ClassNotFoundException e){
            JOptionPane.showMessageDialog(null, e);
        }
        
        
        
        try{
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gestion_b", "root","");
        }
        catch(SQLException e){
            JOptionPane.showMessageDialog(null, e);
        }
        
        
    }
    
    
    Connection obtenirconnexion(){
        return con;
    }
    
}
