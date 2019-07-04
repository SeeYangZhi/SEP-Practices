<%-- 
    Document   : processDelete
    Created on : May 31, 2019, 2:22:15 PM
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
        <%
            String userid = request.getParameter("userid");
            if (userid.equals("")) {
                response.sendRedirect("deleteAccount.html");
            } else {
                try {
                    // Step1: Load JDBC Driver
                    Class.forName("com.mysql.jdbc.Driver");
                    // Step 2: Define Connection URL
                    String connURL = "jdbc:mysql://localhost/school?user=root&password=12345";
                    // Step 3: Establish connection to URL
                    Connection conn = DriverManager.getConnection(connURL);
                    String insertStr = "call school.delete_user(?)";
                    PreparedStatement pstmt = conn.prepareStatement(insertStr);
                    pstmt.setString(1, userid);
                    ResultSet rs = pstmt.executeQuery();
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
                    conn.close();

                } catch (Exception e) {
                    out.print(e.getMessage());
                }
            }
        %>   
    </body>
</html>
