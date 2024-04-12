package org.apache.jsp.LocalGuide;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class ViewMyGBooking_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/LocalGuide/head.jsp");
    _jspx_dependants.add("/LocalGuide/foot.jsp");
  }

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

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>Go Tours</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Assets/Template/main/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Assets/Template/main/css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Assets/Template/form.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Assets/Template/main/css/fontawesome.min.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans|Roboto\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light text-capitalize\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\"><img src=\"../Assets/Template/main/imgs/logo.png\" alt=\"#\" /></a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#show-menu\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("                 <div class=\"collapse navbar-collapse\" id=\"show-menu\">\n");
      out.write("                    <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link\" onclick=\"window.location='HomePage.jsp'\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdownMenuLink\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                My Account\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdownMenuLink\" style=\"background-color: transparent;\">\n");
      out.write("                                <a class=\"dropdown-item\" onclick=\"window.location = 'MyProfile.jsp'\" style=\"background-color: grey\">MyProfile</a>\n");
      out.write("                                <a class=\"dropdown-item\" onclick=\"window.location = 'EditProfile.jsp'\" style=\"background-color: grey\">EditProfile</a>\n");
      out.write("                                <a class=\"dropdown-item\"  onclick=\"window.location = 'ChangePassword.jsp'\" style=\"background-color: grey\">ChangePassword</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\"  onclick=\"window.location='ViewMyGBooking.jsp'\">MyGBooking</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        \n");
      out.write("        <header id=\"home\" style=\"height: 91px;\">\n");
      out.write("            <div class=\"overlay\" style=\"height: 91px;\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <div id=\"tab\" align=\"center\">\n");
      out.write("            <br><br><br><br><br><br>");
      out.write('\n');
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
      out.write("        <title>Guide Booking</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    ");

        if (request.getParameter("acid") != null) {
            String upQry = "update tbl_guidebooking set guidebooking_status='1' where guidebooking_id ='" + request.getParameter("acid") + "'";
         
            if (con.executeCommand(upQry)) {
                out.println("<script>alert(Accepted)</script>");
            }
        }

        if (request.getParameter("eid") != null) {
            String upQry = "update tbl_guidebooking set guidebooking_status='2' where guidebooking_id ='" + request.getParameter("eid") + "'";
            if (con.executeCommand(upQry)) {
                out.println("<script>alert(Rejected)</script>");
            }
        }
    
      out.write("\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <h1>My Bookings</h1>\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <th>Sl.No</th>\n");
      out.write("                <th>User Name</th>\n");
      out.write("                <th>Booking Date</th>\n");
      out.write("                <th>Booking Time</th>\n");
      out.write("                <th>Booked Date</th>\n");
      out.write("                <th>Hotel Details</th>\n");
      out.write("                <th>User Contact</th>\n");
      out.write("                <th>User Address</th>\n");
      out.write("                <th>Status</th>\n");
      out.write("            </tr>\n");
      out.write("            ");


                int i = 0;
                String selQry = "select * from tbl_guidebooking s inner join tbl_user c on s.user_id=c.user_id where guide_id='" + session.getAttribute("lid") + "'";
//                out.print(selQry);
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
      out.print( rs.getString("guidebooking_date"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString("guidebooking_time"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString("guidebooking_curent_date"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString("guidebooking_content"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString("user_contact"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString("user_address"));
      out.write("</td>\n");
      out.write("                <td>\n");
      out.write("                \n");
      out.write("                ");

                        if (rs.getInt("guidebooking_status") == 0) {
                    
      out.write("\n");
      out.write("                    <a href=\"ViewMyGBooking.jsp?acid=");
      out.print(rs.getString("guidebooking_id"));
      out.write("\">Accept</a>\n");
      out.write("                    <a href=\"ViewMyGBooking.jsp?eid=");
      out.print(rs.getString("guidebooking_id"));
      out.write("\">Reject</a>\n");
      out.write("                    ");

                    } else if (rs.getInt("guidebooking_status") == 1) {
                    
      out.write("\n");
      out.write("                    <a href=\"UserChat/Chat.jsp?id=");
      out.print(rs.getString("user_id"));
      out.write("\">Chat</a> |\n");
      out.write("                    <a href=\"ViewMyGBooking.jsp?eid=");
      out.print(rs.getString("guidebooking_id"));
      out.write("\">Reject</a>\n");
      out.write("                    ");

                    } else if (rs.getInt("guidebooking_status") == 2) {
                    
      out.write("\n");
      out.write("                    <a href=\"ViewMyGBooking.jsp?acid=");
      out.print(rs.getString("guidebooking_id"));
      out.write("\">Accept</a>\n");
      out.write("                    ");

                        }

                    
      out.write("\n");
      out.write("                    </td>\n");
      out.write("            </tr>\n");
      out.write("            ");

                }


            
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("    ");
      out.write("<br><br><br><br><br>\n");
      out.write("</div>\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"#\"><i class=\"fab fa-facebook-f\"></i></a></li>\n");
      out.write("                    <li><a href=\"#\"><i class=\"fab fa-twitter\"></i></a></li>\n");
      out.write("                    <li><a href=\"#\"><i class=\"fab fa-linkedin-in\"></i></a></li>\n");
      out.write("                    <li><a href=\"#\"><i class=\"fab fa-google-plus-g\"></i></a></li>\n");
      out.write("                </ul>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 col-12\">\n");
      out.write("                        <div class=\"item\">\n");
      out.write("                            <h4 class=\"text-uppercase\">Contact us</h4>\n");
      out.write("                            <p class=\"address\">\n");
      out.write("                                123 Second Street Fifth <br>\n");
      out.write("                                Avenue,<br>\n");
      out.write("                                Manhattan, New York<br>\n");
      out.write("                                +987 654 3210\n");
      out.write("                            </p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 col-12\">\n");
      out.write("                        <div class=\"item\">\n");
      out.write("                            <h4 class=\"text-uppercase\">additional links</h4>\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"#\">About us</a></li>\n");
      out.write("                                <li><a href=\"#\">Terms and conditions</a></li>\n");
      out.write("                                <li><a href=\"#\">Privacy policy</a></li>\n");
      out.write("                                <li><a href=\"#\">News</a></li>\n");
      out.write("                                <li><a href=\"#\">Contact us</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 col-12\">\n");
      out.write("                        <div class=\"item date\">\n");
      out.write("                            <h4 class=\"text-uppercase\">resent posts</h4>\n");
      out.write("                            <p><a href=\"#\">01/03/2019</a></p>\n");
      out.write("                            <p><a href=\"#\">08/05/2019</a></p>\n");
      out.write("                            <p><a href=\"#\">01/03/2019</a></p>\n");
      out.write("                            <p><a href=\"#\">08/05/2019</a></p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 col-12\">\n");
      out.write("                        <div class=\"item\">\n");
      out.write("                            <h4 class=\"text-uppercase\">newsletter</h4>\n");
      out.write("                            <form>\n");
      out.write("                                <input type=\"text\" placeholder=\"Name\">\n");
      out.write("                                <input type=\"email\" placeholder=\"Email\">\n");
      out.write("                                <input type=\"submit\" value=\"Submit\">\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"copyright text-center\">\n");
      out.write("                <p>Copyright 2019  Design by <a href=\"https://html.design\">Free Html Templates</a></p>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        \n");
      out.write("        <script src=\"../Assets/Template/main/js/jquery-3.3.1.min.js\"></script>\n");
      out.write("        <script src=\"../Assets/Template/main/js/bootstrap.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>");
      out.write("\n");
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
