/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author achma
 */
import java.sql.*;
import javax.swing.JOptionPane;
public class koneksi {
    
    Connection kon;
    Statement stm;
    
    String url = "jdbc:mysql://localhost/katring";
    String user = "root";
    String pass = "";
    
    public void config4(){
        try{
        Class.forName("com.mysql.jdbc.Driver");
        kon = DriverManager.getConnection(url, user, pass);
        stm = kon.createStatement();
        System.out.print("koneksi sukses");
        }
        catch(Exception e){
        System.out.print("koneksi gagal...." +e.getMessage());
        }
    }
}