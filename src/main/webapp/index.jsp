<!DOCTYPE html>
<html>
<head>
    <title>Start Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <% 
            String msg = (String) session.getAttribute("msg");
            if (msg != null) {
                session.removeAttribute("msg");
                String operacao = "login";
        %>
        <p style="color: red"><%= msg %></p>
        <% } %>
        <form action="Controller" method="POST">
            <div class="form-group">
                <input type="text" name="user" class="form-control" placeholder="Digite aqui seu usuário">
            </div>
            <div class="form-group">
                <input type="password" name="password" class="form-control" placeholder="Digite aqui a senha">
            </div>
            <input type="hidden" name="operacao" value="login">
            <input type="submit" class="btn btn-primary" value="Enviar">
        </form>
    </div>
</body>
</html>
