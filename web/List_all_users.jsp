<%-- 
    Document   : List_all_users
    Created on : 26-09-2019, 16:45:38
    Author     : Neo Jigoku
--%>

<%@page import="java.util.List"%>
<%@page import="Clases.Usuario"%>
<%@page import="Clases.Metodos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
response.setHeader( "Pragma", "no-cache" );
response.addHeader( "Cache-Control", "must-revalidate" );
response.addHeader( "Cache-Control", "no-cache" );
response.addHeader( "Cache-Control", "no-store" );
response.setDateHeader("Expires", 0);
%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="css-menu/csstable.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="scss/estilos.css" rel="stylesheet" type="text/css"/>
    <link href="css-menu/bootstrap.css" rel="stylesheet" type="text/css"/>
    <title>Listado de Usuarios Registrados</title>
  </head>
  <body>
        <%
            HttpSession hs= request.getSession(true);
            if(hs.getAttribute("User")==null||hs.getAttribute("Pass")==null ){
                response.sendRedirect("Home.jsp?n=5");
            }else if(hs.getAttribute("User")!=null&&hs.getAttribute("Pass")!=null&&hs.getAttribute("Validador").toString().equals("3")){
                 response.sendRedirect("Home.jsp?n=6");
            }
            %>
         <h1>Lista de Usuario</h1>
        <hr>
    
        
        <table border="1" class="table ">
            <thead class="thead-light">
            <th>Nombre de usuario</th>
            <th>Correo eléctrónico</th>
            <th>Ranking</th>
            <th>Número de contacto</th>
            <th></th>
            </thead>
            <tbody>     
        <%
        List<Usuario> users = Metodos.Get_All_Users(); 
           for(int i=0;i<users.size();i++){%>
       <tr>
           <td><%=users.get(i).getNombre_usuario()%></td>
           <td><%=users.get(i).getCorreo()%></td>
           <td><%=users.get(i).getRanking()%></td>
           <td><%=users.get(i).getNumero_contacto()%></td>
           <td><a href="Inhabilitar_user.jsp?id=<%=users.get(i).getId_usuario()%>" class="btn btn-secondary hidden-sm-down">Inhabilitar</a>  
               <a href="Editar.jsp?id=<%=users.get(i).getId_usuario()%>" class="btn btn-secondary hidden-sm-down">Editar</a></td>
       </tr>
       <%
       }
       %>
        </table>
    
  
      <h1>Lista de Adminstrador</h1>
        <hr>
  
        <table border="1" class="table">
            <thead class="thead-dark">
                <tr>
            
            <th>Nombre de usuario</th>
            <th>Correo eléctrónico</th>
            <th>Ranking</th>
            <th>Número de contacto</th>
            <th></th>
           
            </thead>
            <tbody>     
        <%
        List<Usuario> admins = Metodos.Get_All_Admins(); 
           for(int f=0;f<admins.size();f++){%>
       <tr>
        
           <td><%=admins.get(f).getNombre_usuario()%></td>
           <td><%=admins.get(f).getCorreo()%></td>
           <td><%=admins.get(f).getRanking()%></td>
           <td><%=admins.get(f).getNumero_contacto()%></td>
           <td><a href="Inhabilitar_user.jsp?id=<%=admins.get(f).getId_usuario()%>" class="btn btn-secondary hidden-sm-down">Inhabilitar</a>
               <a href="Editar.jsp?id=<%=admins.get(f).getId_usuario()%>" class="btn btn-secondary hidden-sm-down">Editar</a>
           
           
           </td>
           
         
       <tr>
       <%
       }
       %>
        </table>
        
     
   
    <a href='registro_admin.jsp' class="btn btn-secondary hidden-sm-down">Ingresar nuevo administrador</a><br>
        <hr>
        <a href='main_admin.jsp' class="btn btn-secondary hidden-sm-down"><--Volver atrás</a>
        <a href="logout.jsp" class="btn btn-secondary hidden-sm-down">Cerrar Sesión</a>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>