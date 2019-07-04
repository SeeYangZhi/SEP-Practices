<%-- 
    Document   : processCreate
    Created on : May 22, 2019, 4:02:42 PM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account</title>
    </head>
    <body>
        <%
            String userid = request.getParameter("userid");
            String password = request.getParameter("password");
            if (userid.equals("") && password.equals("")) {
                response.sendRedirect("createAccount.html");
            } else {
                try {
                    // Step1: Load JDBC Driver
                    Class.forName("com.mysql.jdbc.Driver");
                    // Step 2: Define Connection URL
                    String connURL = "jdbc:mysql://localhost/school?user=root&password=12345";
                    // Step 3: Establish connection to URL
                    Connection conn = DriverManager.getConnection(connURL);
                    String insertStr = "INSERT INTO login(userid,password) values(?,?)";
                    PreparedStatement pstmt = conn.prepareStatement(insertStr);
                    pstmt.setString(1, userid);
                    pstmt.setString(2, password);
                    int count = pstmt.executeUpdate();
                    if (count > 0) {
                        out.println("<table border='1' align=center>");
                        out.println("<tr>" + "<th>" + "UserID" + "</th>" + "<th>" + "Password" + "</th>" + "</tr>");
                        out.println("<tr>" + "<td>" + userid + "</td>" + "<td>" + password + "</td>" + "</tr>");
                        out.println("</table>");
                    }
                    conn.close();

                } catch (Exception e) {
                    out.print(e.getMessage());
                }
            }
        %>     </body>
</html>
