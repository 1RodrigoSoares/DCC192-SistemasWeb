<%-- 
    Document   : welcome
    Created on : 5 de set. de 2023, 21:20:41
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
        <h1>SEJA BEM VINDO!</h1>
        <% 
            String user  = (String) session.getAttribute("logged");
            if(user != null){ 
        %>
        <h3><i>Usuário Logado <%=user%></i></h3>
        <%}%>
        
        <h2>Itens implementados</h2>
        <p>Servlets</p>
        <p>Redirecionamento</p>
        <p>Maven</p>
        <p>Objeto</p>
        <form action="Controller" method="post">
            <input type="hidden" name="operacao" value="menu">
            <button type="submit">Voltar</button>
         </form>
    </body>
</html>
