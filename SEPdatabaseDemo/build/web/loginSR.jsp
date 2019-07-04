<%-- 
    Document   : loginSR
    Created on : May 22, 2019, 11:01:30 AM
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
        <form action="storedroutineDemo.jsp" method="post">
            Retrieve subject taught by teacher: <input type="text" name="teacher"><br/>
            <input type="submit" name="btnSubmit" value="Retrieve"/>
            <input type="reset" name="btnReset" value="Reset"/>
        </form>    
    </body>
</html>
