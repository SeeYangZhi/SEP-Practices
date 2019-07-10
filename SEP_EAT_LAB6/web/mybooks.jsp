<%-- 
    Document   : mybooks
    Created on : Jul 9, 2019, 3:47:46 PM
    Author     : yangz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="main.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>my books</title>
    </head>
    <body>
        <%
            ArrayList<Book> library = new ArrayList<Book>();
            Book b1 = new Book("1234567890", "Book1", "Author1", "Publisher1", 1, 22.2);
            Book b2 = new Book("1234567891", "Book2", "Author2", "Publisher2", 2, 22.3);
            Book b3 = new Book("1234567892", "Book3", "Author3", "Publisher3", 3, 22.4);
            Book b4 = new Book("1234567893", "Book4", "Author4", "Publisher4", 4, 22.5);
            Book b5 = new Book("1234567894", "Book5", "Author5", "Publisher5", 5, 22.6);
            library.add(b1);
            library.add(b2);
            library.add(b3);
            library.add(b4);
            library.add(b5);
            session.setAttribute("Library", library);
            ArrayList<Book> Library = (ArrayList<Book>) session.getAttribute("Library");
            out.println("<table border='1' align=center>");
            out.println("<tr>" + "<th>" + "ISBN" + "</th>" + "<th>" + "Title" + "</th>" + "<th>" + "Author" + "</th>" + "<th>" + "Publisher" + "</th>" + "<th>" + "Quantity" + "</th>" + "<th>" + "Price" + "</th>" + "</tr>");
            for (Book book : Library) {
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
        %>

    </body>
</html>
