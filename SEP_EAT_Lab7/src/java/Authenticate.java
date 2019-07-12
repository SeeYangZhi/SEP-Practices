/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author yangz
 */
@WebServlet(urlPatterns = {"/Authenticate"})
public class Authenticate extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        String userid = request.getParameter("username");
        String password = request.getParameter("password");
        String id = "", pw = "";
        try {
            // Step1: Load JDBC Driver
            Class.forName("com.mysql.jdbc.Driver");
            // Step 2: Define Connection URL
            String connURL = "jdbc:mysql://localhost/onlineshop?user=root&password=12345";
            // Step 3: Establish connection to URL
            Connection conn = DriverManager.getConnection(connURL);
            // Step 4: Create Statement object
//                    Statement stmt = conn.createStatement();
            String insertStr = "select * from login where userid = ? AND password = ?";
            PreparedStatement pstmt = conn.prepareStatement(insertStr);
            pstmt.setString(1, userid);
            pstmt.setString(2, password);
            // Step 5: Execute SQL Command
            ResultSet rs = pstmt.executeQuery();
            // Step 6: Process Result
            while (rs.next()) {
                id = rs.getString("userid");
                pw = rs.getString("password");
            }
            // Step 7: Close connection
            conn.close();

        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        
        if (userid.equals(id) && password.equals(pw)) {
            HttpSession session = request.getSession();
            session.setAttribute("user", "id");
            response.sendRedirect("DisplayTimeTable");
        } else {
            response.sendRedirect("login.html");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
