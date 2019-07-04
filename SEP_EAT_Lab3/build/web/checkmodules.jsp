<%-- 
    Document   : checkmodules
    Created on : May 8, 2019, 10:46:48 AM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>check modules</title>
    </head>
    <body>

        <%
            String buttonpressed = request.getParameter("submit");
            String[] checkbox1 = request.getParameterValues("checkbox1");
        %>

        <%
            if (checkbox1 == null) {
                out.println("You have no modules this semester " + "<br>");
            } else {
                out.println("You are taking:" + "<br/>");
                for (int i = 0; i < checkbox1.length; i++) {
                    out.println("<ul align=left><li align=left>" + checkbox1[i] + "</li></ul>");
                }
            }
        %>





    </body>
</html>
