package org.apache.jsp.LocalGuide;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class HomePage_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>Go Tours</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Assets/Template/main/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Assets/Template/main/css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Assets/Template/main/css/fontawesome.min.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans|Roboto\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light text-capitalize\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\"><img src=\"../../Assets/Template/main/imgs/logo.png\" alt=\"#\" /></a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#show-menu\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"show-menu\">\n");
      out.write("                    <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link\" onclick=\"window.location='HomePage.jsp'\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" onclick=\"window.location='Guest/ChangePassword.jsp'\">ChangePassword</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" onclick=\"window.location='Guest/EditProfile.jsp'\">EditProfile</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\"  onclick=\"window.location='Guest/MyProfile.jsp'\">MyProfile</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\"  onclick=\"window.location='Guest/ViewMyGBooking.jsp'\">MyGBooking</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        \n");
      out.write("        <header id=\"home\">\n");
      out.write("            <div class=\"overlay\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div>\n");
      out.write("                        <h1><span>Amazing</span><br>Santorini 10 Days Tour</h1>\n");
      out.write("                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as</p>\n");
      out.write("                        <button><a href=\"#\" class=\"text-uppercase\">book now</a></button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        \n");
      out.write("        <div class=\"about-us\" id=\"about\">\n");
      out.write("            <div class=\"small-container\">\n");
      out.write("                <h2 class=\"text-center\">Winter <span>Holiday</span></h2>\n");
      out.write("                <p class=\"text-center\">as opposed to using 'Content here, content here', making it look lik</p>\n");
      out.write("                <div>\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-lg-6 col-12 text-center\">\n");
      out.write("                                <div class=\"item\">\n");
      out.write("                                    <img src=\"../Assets/Template/main/imgs/img2.jpg\">\n");
      out.write("                                    <h5 class=\"text-uppercase\">Restaurants</h5>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"item\">\n");
      out.write("                                    <img src=\"../Assets/Template/main/imgs/img1.jpg\">\n");
      out.write("                                    <h5 class=\"text-uppercase\">where to stay</h5>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"item\">\n");
      out.write("                                    <img src=\"../Assets/Template/main/imgs/img4.jpg\">\n");
      out.write("                                    <div>\n");
      out.write("                                        <h5 class=\"text-uppercase\">Sightseeing</h5>\n");
      out.write("                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"item\">\n");
      out.write("                                    <img src=\"../Assets/Template/main/imgs/img3.jpg\">\n");
      out.write("                                    <h5 class=\"text-uppercase\">shops and boutiques</h5>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-lg-6 col-12 text-right\">\n");
      out.write("                                <h4 class=\"text-uppercase\">Engoy <span>holiday</span></h4>\n");
      out.write("                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like</p>\n");
      out.write("                                <button class=\"text-center\"><a href=\"#\" class=\"text-capitalize\">book now</a></button>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"first\"></div>\n");
      out.write("                <div class=\"second\"></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"services\" id=\"service\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <h2 class=\"text-capitalize\">Enjoy <span>Resort</span></h2>\n");
      out.write("                <p>It is a long established fact that a reader will be distracted by the readable content of a o</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"small-container\">\n");
      out.write("                <div id=\"slideToNext\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("                  <div class=\"carousel-inner\">\n");
      out.write("                    <div class=\"carousel-item active\">\n");
      out.write("                      <img src=\"../Assets/Template/main/imgs/pic4.jpg\" class=\"d-block w-100\" alt=\"...\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"carousel-item\">\n");
      out.write("                      <img src=\"../Assets/Template/main/imgs/pic3.jpg\" class=\"d-block w-100\" alt=\"...\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"carousel-item\">\n");
      out.write("                      <img src=\"../Assets/Template/main/imgs/pic2.jpg\" class=\"d-block w-100\" alt=\"...\">\n");
      out.write("                    </div>\n");
      out.write("                  </div>\n");
      out.write("                  <a class=\"carousel-control-prev\" href=\"#slideToNext\" role=\"button\" data-slide=\"prev\">\n");
      out.write("                    <i class=\"fas fa-chevron-left fa-2x\"></i>\n");
      out.write("                    <span class=\"sr-only\">Previous</span>\n");
      out.write("                  </a>\n");
      out.write("                  <a class=\"carousel-control-next\" href=\"#slideToNext\" role=\"button\" data-slide=\"next\">\n");
      out.write("                    <i class=\"fas fa-chevron-right fa-2x\"></i>\n");
      out.write("                    <span class=\"sr-only\">Next</span>\n");
      out.write("                  </a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"agency\" id=\"agency\">\n");
      out.write("            <div class=\"white-overlay\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div>\n");
      out.write("                        <img src=\"../Assets/Template/main/imgs/airplane.png\">\n");
      out.write("                        <div>\n");
      out.write("                            <img src=\"../Assets/Template/main/imgs/pic1.png\">\n");
      out.write("                            <h2 class=\"text-center text-uppercase\">Enjoy <br> All <br> World</h2>\n");
      out.write("                        </div>\n");
      out.write("                        <img src=\"../Assets/Template/main/imgs/airplane.png\">\n");
      out.write("                    </div>\n");
      out.write("                    <p class=\"text-center\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look likeIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as o</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"statistics text-capitalize text-center font-weight-bold\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 col-12\">\n");
      out.write("                        <i class=\"fas fa-umbrella-beach fa-3x\"></i>\n");
      out.write("                        <h3>425</h3>\n");
      out.write("                        <p>Tourists</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 col-12\">\n");
      out.write("                        <i class=\"fas fa-birthday-cake fa-3x\"></i>\n");
      out.write("                        <h3>125</h3>\n");
      out.write("                        <p>years</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 col-12\">\n");
      out.write("                        <i class=\"fa fa-home fa-3x\"></i>\n");
      out.write("                        <h3>325</h3>\n");
      out.write("                        <p>cottages</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 col-12\">\n");
      out.write("                        <i class=\"fas fa-glass-cheers fa-3x\"></i>\n");
      out.write("                        <h3>120</h3>\n");
      out.write("                        <p>restaurants</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"contact\" id=\"contact\">\n");
      out.write("            <div class=\"violet-overlay\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <h2 class=\"text-center\">Get in touch</h2>\n");
      out.write("                    <div class=\"contact-form\">\n");
      out.write("                        <form>\n");
      out.write("                            <input type=\"text\" placeholder=\"Name\">\n");
      out.write("                            <input type=\"email\" placeholder=\"Email\">\n");
      out.write("                            <input type=\"text\" placeholder=\"Phone\">\n");
      out.write("                            <textarea placeholder=\"Message\"></textarea>\n");
      out.write("                            <input type=\"submit\" value=\"SEND\">\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
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
      out.write("            $(function () {\n");
      out.write("                \n");
      out.write("                'use strict';\n");
      out.write("                \n");
      out.write("                var winH = $(window).height();\n");
      out.write("                \n");
      out.write("                $('header').height(winH);  \n");
      out.write("                \n");
      out.write("                $('header .container > div').css('top', (winH / 2) - ( $('header .container > div').height() / 2));\n");
      out.write("                \n");
      out.write("                $('.navbar ul li a.search').on('click', function (e) {\n");
      out.write("                    e.preventDefault();\n");
      out.write("                });\n");
      out.write("                $('.navbar a.search').on('click', function () {\n");
      out.write("                    $('.navbar form').fadeToggle();\n");
      out.write("                });\n");
      out.write("                \n");
      out.write("                $('.navbar ul.navbar-nav li a').on('click', function (e) {\n");
      out.write("                    \n");
      out.write("                    var getAttr = $(this).attr('href');\n");
      out.write("                    \n");
      out.write("                    e.preventDefault();\n");
      out.write("                    $('html').animate({scrollTop: $(getAttr).offset().top}, 1000);\n");
      out.write("                });\n");
      out.write("            })\n");
      out.write("        </script>\n");
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