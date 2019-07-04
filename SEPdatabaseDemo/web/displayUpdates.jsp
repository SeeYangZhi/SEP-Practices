<%-- 
    Document   : displayUpdates
    Created on : May 15, 2019, 10:48:56 AM
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
//            String tcher = request.getParameter("teacher");
//            String subjCode = request.getParameter("subjCode");
//            String subjName = request.getParameter("subjName");
            String userid = request.getParameter("userid");
            String password = request.getParameter("password");
            int count = 0;

//            String insertstr = "INSERT INTO subject VALUES ('ST1020','DEUI', 'See')";
//            String insertstr = "UPDATE subject SET subjCode = 'ST1030' WHERE subjName = 'DEUI'";
//            String insertstr = "DELETE FROM subject WHERE subjCode = 'st0110'";
//            String insertstr = "INSERT INTO user(userid,password) VALUES(?,?)";
            String insertstr = "select count(*) as total from user where userid=? and password=?";

            try {
                // Step1: Load JDBC Driver
                Class.forName("com.mysql.jdbc.Driver");
                // STEP 2 & 3 
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/school?user=root&password=12345");
                // STEP 4
                PreparedStatement pstmt = conn.prepareStatement(insertstr);
                pstmt.setString(1, userid);
                pstmt.setString(2, password);
                // STEP 5
                ResultSet rs = pstmt.executeQuery();
                rs.next();
//                count = pstmt.executeUpdate();
                count = rs.getInt("total");
                // STEP 6
                if (count >= 1) {
                    out.println("Welcome " + userid + "</br>");
//                    out.println(count + " rows affected");
                } else {
                    response.sendRedirect("login.jsp?Login=fail");
                }
                // STEP 7
                conn.close();
            } catch (Exception e) {
                System.err.println(e.getMessage());
                out.println(e.getMessage() + "</br>");
            }
        %>    </body>
</html>
