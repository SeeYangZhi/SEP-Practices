package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class processCreate_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Create Account</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String userid = request.getParameter("userid");
            String password = request.getParameter("password");
            if (userid.equals("") && password.equals("")) {
                response.sendRedirect("createAccount.html");
            } else {
                try {
                    // Step1: Load JDBC Driver
                    Class.forName("com.mysql.jdbc.Driver");
                    // Step 2: Define Connection URL
                    String connURL = "jdbc:mysql://localhost/school?user=root&password=12345";
                    // Step 3: Establish connection to URL
                    Connection conn = DriverManager.getConnection(connURL);
                    String insertStr = "INSERT INTO login(userid,password) values(?,?)";
                    PreparedStatement pstmt = conn.prepareStatement(insertStr);
                    pstmt.setString(1, userid);
                    pstmt.setString(2, password);
                    int count = pstmt.executeUpdate();
                    if (count > 0) {
                        out.println("<table border='1' align=center>");
                        out.println("<tr>" + "<th>" + "UserID" + "</th>" + "<th>" + "Password" + "</th>" + "</tr>");
                        out.println("<tr>" + "<td>" + userid + "</td>" + "<td>" + password + "</td>" + "</tr>");
                        out.println("</table>");
                    }
                    conn.close();

                } catch (Exception e) {
                    out.print(e.getMessage());
                }
            }
        
      out.write("     </body>\n");
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
