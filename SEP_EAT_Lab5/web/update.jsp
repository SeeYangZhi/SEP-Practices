<%-- 
    Document   : update
    Created on : 4 Jul, 2019, 10:00:59 PM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String ID = request.getParameter("id");
    String status = (String) session.getAttribute("LOGIN-STATUS");
    if (status == null || status != null && !status.equals("YES")) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update</title>
    </head>
    <body>
        <form action="processUpdate.jsp" method="post">
            <table border="0" align="center">
                <tr style="background:Lightgrey;"><th>Update Record</th></tr>
                <tr><td>Brand:</td> <td><input type="text" name="brand"></td></tr>
                <tr><td>Model: </td><td><input type="text" name="model"></td></tr>
                <tr><td>Functions:</td> <td><input type="text" name="functions"></td></tr>
                <tr><td>Quantity:</td> <td><input type="text" name="quantity"></td></tr>
                <tr><td></td>
                    <td align="right">
                        <input type="submit" name="submit" value="submit">
                        <input type="reset" name="reset" value="reset">
                        <input type="hidden" name="id" value=<%=ID%>>
                    </td>
                </tr>
            </table>
        </form>


    </body>
</html>
