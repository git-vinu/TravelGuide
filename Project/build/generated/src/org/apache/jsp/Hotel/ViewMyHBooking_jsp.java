package org.apache.jsp.Hotel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class ViewMyHBooking_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Hotel Booking</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    ");

    if(request.getParameter("did") != null){
            String upQry = "update tbl_hotel set hotel_status='1' where hotel_id='" + request.getParameter("hid") + "'";
            if (con.executeCommand(upQry)){
                out.println("<script>alert(Accepted)</script>");
                }
    }
    
    if(request.getParameter("eid") != null){
            String upQry = "update tbl_hotel set hotel_status='1' where hotel_id='" + request.getParameter("hid") + "'";
            if (con.executeCommand(upQry)){
                out.println("<script>alert(Rejected)</script>");
                }
    }
    
      out.write("\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <h1>My Hotel Bookings</h1>\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <th>Sl.No</th>\n");
      out.write("                <th>Hotel Name</th>\n");
      out.write("                <th>Booking Date</th>\n");
      out.write("                <th>Booking Time</th>\n");
      out.write("                <th>Booked Date</th>\n");
      out.write("                <th>Hotel Details</th>\n");
      out.write("                <th>Hotel Contact</th>\n");
      out.write("                <th>Hotel Address</th>\n");
      out.write("                <th>Status</th>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            ");


                int i = 0;
                String selQry = "select * from tbl_hotelbooking s inner join tbl_user c on s.user_id=c.user_id where hotel_id='" + session.getAttribute("hid") + "'";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    i++;

            
      out.write("\n");
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString("user_name"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString("hotelbooking_date"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString("hotelbooking_time"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString("hotelbooking_curent_date"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString("hotelbooking_content"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString("user_contact"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString("user_address"));
      out.write("</td>\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"ViewMyHBooking.jsp?did=");
      out.print(rs.getString("hotel_id"));
      out.write("\">Accept</a>\n");
      out.write("                    <a href=\"ViewMyHBooking.jsp?eid=");
      out.print(rs.getString("hotel_id"));
      out.write("\">Reject</a>\n");
      out.write("                </td>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("            ");

                }


            
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
