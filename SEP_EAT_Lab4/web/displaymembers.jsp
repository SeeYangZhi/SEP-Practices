<%-- 
    Document   : displaymembers
    Created on : May 22, 2019, 3:27:30 PM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
                try {
                    // Step1: Load JDBC Driver
                    Class.forName("com.mysql.jdbc.Driver");
                    // Step 2: Define Connection URL
                    String connURL = "jdbc:mysql://localhost/school?user=root&password=12345";
                    // Step 3: Establish connection to URL
                    Connection conn = DriverManager.getConnection(connURL);
                    // Step 4: Create Statement object
//                    Statement stmt = conn.createStatement();
                    String insertStr = "Select * FROM user";
                    PreparedStatement pstmt = conn.prepareStatement(insertStr);

                    // Step 5: Execute SQL Command
                    ResultSet rs = pstmt.executeQuery();
                    // Step 6: Process Result
                    out.println("<table border='1' align=center>");
                    out.println("<tr>" + "<th>" + "UserID" + "</th>" + "<th>" + "Password" + "</th>" + "</tr>");

                    while (rs.next()) {
                        String id = rs.getString("userid");
                        String name = rs.getString("password");
                        out.println("<tr>");
                        out.println("<td width=100 align = center>" + id + "</td>");
                        out.println("<td width=100 align = center>" + name + "</td>");
                        out.println("</tr>");
                    }
                    out.println("</table>");
                    // Step 7: Close connection
                    conn.close();

                } catch (Exception e) {
                    System.err.println(e.getMessage());
                }
            } else {
                response.sendRedirect("login.html");
            }
        %>    
    </body>
</html>
