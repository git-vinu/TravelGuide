package org.apache.jsp.Guest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write('\n');
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
      out.write("        <title>Login</title>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"login\">\n");
      out.write("            <h2 align=\"center\">Login </h2> \n");
      out.write("\n");
      out.write("            ");


                if (request.getParameter("btnsubmit") != null) {
                    String email = request.getParameter("txtemail");
                    String password = request.getParameter("txtpassword");

                    String selAdmin = "select * from tbl_admin where admin_email='" + email + "' and admin_password='" + password + "'";
                    ResultSet rsAdmin = con.selectCommand(selAdmin);

                    String selUser = "select * from tbl_user where user_email='" + email + "' and user_password='" + password + "'";
                    ResultSet rsUser = con.selectCommand(selUser);

                    String selAdvicor = "select * from tbl_advicor where advicor_email='" + email + "' and advicor_password='" + password + "'";
                    ResultSet rsAdvicor = con.selectCommand(selAdvicor);
                    
                    String selDriver = "select * from tbl_driver where driver_email='" + email + "' and driver_password='" + password + "'";
                    ResultSet rsDriver = con.selectCommand(selDriver);
                    
                    String selHotel = "select * from tbl_hotel where hotel_email='" + email + "' and hotel_password='" + password + "'";
                    ResultSet rsHotel = con.selectCommand(selHotel);
                    
                    String selGuide = "select * from tbl_guide where guide_email='" + email + "' and guide_password='" + password + "'";
                    ResultSet rsGuide = con.selectCommand(selGuide);

                    if (rsAdmin.next()) {
                        session.setAttribute("aid", rsAdmin.getString("admin_id"));
                        session.setAttribute("aname", rsAdmin.getString("admin_name"));
                        response.sendRedirect("../Admin/HomePage.jsp");
                    } else if (rsUser.next()) {
                        session.setAttribute("uid", rsUser.getString("user_id"));
                        session.setAttribute("uname", rsUser.getString("user_name"));
                        response.sendRedirect("../User/HomePage.jsp");
                    } else if (rsAdvicor.next()) {
                        session.setAttribute("adid", rsAdvicor.getString("advicor_id"));
                        session.setAttribute("adname", rsAdvicor.getString("advicor_name"));
                        response.sendRedirect("../Advisor/HomePage.jsp");
                    } else if (rsDriver.next()) {
                        session.setAttribute("did", rsDriver.getString("driver_id"));
                        session.setAttribute("dname", rsDriver.getString("driver_name"));
                        response.sendRedirect("../Driver/HomePage.jsp");
                    } else if (rsHotel.next()) {
                        session.setAttribute("hid", rsHotel.getString("hotel_id"));
                        session.setAttribute("hname", rsHotel.getString("hotel_name"));
                        response.sendRedirect("../Hotel/HomePage.jsp");
                    } else if (rsGuide.next()) {
                        session.setAttribute("lid", rsGuide.getString("guide_id"));
                        session.setAttribute("lname", rsGuide.getString("guide_name"));
                        response.sendRedirect("../LocalGuide/HomePage.jsp");
                    } else {
            
      out.write("\n");
      out.write("            <script>\n");
      out.write("                alert(\"Invalid Login!!!\");\n");
      out.write("                window.location = \"Login.jsp\";\n");
      out.write("            </script>\n");
      out.write("            ");

                    }
                }

            
      out.write("\n");
      out.write("            <form action=\"#\" method=\"post\">\n");
      out.write("                <table align=\"center\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td><label for=\"username\">Email</label></td>\n");
      out.write("                        <td><input type=\"text\" id=\"txtemail\" name=\"txtemail\" required></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><label for=\"password\">Password</label></td>\n");
      out.write("                        <td><input type=\"password\" id=\"txtpassword\" name=\"txtpassword\" required></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"2\" align=\"center\"><input type=\"submit\" value=\"Login\" name=\"btnsubmit\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"2\" align=\"center\">\n");
      out.write("                            <a href=\"NewUser.jsp\">NewUser</a>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
