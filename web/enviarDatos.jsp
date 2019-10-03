<%-- 
    Document   : enviarDatos
    Created on : 30-08-2019, 19:40:07
    Author     : Neo Jigoku
--%>

<%@page import="Clases.Metodos"%>
<%@page import="Clases.Usuario"%>
<%@page import="Clases.Metodos_secundarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/loadgif.css" rel="stylesheet" type="text/css"  />
        <script src="js/jquery.js" type="text/javascript"></script>
        <title>JSP Page</title>

    </head>
    <body>
       
       <%
            Metodos_secundarios ms= new Metodos_secundarios();
            Metodos mt= new Metodos();
            Usuario u= new Usuario(request.getParameter("txtUsuario"),request.getParameter("txtPass"));
     //if(pf.getNombre_usuario().equals("")||pf.getContraseña().equals("")){
       //          getServletContext().getRequestDispatcher("/Home.jsp?n="+ms.validar_textbox_login(pf)).forward(request, response);
     //}
          boolean respuesta = mt.iniciar_sesion(u);
          if(respuesta){
               HttpSession ses = request.getSession();
             ses.setAttribute("User",u.getNombre_usuario());
            ses.setAttribute("Pass", u.getContraseña());
          if(u.getId_perfil()==1||u.getId_perfil()==2){
              ses.setAttribute("Validador", u.getId_perfil());
              response.sendRedirect("main_admin.jsp");
          }else if(u.getId_perfil()==3){
              ses.setAttribute("Validador", u.getId_perfil());
              response.sendRedirect("main_user.jsp");
              //getServletContext().getRequestDispatcher("/main_user.jsp").forward(request, response);
          }else{
              %> 
              <script>document.writeln(aviso());</script>
              <%
          }
          }else{
              %> 
              <script>document.writeln(preguntar());</script>
              <%
             // getServletContext().getRequestDispatcher("/Home.jsp?n=4").forward(request, response);
          }  
        %>
    </body>
</html>
