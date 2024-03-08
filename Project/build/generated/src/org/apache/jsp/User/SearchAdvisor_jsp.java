package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class SearchAdvisor_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Search Hotel</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form method=\"POST\">\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <th colspan=\"2\">Search Advisor</th>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><label for=\"district\">District:</label></td>\n");
      out.write("                <td>\n");
      out.write("                    <select id=\"district\" name=\"district\" required onchange=\"getPlace(this.value)\">\n");
      out.write("                        <option value=\"\">Select District</option>\n");
      out.write("                        ");
String insQrya = "select * from tbl_district";
                            ResultSet rsla = con.selectCommand(insQrya);
                            while (rsla.next()) {
                        
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rsla.getString("district_id"));
      out.write('"');
      out.write('>');
      out.print(rsla.getString("district_name"));
      out.write("</option>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><label>Place</label></td>\n");
      out.write("                <td>\n");
      out.write("                    <select id=\"sel_place\" name=\"sel_place\" required>\n");
      out.write("                        <option value=\"\">Select Place</option>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("                    <input type=\"submit\" name=\"btnsubmit\" value=\"Search\">\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <br>\n");
      out.write("            <div id=\"tab\">\n");
      out.write("\n");
      out.write("                <table border=\"1\" cellpadding=\"10\" align=\"\">\n");
      out.write("\n");
      out.write("                    ");

                        if (request.getParameter("btnsubmit") != null) {

                            String placeName = request.getParameter("sel_place");
                            
                            String sel = "select * from tbl_advicor where place_id='"+placeName+"'";
                            ResultSet rs = con.selectCommand(sel);
                            while (rs.next()) {

                    
      out.write("\n");
      out.write("                    <tr><td colspan=\"2\"><img src=\"../Assets/Files/");
      out.print(rs.getString("advicor_photo"));
      out.write("\" width=\"150\" height=\"150\"></td>\n");
      out.write("                    <tr><th>Name</th><td>");
      out.print(rs.getString("advicor_name"));
      out.write("</td></tr>\n");
      out.write("                    <tr><th>Contact</th> <td>");
      out.print(rs.getString("advicor_contact"));
      out.write("</td></tr>\n");
      out.write("                    <tr><th>Email</th> <td>");
      out.print(rs.getString("advicor_email"));
      out.write("</td></tr>\n");
      out.write("                    <tr><th>Address</th> <td>");
      out.print(rs.getString("advicor__address"));
      out.write("</td></tr>\n");
      out.write("                    <tr><td><a href=\"AdvisorBooking.jsp?id=");
      out.print(rs.getString("advicor_id"));
      out.write("\">Book Now</a></td></tr>\n");
      out.write("\n");
      out.write("                    ");

                            }

                        }
                    
      out.write("\n");
      out.write("                </table>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </body>\n");
      out.write("\n");
      out.write("                <script src=\"../Assets/jQuery/jQuery.js\"></script>\n");
      out.write("                <script>\n");
      out.write("                        function getPlace(did)\n");
      out.write("                        {\n");
      out.write("                            $.ajax({\n");
      out.write("                                url: \"../Assets/AjaxPages/AjaxPlace.jsp?did=\" + did,\n");
      out.write("                                success: function(result) {\n");
      out.write("                                    $(\"#sel_place\").html(result);\n");
      out.write("\n");
      out.write("                                }\n");
      out.write("                            });\n");
      out.write("                        }</script>\n");
      out.write("\n");
      out.write("                </html>\n");
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
