package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Place_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Place Registration</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");


            if (request.getParameter("btnsubmit") != null) {
                String placeName = request.getParameter("placeName");
                String district = request.getParameter("district");
                String insQry = "insert into tbl_place(place_name,district_id)values('" + placeName + "','" + district + "') ";
                if (con.executeCommand(insQry)) {
        
      out.write("\n");
      out.write("        <script>\n");
      out.write("            alert(\"RecordSaved\");\n");
      out.write("            window.location = \"Place.jsp\";\n");
      out.write("        </script>\n");
      out.write("        ");

        } else {
        
      out.write("\n");
      out.write("        <script>\n");
      out.write("            alert(\"Failed\");\n");
      out.write("            window.location = \"District.jsp\";\n");
      out.write("        </script>\n");
      out.write("        ");

                }
            }

            if (request.getParameter("did") != null) {
                String did = request.getParameter("did");
                String delQry = "delete from tbl_place where place_id='" + did + "'";
                con.executeCommand(delQry);
            }

        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <h1> Place Registration </h1>\n");
      out.write("        <form name=\"frmDistrict\" method=\"POST\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td><label for=\"placeName\">Place Name:</label></td>\n");
      out.write("                    <td><input type=\"text\" id=\"placeName\" name=\"placeName\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><label for=\"district\">District:</label></td>\n");
      out.write("                    <td>\n");
      out.write("                        <select id=\"district\" name=\"district\" required>\n");
      out.write("                            <option value=\"\">Select District</option>\n");
      out.write("                            ");
                                String insQry = "select * from tbl_district";
                                ResultSet rs = con.selectCommand(insQry);
                                while (rs.next()) {
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rs.getString("district_id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("district_name"));
      out.write("</option>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <input type=\"submit\" name=\"btnsubmit\" value=\"Submit\"/>\n");
      out.write("                        <input type=\"reset\" name=\"cancel\" value=\"Cancel\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <td>Sl.no</td>\n");
      out.write("                <td>Place</td>\n");
      out.write("                <td>Action</td>\n");
      out.write("            </tr>\n");
      out.write("            ");
                int i = 0;
                String selQry = "select * from tbl_place s inner join tbl_district c on s.district_id=c.district_id";
                ResultSet rsl = con.selectCommand(selQry);
                while (rsl.next()) {
                    i++;
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rsl.getString("place_name"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rsl.getString("district_name"));
      out.write("</td>\n");
      out.write("                <td><a href=\"Place.jsp?did=");
      out.print(rsl.getString("place_id"));
      out.write("\">Delete</a></td>\n");
      out.write("            </tr>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </body> \n");
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
