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
            String brand = "", model = "", functions = "";
            int quantity = 0;
            try {
                // Step1: Load JDBC Driver
                Class.forName("com.mysql.jdbc.Driver");
                // Step 2: Define Connection URL
                String connURL = "jdbc:mysql://localhost/onlineshop?user=root&password=12345";
                // Step 3: Establish connection to URL
                Connection conn = DriverManager.getConnection(connURL);
                // Step 4: Create Statement object
                String insertStr = "select * from inventory where functions LIKE ?";
                PreparedStatement pstmt = conn.prepareStatement(insertStr);
                pstmt.setString(1, "%" + searchString + "%");
                // Step 5: Execute SQL Command
                ResultSet rs = pstmt.executeQuery();
                // Step 6: Process Result
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
                    quantity = Integer.parseInt(rs.getString("quantity"));
            %>
            <tr style="background:lightgrey;">
                <td><%=brand%></td>
                <td><%=model%></td>
                <td><%=functions%></td>
                <td><%=quantity%></td>
                <td>            
                    <form style="display: inline-block" action="delete.jsp" method="post">
                        <input type="submit" name="delete" value="Delete">
                    </form>
                    <form style="display: inline-block" action="update.jsp" method="post">
                        <input type="submit" name="update" value="Update">
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
                    response.sendRedirect("search.jsp");
                }
            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
        %>


    </body>
</html>
