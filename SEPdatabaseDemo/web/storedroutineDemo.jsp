<%-- 
    Document   : storedroutineDemo
    Created on : May 22, 2019, 10:51:28 AM
    Author     : yangz
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String tcher = request.getParameter("teacher");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/school?user=root&password=12345");
                String simpleProc = "{call get_subjects(?)}";
                CallableStatement cs = conn.prepareCall(simpleProc);
                cs.setString(1, tcher);
                cs.execute();

                ResultSet rs = cs.getResultSet();

                while (rs.next()) {
                    out.println(rs.getString("subjCode") + ", " + rs.getString("subjName"));
                }
                conn.close();

            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
        %>
    </body>
</html>
