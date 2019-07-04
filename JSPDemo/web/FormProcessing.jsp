<%-- 
    Document   : FormProccessing
    Created on : May 8, 2019, 10:08:17 AM
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
        <form action="ui_action.jsp" name="form1" method="post">
            <!--            <select  name="list1" size="5">
                            <option value="apple" selected>apple</option>
                            <option value="orange">orange</option>
                            <option value="banana">banana</option>
                            <option value="papaya">papaya</option>
                            <option value="lemon">durian</option>
                            <option value="watermelon">watermelon</option>
                        </select><br>-->

            <!--            <input type="radio" name="radio1" value="circle">circle<br>
                        <input type="radio" name="radio1" value="square">square<br>
                        <input type="radio" name="radio1" value="rectangle">rectangle<br>
                        <input type="radio" name="radio1" value="oval">oval<br>-->

            <!--            <input type="checkbox" name="checkbox1" value="circle" checked> circle<br>
                        <input type="checkbox" name="checkbox1" value="square">square<br>
                        <input type="checkbox" name="checkbox1" value="rectangle">rectangle<br>
                        <input type="checkbox" name="checkbox1" value="oval">oval<br>-->

            <select  name="mlist1" size="4" multiple>
                <option value="ICT" selected>ICT</option>
                <option value="CLS">CLS</option>
                <option value="EEE" selected>EEE</option>
                <option value="BEM">BEM</option>
            </select><br>



            <!--            <input type="text" name="text1" size="32"><br/>
                        <textarea name="textarea1" cols="32" rows="5"></textarea> <br/>-->

            <input type="submit" name="submit" value="button1"><br/>
            <input type="submit" name="submit" value="button2"><br/>
            <input type="submit" name="submit" value="button3"><br/>
            <input type="Reset" value="Clear">

        </form>
    </body>
</html>
