<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Exercicio 2</h1>
        <% 
            String msg  = (String) session.getAttribute("msg");
            if(msg != null){ 
                session.removeAttribute("msg");
        %>
        <p style="color:red"><%=msg%></p>
        <%}%>
        <p>Login</p>
        <form action="Menu" method="POST">
            <input type="text" name="user" placeholder="Digite aqui seu usuário">
            <input type="password" name="password" placeholder="Digite aqui a senha">
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
