<%-- 
    Document   : add2Cart
    Created on : Jul 9, 2019, 4:31:43 PM
    Author     : yangz
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="main.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add2Cart</title>
    </head>
    <body>
        <%
            try {
                ArrayList<Book> library = (ArrayList<Book>) session.getAttribute("Library");
                String ISBN = (String) request.getParameter("ISBN");
                String Title = (String) request.getParameter("Title");
                String Author = (String) request.getParameter("Author");
                String Publisher = (String) request.getParameter("Publisher");
                int Quantity = Integer.parseInt(request.getParameter("Quantity"));
                double Price = Double.parseDouble(request.getParameter("Price"));
                Book newBook = new Book(ISBN, Title, Author, Publisher, Quantity, Price);
                library.add(newBook);
                session.setAttribute("Library", library);
                response.sendRedirect("displayCart.jsp");
            } catch (Exception e) {
                out.print(e);
            }

        %>
    </body>
</html>
