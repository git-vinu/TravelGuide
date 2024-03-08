package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class District_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      DB.ConnectionClass conn = null;
      synchronized (_jspx_page_context) {
        conn = (DB.ConnectionClass) _jspx_page_context.getAttribute("conn", PageContext.PAGE_SCOPE);
        if (conn == null){
          conn = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("conn", conn, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>District</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String id="",district="";
        if(request.getParameter("btnsub")!=null)
        {
            if(request.getParameter("txt_hidden").equals(""))
            {
            String insQry="insert into tbl_district(district_name)values('"+request.getParameter("district")+"')";
            conn.executeCommand(insQry);
            }
            else{
                String upQry="update tbl_district set district_name='"+request.getParameter("district")+"' where district_id='"+request.getParameter("txt_hidden")+"'";
                conn.executeCommand(upQry);
                response.sendRedirect("District.jsp");
            }
            
            
        }
        if(request.getParameter("did")!=null)
        {
            String delQry="delete from tbl_district where district_id='"+request.getParameter("did")+"'";
            conn.executeCommand(delQry);
            response.sendRedirect("District.jsp");
        }
        
        
        
        if(request.getParameter("eid")!=null)
        {
            String selQ="select * from tbl_district where district_id='"+request.getParameter("eid")+"'";
            ResultSet rss=conn.selectCommand(selQ);
            rss.next();
            id=rss.getString("district_id");
            district=rss.getString("district_name");
        }
        
      out.write("\n");
      out.write("        <form method=\"post\">\n");
      out.write("            <table border=\"1\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>District</td>\n");
      out.write("                    <td><input type=\"text\" name=\"district\" value=\"");
      out.print(district);
      out.write("\">\n");
      out.write("                        <input type=\"hidden\" name=\"txt_hidden\" value=\"");
      out.print(id);
      out.write("\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\"align=\"center\"><input type=\"submit\"name=\"btnsub\"value=\"save\">\n");
      out.write("                        <input type=\"reset\"name=\"btncan\"value=\"cancel\"></td>\n");
      out.write("            </tr>\n");
      out.write("            </table>\n");
      out.write("            <table border=\"1\" align=\"center\">\n");
      out.write("                \n");
      out.write("             <tr>\n");
      out.write("                    <td>SLno</td>\n");
      out.write("                    <td>District</td>\n");
      out.write("                    <td>Action</td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                int i=0;
                String selQry="select * from tbl_district";
                ResultSet rs=conn.selectCommand(selQry);
                while(rs.next())
                {
                    i++;
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(i);
      out.write("</td> \n");
      out.write("                    <td>");
      out.print(rs.getString("district_name"));
      out.write("</td>\n");
      out.write("                    <td><a href=\"District.jsp?did=");
      out.print(rs.getString("district_id"));
      out.write("\">Delete</a>\n");
      out.write("                        <a href=\"District.jsp?eid=");
      out.print(rs.getString("district_id"));
      out.write("\">Edit</a></td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                
                }
                
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("\n");
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
