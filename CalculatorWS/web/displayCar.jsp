<%-- 
    Document   : displayCar
    Created on : Oct 30, 2019, 9:13:55 AM
    Author     : yangz
--%>

<%@page import="entity.Car"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Car</title>
    </head>
    <body>
        <h1>Display Car</h1>
        <%
            int wheelsTxt;
            String brandTxt;
            String modelTxt;
            double priceTxt;
            ArrayList<Car> carList = (ArrayList<Car>) session.getAttribute("Car");
            if ((carList != null) && !carList.isEmpty()) {
                out.print("<table border='0' padding='10'><tr bgcolor='#d6d6c2'><td width='30%'>Brand</td>"
                        + "<td width='30%'>Model</td><td width='20%'>Price</td><td width='20%'>Wheels</td></tr>");
                for (Car car : carList) {
                    brandTxt = car.getBrand();
                    modelTxt = car.getModel();
                    priceTxt = car.getPrice();
                    wheelsTxt = car.getWheels();
                    out.print("<tr bgcolor='#f5f53f'><td>" + brandTxt + "</td><td>" + modelTxt + "</td>"
                            + "<td>" + priceTxt + "</td><td>" + wheelsTxt + "</td><td>");
                    out.print("</td></tr>");
                }
                out.print("</table>");
            } else {
                out.print("Error");
            }
        %>
    </body>
</html>
