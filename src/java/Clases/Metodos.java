/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Metodos {
    static String query;
    static Connection con=null;
    static Statement stm = null;
    static ResultSet rst=null;
    static PreparedStatement pstam = null;
    
    //Metodos con utilización de BBDD
    
    //Inicio de sesión validando nombre de usuario y contraseña
    public static boolean  iniciar_sesion(Usuario u){
                boolean encontrado=false;
                 query= "SELECT id_perfil FROM usuario WHERE nombre_usuario=? AND contraseña=?;" ;        
                try {
                    con=Conexion.Conexion();
                    pstam=con.prepareStatement(query);
                                pstam.setString(1, u.getNombre_usuario());
                                pstam.setString(2, u.getContraseña());
                    rst=pstam.executeQuery();
                    if(rst.next()){
                        u.setId_perfil(rst.getInt("id_perfil"));
                        encontrado=true;
                    }else{
                        encontrado=false;
                    }
                } catch (Exception e) {
                }
               return encontrado;
            }
    
    //Registro de usuario
public static boolean Registrar_usuario(Usuario u){
boolean respuesta=false;
       query= "INSERT INTO usuario (nombre_usuario, contraseña, correo,ranking, numero_contacto, id_perfil) VALUES (?,?,?,?,?,3);";
        try {
      con=Conexion.Conexion();
           pstam= con.prepareStatement(query);
            pstam.setString(1, u.getNombre_usuario());
            pstam.setString(2, u.getContraseña());
            pstam.setString(3, u.getCorreo());
            pstam.setInt(4, u.getRanking());
            pstam.setString(5, u.getNumero_contacto());
            pstam.executeUpdate();
           respuesta=true;
            con.close();
            pstam.close();
        } catch (SQLException e) {
           respuesta=false;
        }
return respuesta;
}

// Registro de administrador básico

public static boolean Registrar_administrador(Usuario u){
boolean respuesta=false;
       query= "INSERT INTO usuario (nombre_usuario, contraseña, correo,ranking, numero_contacto, id_perfil) VALUES (?,?,?,?,?,2);";
        try {
      con=Conexion.Conexion();
           pstam= con.prepareStatement(query);
            pstam.setString(1, u.getNombre_usuario());
            pstam.setString(2, u.getContraseña());
            pstam.setString(3, u.getCorreo());
            pstam.setInt(4, u.getRanking());
            pstam.setString(5, u.getNumero_contacto());
            pstam.executeUpdate();
           respuesta=true;
            con.close();
            pstam.close();
        } catch (SQLException e) {
           respuesta=false;
        }
return respuesta;
}

//Cierra la sesión
    public void cerrarsesion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession(true);
        sesion.invalidate();
        response.sendRedirect("Home.jsp");
    }
    
    // Verifica la existecia 
    public boolean verificar_username(String username){
           boolean encontrado=false;
                 query= "SELECT id_perfil FROM usuario WHERE nombre_usuario=?;" ;        
                try {
                    con=Conexion.Conexion();
                    pstam=con.prepareStatement(query);
                                pstam.setString(1, username);
                    rst=pstam.executeQuery();
                    if(rst.next()){
                        encontrado=true;
                    }else{
                        encontrado=false;
                    }
                } catch (Exception e) {
                    encontrado=true;
                }
               return encontrado;
    }
    
    // Verifica la existencia del correo para el registro
    public boolean verificar_correo(String correo){
  boolean encontrado=false;
                 query= "SELECT id_perfil FROM usuario WHERE correo=?;" ;        
                try {
                    con=Conexion.Conexion();
                    pstam=con.prepareStatement(query);
                                pstam.setString(1, correo);
                    rst=pstam.executeQuery();
                    if(rst.next()){
                        encontrado=true;
                    }else{
                        encontrado=false;
                    }
                } catch (SQLException ex) {
                    encontrado=false;
                }
               return encontrado;
}
    
    // Verificar la existencia del número de contacto para el registro
        public boolean verificar_contacto(String contacto){
  boolean encontrado=false;
                 query= "SELECT id_perfil FROM usuario WHERE numero_contacto=?;" ;        
                try {
                    con=Conexion.Conexion();
                    pstam=con.prepareStatement(query);
                                pstam.setString(1, contacto);
                    rst=pstam.executeQuery();
                    if(rst.next()){
                        encontrado=true;
                    }else{
                        encontrado=false;
                    }
                } catch (SQLException ex) {
                    encontrado=false;
                }
               return encontrado;
}
        
        //Lista de todos los usuarios registrados para eliminar
        
         public static List<Usuario> Get_All_Users() throws SQLException {
    query = "SELECT id_usuario, nombre_usuario, correo, ranking, numero_contacto FROM usuario WHERE id_perfil=3;";
  List<Usuario> users  = new ArrayList<Usuario>();
  try{
        con=Conexion.Conexion();
        stm= con.createStatement();
        rst = stm.executeQuery(query);
        while(rst.next()){
            Usuario u = new Usuario(rst.getInt("id_usuario"), rst.getString("nombre_usuario"), rst.getString("correo"), rst.getInt("ranking"),rst.getString("numero_contacto"));
            users.add(u);
        }
  }catch (SQLException ex){
      return null;
  }
    return users;
}
         
         // Lista de todos los administradores registrados para eliminar
         
         public static List<Usuario> Get_All_Admins() throws SQLException {
    query = "SELECT id_usuario, nombre_usuario, correo, ranking, numero_contacto FROM usuario WHERE id_perfil=2;";
  List<Usuario> users  = new ArrayList<Usuario>();
  try{
        con=Conexion.Conexion();
        stm= con.createStatement();
        rst = stm.executeQuery(query);
        while(rst.next()){
            Usuario u = new Usuario(rst.getInt("id_usuario"), rst.getString("nombre_usuario"), rst.getString("correo"), rst.getInt("ranking"),rst.getString("numero_contacto"));
            users.add(u);
        }
  }catch (SQLException ex){
      return null;
  }
    return users;
}
         
         // Método para eliminar usuarios sin excepciones jajaja 
         
         public static boolean Inhabilitar_users(int id){
      query="UPDATE usuario SET id_perfil=4 WHERE id_usuario=?;";
    boolean respuesta=false;
    try {
    con=Conexion.Conexion();
    pstam=con.prepareStatement(query);
    pstam.setInt(1, id);
    pstam.executeUpdate();
    respuesta = true;        
    con.close();
    pstam.close();
    } catch (Exception e) {
        return respuesta;
    }
    return respuesta; 
}
        //Método traer todos  lod datos del usuario
         public static Usuario Get_One_Admins_users(int id) throws SQLException {
    query = "SELECT id_usuario, nombre_usuario, contraseña, correo, numero_contacto FROM usuario where id_usuario="+id+";";
 Usuario u = null;
  try{
        con=Conexion.Conexion();
        stm= con.createStatement();
        rst = stm.executeQuery(query);
        while(rst.next()){
           u= new Usuario(rst.getInt("id_usuario"), rst.getString("nombre_usuario"), rst.getString("contraseña"), rst.getString("correo"),rst.getString("numero_contacto"));
        }
  }catch (SQLException ex){
      return null;
  }
    return u;
}
    //Método para actualizar datos usuario o administrador
         public static boolean update_usuario(Usuario u){
boolean respuesta=false;
       query= "UPDATE usuario SET nombre_usuario=?, contraseña=?, correo=?, numero_contacto=? WHERE id_usuario=?;";
        try {
      con=Conexion.Conexion();
           pstam= con.prepareStatement(query);
            pstam.setString(1, u.getNombre_usuario());
            pstam.setString(2, u.getContraseña());
            pstam.setString(3, u.getCorreo());
            pstam.setString(4, u.getNumero_contacto());
            pstam.setInt(5, u.getId_usuario());
            pstam.executeUpdate();
           respuesta=true;
            con.close();
            pstam.close();
        } catch (SQLException e) {
           respuesta=false;
        }
return respuesta;
}
         //Registro especie
         
         public boolean Registrar_especie(Especie esp) throws SQLException{
boolean respuesta=false;
       query= "INSERT INTO especie (nombre, nombre_cientifico, distribucion_geografica,descripcion, especie,familia,foto_especie) VALUES (?,?,?,?,?,?,?);";
        try {
      con=Conexion.Conexion();
           pstam= con.prepareStatement(query);
            pstam.setString(1, esp.getNombre());
            pstam.setString(2, esp.getNombre_cientifico());
            pstam.setString(3, esp.getDistribucion_geografica());
            pstam.setString(4, esp.getDescripcion());
            pstam.setString(5, esp.getEspecie());
            pstam.setString(6, esp.getFamilia());
            pstam.setString(7, esp.getFoto_especie());
            pstam.executeUpdate();
           respuesta=true;
            con.close();
            pstam.close();
        } catch (SQLException e) {
           respuesta=false;
            pstam.close();
        }
return respuesta;
}
         
         // Lista de especies para enciclopedia
}

