<%@include file="head.jsp" %>
<%-- 
    Document   : ExaplePage
    Created on : 3 Mar, 2024, 3:05:26 PM
    Author     : vinum
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel Booking</title>
    </head>
    <body>
        <h1>My Hotel Bookings</h1>
        <table border="1">
            <tr>
                <th>Sl.No</th>
                <th>Hotel Name</th>
                <th>Booking Date</th>
                <th>Booking Time</th>
                <th>Booked Date</th>
                <th>Hotel Details</th>
                <th>Hotel Contact</th>
                <th>Hotel Address</th>
                <th>Status</th>
            </tr>
            <%

                int i = 0;
                String selQry = "select * from tbl_hotelbooking s inner join tbl_hotel c on s.hotel_id=c.hotel_id where user_id='" + session.getAttribute("uid") + "'";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    i++;

            %>

            <tr>
                <td><%=i%></td>
                <td><%= rs.getString("hotel_name")%></td>
                <td><%= rs.getString("hotelbooking_date")%></td>
                <td><%= rs.getString("hotelbooking_time")%></td>
                <td><%= rs.getString("hotelbooking_curent_date")%></td>
                <td><%= rs.getString("hotelbooking_content")%></td>
                <td><%= rs.getString("hotel_contact")%></td>
                <td><%= rs.getString("hotel_address")%></td>
                <td><%= rs.getString("hotelbooking_status")%></td>

            </tr>
            <%
                }


            %>
        </table>
    </body>
    <%@include file="foot.jsp" %>
</html>

