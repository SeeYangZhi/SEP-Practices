package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class displayUpdates_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

//            String tcher = request.getParameter("teacher");
//            String subjCode = request.getParameter("subjCode");
//            String subjName = request.getParameter("subjName");
            String userid = request.getParameter("userid");
            String password = request.getParameter("password");
            int count = 0;

//            String insertstr = "INSERT INTO subject VALUES ('ST1020','DEUI', 'See')";
//            String insertstr = "UPDATE subject SET subjCode = 'ST1030' WHERE subjName = 'DEUI'";
//            String insertstr = "DELETE FROM subject WHERE subjCode = 'st0110'";
//            String insertstr = "INSERT INTO user(userid,password) VALUES(?,?)";
            String insertstr = "select count(*) as total from user where userid=? and password=?";

            try {
                // Step1: Load JDBC Driver
                Class.forName("com.mysql.jdbc.Driver");
                // STEP 2 & 3 
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/school?user=root&password=12345");
                // STEP 4
                PreparedStatement pstmt = conn.prepareStatement(insertstr);
                pstmt.setString(1, userid);
                pstmt.setString(2, password);
                // STEP 5
                ResultSet rs = pstmt.executeQuery();
                rs.next();
//                count = pstmt.executeUpdate();
                count = rs.getInt("count");
                // STEP 6
                if (count >= 1) {
                    out.println("Welcome " + userid + "</br>");
//                    out.println(count + " rows affected");
                } else {
                    response.sendRedirect("login.jsp?Login=fail");
                }
                // STEP 7
                conn.close();
            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
        
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
