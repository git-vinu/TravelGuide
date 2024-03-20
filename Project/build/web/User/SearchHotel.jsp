<%@include file="head.jsp" %>
<%-- 
    Document   : SearchHotel
    Created on : 23 Feb, 2024, 11:42:12 AM
    Author     : vinum
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Hotel</title>
    </head>
    <body>
        <form method="POST">
        <table border="1">
            <tr>
                <th colspan="2">Search Hotel</th>
            </tr>
            <tr>
                <td><label for="district">District:</label></td>
                <td>
                    <select id="district" name="district" required onchange="getPlace(this.value)">
                        <option value="">Select District</option>
                        <%String insQrya = "select * from tbl_district";
                            ResultSet rsla = con.selectCommand(insQrya);
                            while (rsla.next()) {
                        %>
                        <option value="<%=rsla.getString("district_id")%>"><%=rsla.getString("district_name")%></option>
                        <%
                            }
                        %>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label>Place</label></td>
                <td>
                    <select id="sel_place" name="sel_place" required>
                        <option value="">Select Place</option>


                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" name="btnsubmit" value="Search">
                </td>
            </tr>



            <br>
            <div id="tab">

                <table border="1" cellpadding="10" align="">

                    <%
                        if (request.getParameter("btnsubmit") != null) {

                            String placeName = request.getParameter("sel_place");
                            
                            String sel = "select * from tbl_hotel where place_id='"+placeName+"'";
                            ResultSet rs = con.selectCommand(sel);
                            while (rs.next()) {

                    %>
                    
    
    
                    <tr><td colspan="2"><img src="../Assets/Files/<%=rs.getString("hotel_photo")%>" width="150" height="150"></td>
                    <tr><th>Name</th><td><%=rs.getString("hotel_name")%></td></tr>
                    <tr><th>Contact</th> <td><%=rs.getString("hotel_contact")%></td></tr>
                    <tr><th>Email</th> <td><%=rs.getString("hotel_email")%></td></tr>
                    <tr><th>Address</th> <td><%=rs.getString("hotel_address")%></td></tr>
                    <tr><td colspan="2" align="center"><a href="HotelBooking.jsp?did=<%=rs.getString("hotel_id")%>">Book Now</a></td></tr>

                    <%
                            }

                        }
                    %>
                </table>
                </form>


                </body>
                
                    <%@include file="foot.jsp" %>


                <script src="../Assets/jQuery/jQuery.js"></script>
                <script>
                        function getPlace(did)
                        {
                            $.ajax({
                                url: "../Assets/AjaxPages/AjaxPlace.jsp?did=" + did,
                                success: function(result) {
                                    $("#sel_place").html(result);

                                }
                            });
                        }</script>

                </html>
