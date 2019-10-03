<%-- 
    Document   : Delete_user
    Created on : 26-09-2019, 16:55:23
    Author     : Neo Jigoku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery.js"></script>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    </head>
    <body>
         <%
    int id= Integer.parseInt(request.getParameter("id"));
    boolean res= Clases.Metodos.Inhabilitar_users(id);
    if (res!=false){
        
%>
<script>
    function redirect_w_aviso()
                       {
                             alert("Usuario o Administrador eliminado con éxito");
                            setTimeout(function(){location.href = "List_all_users.jsp";},0);
                           } 
                        document.writeln(redirect_w_aviso());   </script>
<%
    }else{
%>
<script>
    function redirect_w_bad_aviso()
                       {
                             alert("No se pudo completar la acción con éxito");
                            setTimeout(function(){location.href = "List_all_users.jsp";},0);
                           } 
                   document.writeln(redirect_w_bad_aviso());    
                   </script>
<%
}
%>
        
    </body>
</html>
