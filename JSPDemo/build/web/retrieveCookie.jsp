<%-- 
    Document   : retrieveCookie
    Created on : Jul 3, 2019, 9:34:31 AM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Cookie[] mycookies = request.getCookies();
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <% for (int i = 0; i < mycookies.length; i++) { %>
            <tr>
                <%
                    if (mycookies[i].getName().equals("username")) {
                %>
                <td><%= mycookies[i].getName()%></td>
                <td><%= mycookies[i].getValue()%></td>
                <td><%= mycookies[i].getMaxAge()%></td>
                <td><%= mycookies[i].getPath()%></td>
            </tr>
            <% }
                }%>
        </table>
    </body>
</html>
