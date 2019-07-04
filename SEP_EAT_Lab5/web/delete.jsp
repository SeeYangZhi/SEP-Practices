<%-- 
    Document   : delete
    Created on : 4 Jul, 2019, 10:00:52 PM
    Author     : yangz
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>delete</title>
    </head>
    <body>
        <%
            String ID = request.getParameter("id");
            String brand = "", model = "", functions = "";
            int quantity = 0;
            try {
                // Step1: Load JDBC Driver
                Class.forName("com.mysql.jdbc.Driver");
                // Step 2: Define Connection URL
                String connURL = "jdbc:mysql://localhost/onlineshop?user=root&password=12345";
                // Step 3: Establish connection to URL
                Connection conn = DriverManager.getConnection(connURL);
                String insertStr = "call onlineshop.delete_inventory(?)";
                PreparedStatement pstmt = conn.prepareStatement(insertStr);
                pstmt.setString(1, ID);
                ResultSet rs = pstmt.executeQuery();
                if (rs.next()) {
                    rs.beforeFirst();
        %>
        <table border="0" align="center" style="text-align:center">
            <tr style="background:grey;">
                <th>Brand</th>
                <th>Model</th>
                <th>Functions</th>
                <th>Quantity</th>
                <th>Actions</th>
            </tr>
            <%
                while (rs.next()) {
                    brand = rs.getString("brand");
                    model = rs.getString("model");
                    functions = rs.getString("functions");
                    quantity = rs.getInt("quantity");
            %>
            <tr style="background:lightgrey;">
                <td><%=brand%></td>
                <td><%=model%></td>
                <td><%=functions%></td>
                <td><%=quantity%></td>
                <td>            
                    <form style="display: inline-block" action="delete.jsp" method="post">
                        <input type="submit" name="delete" value="Delete">
                        <input type="hidden" name="id" value=<%=ID%>>
                    </form>
                    <form style="display: inline-block" action="update.jsp" method="post">
                        <input type="submit" name="update" value="Update">
                        <input type="hidden" name="id" value=<%=ID%>>
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
        <%
                    // Step 7: Close connection
                    conn.close();
                } else {
                    conn.close();
                    response.sendRedirect("login.jsp");
                }
            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
        %>

        <!--        <input name="back" value="back" type="button">-->

    </body>
</html>
