package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class FormProcessing_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"ui_action.jsp\" name=\"form1\" method=\"post\">\n");
      out.write("            <!--            <select  name=\"list1\" size=\"5\">\n");
      out.write("                            <option value=\"apple\" selected>apple</option>\n");
      out.write("                            <option value=\"orange\">orange</option>\n");
      out.write("                            <option value=\"banana\">banana</option>\n");
      out.write("                            <option value=\"papaya\">papaya</option>\n");
      out.write("                            <option value=\"lemon\">durian</option>\n");
      out.write("                            <option value=\"watermelon\">watermelon</option>\n");
      out.write("                        </select><br>-->\n");
      out.write("\n");
      out.write("            <!--            <input type=\"radio\" name=\"radio1\" value=\"circle\">circle<br>\n");
      out.write("                        <input type=\"radio\" name=\"radio1\" value=\"square\">square<br>\n");
      out.write("                        <input type=\"radio\" name=\"radio1\" value=\"rectangle\">rectangle<br>\n");
      out.write("                        <input type=\"radio\" name=\"radio1\" value=\"oval\">oval<br>-->\n");
      out.write("\n");
      out.write("            <!--            <input type=\"checkbox\" name=\"checkbox1\" value=\"circle\" checked> circle<br>\n");
      out.write("                        <input type=\"checkbox\" name=\"checkbox1\" value=\"square\">square<br>\n");
      out.write("                        <input type=\"checkbox\" name=\"checkbox1\" value=\"rectangle\">rectangle<br>\n");
      out.write("                        <input type=\"checkbox\" name=\"checkbox1\" value=\"oval\">oval<br>-->\n");
      out.write("\n");
      out.write("            <select  name=\"mlist1\" size=\"4\" multiple>\n");
      out.write("                <option value=\"ICT\" selected>ICT</option>\n");
      out.write("                <option value=\"CLS\">CLS</option>\n");
      out.write("                <option value=\"EEE\" selected>EEE</option>\n");
      out.write("                <option value=\"BEM\">BEM</option>\n");
      out.write("            </select><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!--            <input type=\"text\" name=\"text1\" size=\"32\"><br/>\n");
      out.write("                        <textarea name=\"textarea1\" cols=\"32\" rows=\"5\"></textarea> <br/>-->\n");
      out.write("\n");
      out.write("            <input type=\"submit\" name=\"submit\" value=\"button1\"><br/>\n");
      out.write("            <input type=\"submit\" name=\"submit\" value=\"button2\"><br/>\n");
      out.write("            <input type=\"submit\" name=\"submit\" value=\"button3\"><br/>\n");
      out.write("            <input type=\"Reset\" value=\"Clear\">\n");
      out.write("\n");
      out.write("        </form>\n");
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
