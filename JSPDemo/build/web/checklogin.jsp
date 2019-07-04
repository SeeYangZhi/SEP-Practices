<%-- 
    Document   : checklogin
    Created on : May 8, 2019, 9:34:18 AM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Demo</title>
    </head>
    <body>
        <%
            String userid = request.getParameter("loginid");
            String password = request.getParameter("password");
        %>
        
        User ID: <%=userid%> <br/>
        Password: <%=password%> <br/>

        <%--        <%    
                    if (userid.equals("Lincoin") && password.equals("handsome")) {
                        out.println("Welcome, " + userid + "<br>");
                    } else {
                        response.sendRedirect("login.html");
                    }
                %>
        --%>
    </body>
</html>
