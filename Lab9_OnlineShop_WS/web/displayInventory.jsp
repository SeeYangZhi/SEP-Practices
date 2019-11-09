<%-- 
    Document   : displayInventory
    Created on : 9 Nov, 2019, 2:49:52 PM
    Author     : yangz
--%>

<%@page import="entity.Inventory"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Inventory</title>
    </head>
    <body>
        <h1>Display Car</h1>
        <%
            int Quantity;
            int idTxt;
            String brandTxt;
            String modelTxt;
            String functions;
            ArrayList<Inventory> inventoryList = (ArrayList<Inventory>) session.getAttribute("inventory");
            if ((inventoryList != null) && !inventoryList.isEmpty()) {
                out.print("<table border='0' padding='10'><tr bgcolor='#d6d6c2'><td width='30%'>ID</td>"
                        + "<td width='30%'>Brand</td><td width='20%'>Model</td><td width='20%'>Functions</td><td width='20%'>Quantity</td></tr>");
                for (Inventory inventory : inventoryList) {
                    brandTxt = inventory.getBrand();
                    modelTxt = inventory.getModel();
                    idTxt = inventory.getID();
                    functions = inventory.getFunctions();
                    Quantity = inventory.getQuantity();
                    out.print("<tr bgcolor='#f5f53f'><td>" + idTxt + "</td><td>" + brandTxt + "</td>"
                            + "<td>" + modelTxt + "</td><td>" + functions + "</td><td>" + Quantity);
                    out.print("</td></tr>");
                }
                out.print("</table>");
            } else {
                out.print("Error");
            }
        %>
    </body>
</html>
