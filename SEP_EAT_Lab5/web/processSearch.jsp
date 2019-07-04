<%-- 
    Document   : processSearch
    Created on : Jul 3, 2019, 11:27:42 AM
    Author     : yangz
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>process Search</title>
    </head>
    <body>
        <%
            String searchString = request.getParameter("searchString");
            if (searchString.equals("WEB")) { %>
        <form action="processSearch.jsp" method="post">
            <table border="0">
                <tr>
                    <td>Search Phone: </td>
                    <td><input type="text" name="searchString"></td>
                </tr>
            </table>
        </form>
        <hr>
        <form>
            <table border="1">
                <tr style="background:grey;">
                    <th>Brand</th>
                    <th>Model</th>
                    <th>Functions</th>
                    <th>Quantity</th>
                    <th>Actions</th>
                </tr>
                <tr></tr>
            </table>
        </form>
        <%} else {
                response.sendRedirect("search.jsp");
            }
        %>

    </body>
</html>
