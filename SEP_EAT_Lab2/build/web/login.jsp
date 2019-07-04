<%--
    Document   : login
    Created on : May 8, 2019, 11:11:55 AM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <% String login = request.getParameter("login"); %>

        <form action="verifyUser.jsp" method="post">
            Login ID: <input name="loginid" type="text"><br>
            Password: <input name="password" type="password"><br>
            <input type="submit" name="btnSubmit" value="Login">
            <input type="reset" value="Reset">
        </form>    

        <% if (login != null && login.equals("fail")) {
                out.println("You have entered an invalid ID/Password ");
            }
        %>        
    </body>
</html>
