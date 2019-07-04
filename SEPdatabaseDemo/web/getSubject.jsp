<%-- 
    Document   : getSubject
    Created on : May 15, 2019, 9:38:51 AM
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
        <form action="displaySubjects.jsp" method="post">
            Retrieve subject taught by teacher: <input type="text" name="teacher"><br/>
            <input type="submit" name="btnSubmit" value="Retrieve"/>
            <input type="reset" name="btnReset" value="Reset"/>
        </form>
    </body>
</html>
