<%-- 
    Document   : menu
    Created on : 30 de set. de 2023, 17:21:49
    Author     : rodrigosoares
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Menu </h1>
               <h2> Usuário : " + resp + "  </h2>
             <a href=\"welcome.jsp\">Welcome </a><br/>
            <a href=\"ErroDeJava\">Gerar erro de java</a><br/>
                out.println("<a href=indexxa.html>Gerar erro de hmtl</a><br/>");
                out.println("<a href=\"sair\"> Sair </a>");
    </body>
</html>
