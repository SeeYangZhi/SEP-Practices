<%-- 
    Document   : verifyUser
    Created on : May 8, 2019, 11:05:40 AM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                out.println("<table border='1'>");
                for (int i = 1; i <= 5; i++) {
                    out.println("<tr>");
                    out.println("<td width=100 align = center>" + i + "x 5" + "</td>");
                    out.println("<td width=100 align = center>" + (i*5) + "</td>");
                    out.println("</tr>");
                }
                out.println("</table>");

            } else {
                response.sendRedirect("login.jsp?login=fail");
            }
        %>
    </body>
</html>
