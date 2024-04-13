<%-- 
    Document   : HomePage
    Created on : May 5, 2021, 2:13:50 PM
    Author     : Pro-TECH
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <%@include file="Header.jsp" %>
    </head>

    <body>
        <section class="main_content dashboard_part">
            <!-- menu  -->

            <!--/ menu  -->
            <div class="main_content_iner ">
                <div class="container-fluid p-0">
                    <div class="row justify-content-center">
                        <div class="col-lg-12">
                            <div class="single_element">
                                <div class="quick_activity">
                                    <div class="row">

                                        <div class="col-12">
                                            <div class="quick_activity_wrap">
                                                <div class="single_quick_activity d-flex">
                                                    <div class="icon">
                                                        <img src="../Assets/admin/img/icon/College.png" alt="">
                                                    </div>
                                                    <div class="count_content">
                                                        <h3><span class="counter">
                                                                <%
                                                                    String csel = "select count(*) as c from tbl_user ";
                                                                    ResultSet cc = con.selectCommand(csel);
                                                                    if (cc.next()) {
                                                                        out.println(cc.getString("c"));
                                                                    }
                                                                %>

                                                            </span> </h3>
                                                        <p>Users</p>

                                                    </div>                                                                    

                                                </div>

                                                <div class="single_quick_activity d-flex">
                                                    <div class="icon">
                                                        <img src="../Assets/admin/img/icon/College.png" alt="">
                                                    </div>
                                                    <div class="count_content">
                                                        <h3><span class="counter">
                                                                <%
                                                                    String csel2 = "select count(*) as c from tbl_advicor ";
                                                                    ResultSet cc2 = con.selectCommand(csel2);
                                                                    if (cc2.next()) {
                                                                        out.println(cc2.getString("c"));
                                                                    }
                                                                %>

                                                            </span> </h3>
                                                        <p>Advicor</p>

                                                    </div>                                                                    

                                                </div>
                                                <div class="single_quick_activity d-flex">
                                                    <div class="icon">
                                                        <img src="../Assets/admin/img/icon/College.png" alt="">
                                                    </div>
                                                    <div class="count_content">
                                                        <h3><span class="counter">
                                                                <%
                                                                    String csel3 = "select count(*) as c from tbl_driver ";
                                                                    ResultSet cc3 = con.selectCommand(csel3);
                                                                    if (cc3.next()) {
                                                                        out.println(cc3.getString("c"));
                                                                    }
                                                                %>

                                                            </span> </h3>
                                                        <p>Driver</p>

                                                    </div>                                                                    

                                                </div>
                                                <div class="single_quick_activity d-flex">
                                                    <div class="icon">
                                                        <img src="../Assets/admin/img/icon/College.png" alt="">
                                                    </div>
                                                    <div class="count_content">
                                                        <h3><span class="counter">
                                                                <%
                                                                    String csel4 = "select count(*) as c from tbl_guide ";
                                                                    ResultSet cc4 = con.selectCommand(csel4);
                                                                    if (cc4.next()) {
                                                                        out.println(cc4.getString("c"));
                                                                    }
                                                                %>

                                                            </span> </h3>
                                                        <p>Guide</p>

                                                    </div>                                                                    

                                                </div>
                                                <div class="single_quick_activity d-flex">
                                                    <div class="icon">
                                                        <img src="../Assets/admin/img/icon/College.png" alt="">
                                                    </div>
                                                    <div class="count_content">
                                                        <h3><span class="counter">
                                                                <%
                                                                    String csel5 = "select count(*) as c from tbl_hotel ";
                                                                    ResultSet cc5 = con.selectCommand(csel5);
                                                                    if (cc5.next()) {
                                                                        out.println(cc5.getString("c"));
                                                                    }
                                                                %>

                                                            </span> </h3>
                                                        <p>Hotel</p>

                                                    </div>                                                                    

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-12">
                            <div class="white_box card_height_10">
                                <div class="box_header border_bottom_1px  ">
                                    <div class="main-title">
                                        <h3 class="mb_25">Users</h3>
                                    </div>
                                </div>
                                <div class="staf_list_wrapper sraf_active owl-carousel">


                                    <%
                                        String cQry = "select * from tbl_user c inner join tbl_place p on p.place_id=c.place_id ORDER BY RAND()";
                                        ResultSet crs = con.selectCommand(cQry);
                                        while (crs.next()) {

                                    %>


                                    <!-- single carousel  -->
                                    <div class="single_staf">
                                        <div class="staf_thumb">
                                            <img src="../Assets/Files/<%=crs.getString("user_photo")%>" alt="">
                                        </div>
                                        <h4><%=crs.getString("user_name")%></h4>
                                        <p><%=crs.getString("place_name")%></p>
                                    </div>



                                    <%

                                        }
                                    %>
                                </div>
                            </div>
                            <div class="white_box card_height_10">
                                <div class="box_header border_bottom_1px  ">
                                    <div class="main-title">
                                        <h3 class="mb_25">Advicor</h3>
                                    </div>
                                </div>
                                <div class="staf_list_wrapper sraf_active owl-carousel">


                                    <%
                                        String cQrya = "select * from tbl_advicor c inner join tbl_place p on p.place_id=c.place_id ORDER BY RAND()";
                                        ResultSet crsa = con.selectCommand(cQrya);
                                        while (crsa.next()) {

                                    %>


                                    <!-- single carousel  -->
                                    <div class="single_staf">
                                        <div class="staf_thumb">
                                            <img src="../Assets/Files/<%=crsa.getString("advicor_photo")%>" alt="">
                                        </div>
                                        <h4><%=crsa.getString("advicor_name")%></h4>
                                        <p><%=crsa.getString("place_name")%></p>
                                    </div>



                                    <%

                                        }
                                    %>
                                </div>
                            </div>

                            <div class="white_box card_height_10">
                                <div class="box_header border_bottom_1px  ">
                                    <div class="main-title">
                                        <h3 class="mb_25">Driver</h3>
                                    </div>
                                </div>
                                <div class="staf_list_wrapper sraf_active owl-carousel">


                                    <%
                                        String cQryb = "select * from tbl_driver c inner join tbl_place p on p.place_id=c.place_id ORDER BY RAND()";
                                        ResultSet crsb = con.selectCommand(cQryb);
                                        while (crsb.next()) {

                                    %>


                                    <!-- single carousel  -->
                                    <div class="single_staf">
                                        <div class="staf_thumb">
                                            <img src="../Assets/Files/<%=crsb.getString("driver_photo")%>" alt="">
                                        </div>
                                        <h4><%=crsb.getString("driver_name")%></h4>
                                        <p><%=crsb.getString("place_name")%></p>
                                    </div>



                                    <%

                                        }
                                    %>
                                </div>
                            </div>

                            <div class="white_box card_height_10">
                                <div class="box_header border_bottom_1px  ">
                                    <div class="main-title">
                                        <h3 class="mb_25">Guide</h3>
                                    </div>
                                </div>
                                <div class="staf_list_wrapper sraf_active owl-carousel">


                                    <%
                                        String cQryc = "select * from tbl_guide c inner join tbl_place p on p.place_id=c.place_id ORDER BY RAND()";
                                        ResultSet crsc = con.selectCommand(cQryc);
                                        while (crsc.next()) {

                                    %>


                                    <!-- single carousel  -->
                                    <div class="single_staf">
                                        <div class="staf_thumb">
                                            <img src="../Assets/Files/<%=crsc.getString("guide_photo")%>" alt="">
                                        </div>
                                        <h4><%=crsc.getString("guide_name")%></h4>
                                        <p><%=crsc.getString("place_name")%></p>
                                    </div>



                                    <%

                                        }
                                    %>
                                </div>
                            </div>

                            <div class="white_box card_height_10">
                                <div class="box_header border_bottom_1px  ">
                                    <div class="main-title">
                                        <h3 class="mb_25">Hotel</h3>
                                    </div>
                                </div>
                                <div class="staf_list_wrapper sraf_active owl-carousel">


                                    <%
                                        String cQryd = "select * from tbl_hotel c inner join tbl_place p on p.place_id=c.place_id ORDER BY RAND()";
                                        ResultSet crsd = con.selectCommand(cQryd);
                                        while (crsd.next()) {

                                    %>


                                    <!-- single carousel  -->
                                    <div class="single_staf">
                                        <div class="staf_thumb">
                                            <img src="../Assets/Files/<%=crsd.getString("hotel_photo")%>" alt="">
                                        </div>
                                        <h4><%=crsd.getString("hotel_name")%></h4>
                                        <p><%=crsd.getString("place_name")%></p>
                                    </div>



                                    <%

                                        }
                                    %>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>


        </section>
    </body>
    <%@include file="Footer.jsp" %>
</html>
