/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import Clases.Especie;
import Clases.Metodos;
import Clases.Metodos_secundarios;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Neo Jigoku
 */
@MultipartConfig
public class ProcesoArchivo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        Metodos_secundarios ms = new Metodos_secundarios();
        Metodos mt = new Metodos();
        PrintWriter out = response.getWriter();
        // Variables que obtienen los datos del formulario registro_ranas
        String nomb= request.getParameter("txtnombre_foto");
        String nomb_generico= request.getParameter("nombre_generico");
        String nomb_especie= request.getParameter("nombre_especie");
        String nomb_familia= request.getParameter("familia");
        String distribucion= request.getParameter("distribucion");
        String nomb_cientifico= request.getParameter("nombre_cientifico");
        String descripcion= request.getParameter("descripcion");
        Part arch= request.getPart("archivo");
        // Directorio donde se almacenará la imagen
        String directorio="C:/Users/Neo Jigoku/Desktop/Aiep/SAPEA_WEB/SAPEA/images_especies/";
        InputStream is = arch.getInputStream();
        File f = new File(directorio+nomb);
        FileOutputStream ous = new FileOutputStream(f);
        int dato = is.read();
        while(dato !=-1){
            ous.write(dato);
            dato=is.read();
        }
     ous.close();
     is.close();
        String extension = ms.retornar_extension(nomb);
        String directorio_final = directorio+nomb_cientifico+extension;
    //  out.print(nomb_cientifico);
    // if(f.exists()){
         //Genera el nuevo nombre que tendrá el archivo
         File nuevo_file = new  File(directorio_final);  
         // Renombra el archivo con el nombre científico y su misma extensión
         f.renameTo(nuevo_file);
         //if(f.renameTo(nuevo_file)){
         //out.print("El nombre del archivo es: "+ nuevo_file);  
         //} else{
        // out.print("Error de renombrado");
        Especie esp = new Especie(nomb_generico, nomb_cientifico, distribucion, descripcion, nomb_especie, nomb_familia, directorio_final);
          if(mt.Registrar_especie(esp)){
              response.getWriter().println("Especie registrada exitosamente");
          }else{
              response.getWriter().println("Nel prro");
              
          }
      //   }
     //}else{
       //  out.print("El archivo no existe");
         
     //}

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProcesoArchivo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProcesoArchivo.class.getName()).log(Level.SEVERE, null, ex);
        }
  
      
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
