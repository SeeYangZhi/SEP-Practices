<%-- 
    Document   : login
    Created on : Jul 3, 2019, 10:55:07 AM
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
        <form action="search.jsp" method="post">
            <table border="0">
                <tr>
                    <td>
                        Username:
                    </td>
                    <td>            
                        <input type="text" name="username" size="20"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        Password:
                    </td>
                    <td>            
                        <input type="text" name="password" size="20"/>
                    </td>
                </tr>

                <tr>
                    <td>            
                        <input type="submit" name="submitBtn" value="Login"/>
                    </td>
                    <td>            
                        <input type="reset" name="resetBtn" value="Reset"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
