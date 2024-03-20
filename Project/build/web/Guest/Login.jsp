<%-- 
    Document   : Login
    Created on : 6 Feb, 2024, 4:53:03 PM
    Author     : vinum
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>

    </head>
    <body>
        <div class="login">
            <h2 align="center">Login </h2> 

            <%

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
            %>
            <script>
                alert("Invalid Login!!!");
                window.location = "Login.jsp";
            </script>
            <%
                    }
                }

            %>
            <form action="#" method="post">
                <table align="center">
                    <tr>
                        <td><label for="username">Email</label></td>
                        <td><input type="text" id="txtemail" name="txtemail" required></td>
                    </tr>
                    <tr>
                        <td><label for="password">Password</label></td>
                        <td><input type="password" id="txtpassword" name="txtpassword" required></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Login" name="btnsubmit"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <a href="NewUser.jsp">NewUser</a>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>