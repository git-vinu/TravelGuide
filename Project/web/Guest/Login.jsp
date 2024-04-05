<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
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
<!doctype html>
<html lang="en">
    <head>
        <title>Login 10</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="../Assets/Template/Login/css/style.css">

    </head>
    <body class="img js-fullheight" style="background-image: url(../Assets/Template/Login/images/bg.jpg);">
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                        <h2 class="heading-section">Login </h2>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-4">
                        <div class="login-wrap p-0">
                            <h3 class="mb-4 text-center">Have an account?</h3>
                            <form action="#" class="signin-form" method="post">
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Email" name="txtemail" required>
                                </div>
                                <div class="form-group">
                                    <input id="password-field" type="password" class="form-control" placeholder="Password" name="txtpassword" required>
                                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <div class="form-group">
                                    <button type="submit" name="btnsubmit" class="form-control btn btn-primary submit px-3">Sign In</button>
                                </div>
                                <div class="form-group d-md-flex">
                                    <div class="w-50">
                                        
                                    </div>
                                    <div class="w-50 text-md-right">
                                        <a href="../index.html" style="color: #fff">Home</a>
                                    </div>
                                </div>
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="../Assets/Template/Login/js/jquery.min.js"></script>
        <script src="../Assets/Template/Login/js/popper.js"></script>
        <script src="../Assets/Template/Login/js/bootstrap.min.js"></script>
        <script src="../Assets/Template/Login/js/main.js"></script>

    </body>
</html>

