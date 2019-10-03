<%-- 
    Document   : enviarDatos2
    Created on : 31-08-2019, 19:08:50
    Author     : Neo Jigoku
--%>

<%@page import="Clases.Metodos"%>
<%@page import="Clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            Usuario u = new Usuario(request.getParameter("txtUser"),request.getParameter("txtPass1"), request.getParameter("txtCorreo"),1,request.getParameter("txtContacto"));
            Metodos mt = new Metodos();
        
            boolean res2=mt.Registrar_usuario(u);
            if(res2){
                getServletContext().getRequestDispatcher("/Registro.jsp?n=2").forward(request, response);
            }else{
                getServletContext().getRequestDispatcher("/Registro.jsp?n=3").forward(request, response);
            }
            %>
        
    </body>
</html>
