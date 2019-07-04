<%-- 
    Document   : displayMTable
    Created on : May 10, 2019, 3:09:10 PM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display MTable</title>
    </head>
    <body>
        <% String number = request.getParameter("number"); %>

        <%
            out.println("<table border='1' align=center>");
            for (int i = 1; i <= Integer.parseInt(number); i++) {
                out.println("<tr>");
                out.println("<td width=100 align = center>" + i + " x " + number + "</td>");
                out.println("<td width=100 align = center>" + (i * Integer.parseInt(number)) + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");


        %>    
    </body>
</html>
