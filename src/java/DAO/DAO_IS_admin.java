/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import DBconexion.ClassConex;
/**
 *
 * @author Andres Montoya
 */
public class DAO_IS_admin extends ClassConex {
    
    private Connection conn = null;
    private Statement st = null;
    private ResultSet rs = null;
    
    public DAO_IS_admin()
    {
        super();
    }
    
    public boolean validar(String alias, String pass)
    {
        boolean encontrado = false;
        
        try 
        {
            conn = this.ObtenerConexion();
            st = conn.createStatement();
            rs = st.executeQuery("select * from administrador where Nusuario='"+alias+"'and pass="+pass+";");
            //preguntar si la encontro al menos un registro
            if (rs.next())
            {
                encontrado = true;
            }
        this.CerrarConexion();
        } 
        catch (Exception e) 
        {
            
        }
        
        return encontrado;
    }
    
}
