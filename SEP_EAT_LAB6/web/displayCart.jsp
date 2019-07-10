<%-- 
    Document   : displayCart
    Created on : Jul 10, 2019, 10:13:14 AM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="main.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Cart</title>
    </head>
    <body>

        <%
            try {
                
                ArrayList<Book> library = (ArrayList<Book>) session.getAttribute("Library");
                out.println("<table border='1' align=center>");
                out.println("<tr>" + "<th>" + "ISBN" + "</th>" + "<th>" + "Title" + "</th>" + "<th>" + "Author" + "</th>" + "<th>" + "Publisher" + "</th>" + "<th>" + "Quantity" + "</th>" + "<th>" + "Price" + "</th>" + "</tr>");
                for (Book book : library) {
                    out.println("<tr>");
                    out.println("<td width=100 align = center>" + book.getISBN() + "</td>");
                    out.println("<td width=100 align = center>" + book.getTitle() + "</td>");
                    out.println("<td width=100 align = center>" + book.getAuthor() + "</td>");
                    out.println("<td width=100 align = center>" + book.getPublisher() + "</td>");
                    out.println("<td width=100 align = center>" + book.getQuantity() + "</td>");
                    out.println("<td width=100 align = center>" + book.getPrice() + "</td>");
                    out.println("</tr>");
                }
                out.println("</table>");
            } catch (Exception e) {
                out.print(e);
            }
        %>
        <a href="buybook.jsp">Buy More books</a>
    </body>
</html>
