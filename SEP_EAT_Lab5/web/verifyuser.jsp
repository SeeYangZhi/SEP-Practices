<%-- 
    Document   : verifyuser
    Created on : Jul 9, 2019, 1:27:58 PM
    Author     : yangz
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String userid = request.getParameter("username");
    String password = request.getParameter("password");
    String id = "", pw = "";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verify User</title>
    </head>
    <body>
        <%
            try {
                // Step1: Load JDBC Driver
                Class.forName("com.mysql.jdbc.Driver");
                // Step 2: Define Connection URL
                String connURL = "jdbc:mysql://localhost/onlineshop?user=root&password=12345";
                // Step 3: Establish connection to URL
                Connection conn = DriverManager.getConnection(connURL);
                // Step 4: Create Statement object
//                    Statement stmt = conn.createStatement();
                String insertStr = "select * from login where userid = ? AND password = ?";
                PreparedStatement pstmt = conn.prepareStatement(insertStr);
                pstmt.setString(1, userid);
                pstmt.setString(2, password);
                // Step 5: Execute SQL Command
                ResultSet rs = pstmt.executeQuery();
                // Step 6: Process Result
                while (rs.next()) {
                    id = rs.getString("userid");
                    pw = rs.getString("password");
                }
                // Step 7: Close connection
                conn.close();

            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
            if (userid.equals(id) && password.equals(pw)) {
                session.setAttribute("LOGIN-STATUS", "YES");
                response.sendRedirect("search.jsp");
            } else {
                response.sendRedirect("login.jsp");
            }
        %>
    </body>
</html>
