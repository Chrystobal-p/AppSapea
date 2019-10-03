<%-- 
    Document   : Editar
    Created on : 27-sep-2019, 0:50:04
    Author     : Jibun
--%>
<%@page import="Clases.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Metodos_secundarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
      <link rel="stylesheet" href="css/home.css" type="text/css"><link>
              <link href="css/loadgif.css" rel="stylesheet" type="text/css"/>
              <script src="js/jquery.js" type="text/javascript"></script>
              <script src="js/validations.js" type="text/javascript"></script>
                      <script src="js/consultas.js" type="text/javascript"></script>
                              <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    </head>
    <body>
         <%
   int id= Integer.parseInt(request.getParameter("id"));
   
           Usuario user = Clases.Metodos.Get_One_Admins_users(id);
           %>
               <form method="POST" name="f1" action="Update_cuenta_usuarios.jsp">
            <h1 class="titulo">Editar de cuenta</h1>
            <p><input name="txtid" type="hidden" value="<%=id%>"></p>
            <p>Nombre de Usuario: <input id="campo1"name="txtUser" type="text" onchange="verificadores()" value="<%=user.getNombre_usuario()%>"></p>
            <p>Contraseña: <input id="campo2"name="txtPass1" type="password" onchange="verificar_password()" value="<%=user.getContraseña()%>"></p>
            <p>Repetir Contraseña: <input id="campo3"name="txtPass2" type="password" id="password2"onchange="verificar_passwords()"onkeyup="activar()" disabled="true"></p>
            <p>Correo Electronico: <input id="campo4"name="txtCorreo" type="email" onchange="validar_correo()" value="<%=   user.getCorreo()%>"></p>
            <p>Número de Contacto: <input id="campo5"name="txtContacto" type="number" onchange="validar_contacto()" value="<%= user.getNumero_contacto()%>"></p>
            <p><input name="btnRegistrarse" type="submit" value="Registrarse" id="enviar_datos" disabled onmouseover="click1.playclip()"></p>
            <center>
                <br>
                <a href="List_all_users.jsp">Volver</a>  
                <br>
               
             
                      <script src="js/jquery.js" type="text/javascript"></script>
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
