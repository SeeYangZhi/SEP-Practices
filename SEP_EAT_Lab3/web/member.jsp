<%-- 
    Document   : member
    Created on : May 15, 2019, 2:45:27 PM
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
        <%
            String userid = request.getParameter("loginid");
            String password = request.getParameter("password");
        %>
        User ID: <%=userid%> <br/>
        Password: <%=password%> <br/>
        <%
            if (userid.equals("Lincoln") && password.equals("LincolnISHandsome")) {
                out.println("Welcome, " + userid + "<br>");
            } else {
                response.sendRedirect("login.html");
            }
        %>
    </body>
</html>
