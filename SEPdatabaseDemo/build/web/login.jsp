<%-- 
    Document   : login
    Created on : May 22, 2019, 9:29:57 AM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="displayUpdates.jsp" method="post">
            Login ID: <input type="text" name="userid"></br>
            Password: <input type="text" name="password"></br>
            <input type="submit" name="btnSubmit" value="Login">
            <input type="reset" name="btnReset" value="Reset">
        </form>
        <%String msg=request.getParameter("Login");
        if(msg != null && msg.equals("fail")){
            out.println("You have entered an invalid username or password");
        }
        %>
    </body>
</html>
