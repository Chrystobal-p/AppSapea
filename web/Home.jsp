<%-- 
    Document   : Home
    Created on : 30-08-2019, 18:46:05
    Author     : Neo Jigoku
--%>

<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="Clases.Metodos_secundarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="css/home.css" type="text/css"><link>
                <script src="js/jquery.js" type="text/javascript"></script>
        <title>Bienvenido</title>
    </head>
    <body>
        
        <form  id="myform"method="POST" action="enviarDatos.jsp" onsubmit="return enviar()">
        <h1 class="titulo">Inicio de sesión</h1>
        <p>Nombre de Usuario: <input name="txtUsuario" type="text" id="username"></p>
            <p>Contraseña: <input name="txtPass" type="password" id="pass"></p>
            <p><input name="btnEnviar" type="submit" onmouseover="click1.playclip()" value="Ingresar"</p>
            <br>
            <center>
              <a href="Registro.jsp">Registrarse</a>
           <br>
            <br>
            
            <%
                try{
Metodos_secundarios ms = new Metodos_secundarios();
                int numero=Integer.parseInt(request.getParameter("n"));
             out.print("<div class=\"contenedor_mjg\">");
             out.print(ms.retornar_mensaje_login(numero));
             out.print("</div>");
                }catch(Exception e){   
                }

        %>
            
             </center>
        </form>    
     </body>
</html>
