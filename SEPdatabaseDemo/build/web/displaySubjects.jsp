<%-- 
    Document   : displaySubjects
    Created on : May 15, 2019, 9:42:04 AM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%        String tcher = request.getParameter("teacher");
            try {
                // Step1: Load JDBC Driver
                Class.forName("com.mysql.jdbc.Driver");
                // Step 2: Define Connection URL
                String connURL = "jdbc:mysql://localhost/school?user=root&password=12345";
                // Step 3: Establish connection to URL
                Connection conn = DriverManager.getConnection(connURL);
                // Step 4: Create Statement object
                Statement stmt = conn.createStatement();
                // Step 5: Execute SQL Command
                String sqlStr = "SELECT subjName,subjCode FROM subject WHERE teacher = '" + tcher + "'";
                ResultSet rs = stmt.executeQuery(sqlStr);
                // Step 6: Process Result
                while (rs.next()) {
                    String id = rs.getString("subjCode");
                    String name = rs.getString("subjName");
                    out.println("ID:" + id + ", Name:" + name + "<br>");
                }
                // Step 7: Close connection
                conn.close();

            } catch (Exception e) {
                System.err.println(e.getMessage());
            }

        %>
    </body>
</html>
