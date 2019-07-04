<%-- 
    Document   : updateSubject
    Created on : May 15, 2019, 10:40:58 AM
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
        <form action="displayUpdates.jsp" method="post">
            <table border="0">
                <tr>
                    <td>
                        Subject Code:
                    </td>
                    <td>            
                        <input type="text" name="subjCode" size="50"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Subject Name:
                    </td>
                    <td>            
                        <input type="text" name="subjName" size="50"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Teacher:
                    </td>
                    <td>            
                        <input type="text" name="teacher" size="50"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="btnSubmit" value="Retrieve"/>
                    </td>
                    <td>
                        <input type="reset" name="btnReset" value="Reset"/>
                    </td>
                </tr>
            </table>

        </form>   
    </body>
</html>
