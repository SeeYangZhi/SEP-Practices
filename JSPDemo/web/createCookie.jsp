<%-- 
    Document   : createCookie
    Created on : Jul 3, 2019, 9:28:23 AM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%
        Cookie mycookie = new Cookie("username", "cookie monster");
        mycookie.setMaxAge(60); // in secs
        response.addCookie(mycookie);
        Cookie mycookie2 = new Cookie("age", "20");
        mycookie.setMaxAge(60); // in secs
        response.addCookie(mycookie2);
        %>

        <form action="retrieveCookie.jsp" name="cookieretrieve" method="post">
            <input type="submit" name="submit" value="click me">
        </form>
    </body>
</html>
