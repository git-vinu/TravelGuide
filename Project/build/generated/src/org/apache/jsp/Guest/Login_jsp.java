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
      response.setContentType("text/html");
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
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\n');


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
      out.write("<script>\n");
      out.write("    alert(\"Invalid Login!!!\");\n");
      out.write("    window.location = \"Login.jsp\";\n");
      out.write("</script>\n");

        }
    }


      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <title>Login 10</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Assets/Template/Login/css/style.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body class=\"img js-fullheight\" style=\"background-image: url(../Assets/Template/Login/images/bg.jpg);\">\n");
      out.write("        <section class=\"ftco-section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row justify-content-center\">\n");
      out.write("                    <div class=\"col-md-6 text-center mb-5\">\n");
      out.write("                        <h2 class=\"heading-section\">Login </h2>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row justify-content-center\">\n");
      out.write("                    <div class=\"col-md-6 col-lg-4\">\n");
      out.write("                        <div class=\"login-wrap p-0\">\n");
      out.write("                            <h3 class=\"mb-4 text-center\">Have an account?</h3>\n");
      out.write("                            <form action=\"#\" class=\"signin-form\" method=\"post\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input type=\"email\" class=\"form-control\" placeholder=\"Email\" name=\"txtemail\" required>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input id=\"password-field\" type=\"password\" class=\"form-control\" placeholder=\"Password\" name=\"txtpassword\" required>\n");
      out.write("                                    <span toggle=\"#password-field\" class=\"fa fa-fw fa-eye field-icon toggle-password\"></span>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <button type=\"submit\" name=\"btnsubmit\" class=\"form-control btn btn-primary submit px-3\">Sign In</button>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group d-md-flex\">\n");
      out.write("                                    <div class=\"w-50\">\n");
      out.write("                                        \n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"w-50 text-md-right\">\n");
      out.write("                                        <a href=\"../index.html\" style=\"color: #fff\">Home</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <script src=\"../Assets/Template/Login/js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"../Assets/Template/Login/js/popper.js\"></script>\n");
      out.write("        <script src=\"../Assets/Template/Login/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"../Assets/Template/Login/js/main.js\"></script>\n");
      out.write("\n");
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
