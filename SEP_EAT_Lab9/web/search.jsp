<%-- 
    Document   : search
    Created on : Jul 3, 2019, 11:06:31 AM
    Author     : yangz
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String status = (String) session.getAttribute("LOGIN-STATUS");
    if (status == null) {
        response.sendRedirect("login.html");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
    </head>
    <body>
        <form action="getSearchResults" method="post">
            <table border="0">
                <tr>
                    <td>Search Phone: </td>
                    <td><input type="text" name="searchString"></td>
                    <td><input type="submit" name="search" value="Search"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
