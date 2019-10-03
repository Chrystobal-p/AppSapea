<%-- 
    Document   : Update_cuenta_usuarios
    Created on : 26-09-2019, 18:22:49
    Author     : Neo Jigoku
--%>

<%@page import="Clases.Metodos"%>
<%@page import="Clases.Usuario"%>
<%@page import="Clases.Metodos_secundarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
response.setHeader( "Pragma", "no-cache" );
response.addHeader( "Cache-Control", "must-revalidate" );
response.addHeader( "Cache-Control", "no-cache" );
response.addHeader( "Cache-Control", "no-store" );
response.setDateHeader("Expires", 0);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizando tus datos</title>
     <link rel="stylesheet" href="css/home.css" type="text/css"><link>
              <link href="css/loadgif.css" rel="stylesheet" type="text/css"/>
                    <script src="js/validations.js" type="text/javascript"></script>
                      <script scr="js/consultas.js"></script>
                              <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    </head>
    <body>
<%
         int id=Integer.parseInt(request.getParameter("txtid"));
         
            Usuario u = new Usuario(id,request.getParameter("txtUser"),request.getParameter("txtPass1"), request.getParameter("txtCorreo"),request.getParameter("txtContacto"));
            Metodos mt = new Metodos();
       
            boolean res2=mt.update_usuario(u);
            if(res2){
                response.sendRedirect("Editar.jsp?n=4&&id="+id);
            }else{
                response.sendRedirect("List_all_users.jsp?n=5&&id="+id);
            }
            %>
    </body>
</html>
