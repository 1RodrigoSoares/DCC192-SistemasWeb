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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .container {
            margin-top: 20px;
        }
        .menu-button {
            margin-top: 10px;
        }
        .center-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 25vh;
        }
    </style>
</head>
<body>
    <div class="container center-content">
        <h1 class="text-center">Menu</h1>
        <% 
            String resp = (String) session.getAttribute("usuario");
            Integer userCounter = (Integer) getServletContext().getAttribute("count");
        %>
        <h2 class="text-center">Usuário : <%= resp %></h2>
        <div class="text-center">
            Usuários logados no momento: <span><%= userCounter %></span>
        </div>
    </div>
    <div class="container">
        <form action="Controller" method="post" class="menu-button">
            <input type="hidden" name="operacao" value="welcome">
            <button type="submit" class="btn btn-primary btn-block">Boas vindas</button>
        </form>
        <form action="Controller" method="post" class="menu-button">
            <input type="hidden" name="operacao" value="erro_java">
            <button type="submit" class="btn btn-primary btn-block">Erro Java</button>
        </form>
        <form action="Controller" method="post" class="menu-button">
            <input type="hidden" name="operacao" value="erroHtml">
            <button type="submit" class="btn btn-primary btn-block">Erro HTML</button>
        </form>
        <form action="Controller" method="post" class="menu-button">
            <input type="hidden" name="operacao" value="sair">
            <button type="submit" class="btn btn-danger btn-block">Sair</button>
        </form>
    </div>
</body>
</html>
