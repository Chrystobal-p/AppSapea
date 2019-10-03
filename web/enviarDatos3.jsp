<%-- 
    Document   : enviarDatos3
    Created on : 26-09-2019, 16:11:09
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
        
            boolean res2=mt.Registrar_administrador(u);
            if(res2){
                getServletContext().getRequestDispatcher("/registro_admin.jsp?n=2").forward(request, response);
            }else{
                getServletContext().getRequestDispatcher("/registro_admin.jsp?n=3").forward(request, response);
            }
            %>
    </body>
</html>
