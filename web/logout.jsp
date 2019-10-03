<%-- 
    Document   : logout
    Created on : 04-09-2019, 19:02:46
    Author     : Neo Jigoku
--%>

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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
        Metodos m = new Metodos();
        m.cerrarsesion(request, response);
        %>
    </body>
</html>
