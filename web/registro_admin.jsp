<%-- 
    Document   : registro_admin
    Created on : 17-09-2019, 15:36:24
    Author     : Neo Jigoku
--%>

<%@page import="Clases.Metodos_secundarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Cuenta Admin</title>     
        <link rel="stylesheet" href="css/home.css" type="text/css"><link>
                   
    </head>
     <body>
        <form method="POST" name="f1" action="enviarDatos3.jsp" >
            <h1 class="titulo">Registro de cuenta</h1>
              <p>Nombre de Usuario: <input id="campo1"name="txtUser" type="text" onchange="verificadores()"</p>
            <p>Contraseña: <input id="campo2"name="txtPass1" type="password" onchange="verificar_password()" ></p>
            <p>Repetir Contraseña: <input id="campo3"name="txtPass2" type="password" id="password2"onchange="verificar_passwords()"onkeyup="activar()" disabled="true"></p>
            <p>Correo Electronico: <input id="campo4"name="txtCorreo" type="email" onchange="validar_correo()"></p>
            <p>Número de Contacto: <input id="campo5"name="txtContacto" type="number" onchange="validar_contacto()"></p>
            <p><input name="btnRegistrarse" type="submit" value="Registrarse" id="enviar_datos" disabled onmouseover="click1.playclip()"></p>
            
            <center>
                <br>
                <a href="List_all_users.jsp">Volver</a>  
                <br>

                      <script src="js/jquery.js" type="text/javascript"></script>
                       <script src="js/validations.js" type="text/javascript"></script>
                      <script src="js/consultas.js" type="text/javascript"></script>
                              <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
                <%
                    try {
                        Metodos_secundarios ms = new Metodos_secundarios();
                        int numero = Integer.parseInt(request.getParameter("n"));
                         out.print("<div class=\"loader\"></div>");
                         out.print("<div class=\"contenedor_mjg\">");
           out.print(ms.retornar_mensaje_registro(numero));
             out.print("</div>");
                        
                    } catch (Exception e) {

                    }


                %>
            </center>
        </form>
    </body>
</html>
