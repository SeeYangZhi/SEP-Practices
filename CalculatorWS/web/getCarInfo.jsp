<%-- 
    Document   : getCarInfo
    Created on : Oct 30, 2019, 9:38:18 AM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Car Info</title>
    </head>
    <body>
        <form action="getCarServlet" name="form1" method="post">
            Search Car <input type="text" name="brand" size="32"><br>
            <input type="submit" name="submit" value="Search">
            <input type="reset" name="submit" value="Reset">
        </form>

    </body>
</html>
