<%-- 
    Document   : processUpdate
    Created on : 4 Jul, 2019, 10:57:44 PM
    Author     : yangz
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String ID = request.getParameter("id");%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Updated</title>
    </head>
    <body>
        <%
            String brand = request.getParameter("brand");
            String model = request.getParameter("model");
            String functions = request.getParameter("functions");
            String quantity = request.getParameter("quantity");

            try {
                // Step1: Load JDBC Driver
                Class.forName("com.mysql.jdbc.Driver");
                // Step 2: Define Connection URL
                String connURL = "jdbc:mysql://localhost/onlineshop?user=root&password=12345";
                // Step 3: Establish connection to URL
                Connection conn = DriverManager.getConnection(connURL);
                String insertStr = "UPDATE inventory set brand = ?, model = ?, functions = ?, quantity = ? where id = ?";
                PreparedStatement pstmt = conn.prepareStatement(insertStr);
                pstmt.setString(1, brand);
                pstmt.setString(2, model);
                pstmt.setString(3, functions);
                pstmt.setString(4, quantity);
                pstmt.setString(5, ID);

                int count = pstmt.executeUpdate();
                if (count > 0) {
                    out.println("<table border='1' align=center>");
                    out.println("<tr>" + "<th>" + "ID" + "</th>" + "<th>" + "brand" + "</th>" + "<th>" + "model" + "</th>" + "<th>" + "functions" + "</th>" + "<th>" + "quantity" + "</th>" + "</tr>");
                    out.println("<tr>" + "<td>" + ID + "</td>" + "<td>" + brand + "</td>" + "<td>" + model + "</td>" + "<td>" + functions + "</td>" + "<td>" + quantity + "</td>" + "</tr>");
                    out.println("</table>");
                } else {
                    out.println("error, update failed");
                    response.sendRedirect("update.jsp");
                }
                conn.close();

            } catch (Exception e) {
                out.print(e.getMessage());
            }

        %>
    </body>
</html>
