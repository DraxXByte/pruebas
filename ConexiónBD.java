/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.cecyt9.ipn.util;
    import java.sql.*;
/**
 *
 * @author R2D2
 */
public class ConexiónBD {


   private static Connection cnx = null;
   public static Connection obtener() throws SQLException, ClassNotFoundException {
      if (cnx == null) {
         try {
            Class.forName("com.mysql.jdbc.Driver");
            cnx = DriverManager.getConnection("jdbc:mysql://localhost/CalculusPSBD", "root", "n0m3l0");
         } catch (SQLException ex) {
            throw new SQLException(ex);
         } catch (ClassNotFoundException ex) {
            throw new ClassCastException(ex.getMessage());
         }
      }
      return cnx;
   }
   public static void cerrar() throws SQLException {
      if (cnx != null) {
         cnx.close();
      }
   }
}

