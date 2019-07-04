<%-- 
    Document   : ui_action
    Created on : May 8, 2019, 10:14:51 AM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UI TextArea</title>
    </head>
    <body>
        <%
            String buttonpressed = request.getParameter("submit");
//            String text1 = request.getParameter("text1");
//            String textarea1 = request.getParameter("textarea1");
//            String radio1 = request.getParameter("radio1");
//            String chkbox1 = request.getParameter("checkbox1");
//            String[] checkbox1 = request.getParameterValues("checkbox1");
            String sel1 = request.getParameter("mlist1");
            String[] mlist1 = request.getParameterValues("mlist1");


        %>

        Submit Button pressed is: <%= buttonpressed%> <br/>
        <%--        text1 is: <%= text1%> <br/>
                textarea1 is:<br/>
                <p><%=textarea1%></p>
                Selected item is: <%= radio1%> <br>--%>

        <%--       First Selected item is: <%= chkbox1%> <br>
               Selected Items are:<br>
               <% for (int i = 0; i < checkbox1.length; i++) {%>
               <%= checkbox1[i]%><br>
               <% }%>
        --%>

        First Selected item is: <%= sel1%><br>
        Selected Items are:<br>
        <% for (int i = 0; i < mlist1.length; i++) {%>
        <%= mlist1[i]%><br>
        <% }%>



    </body>
</html>
