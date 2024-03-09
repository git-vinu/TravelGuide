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
        <title>Drive Booking</title>
    </head>
    <body>
        <h1>My Drive Bookings</h1>
        <table border="1">
            <tr>
                <th>Sl.No</th>
                <th>User Name</th>
                <th>Booking Date</th>
                <th>Booking Time</th>
                <th>Booked Date</th>
                <th>Hotel Details</th>
                <th>User Contact</th>
                <th>User Address</th>
                <th>Status</th>
            </tr>
            <%

                int i = 0;
                String selQry = "select * from tbl_driverbooking s inner join tbl_user c on s.user_id=c.user_id where driver_id='" + session.getAttribute("did") + "'";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    i++;

            %>

            <tr>
                <td><%=i%></td>
                <td><%= rs.getString("user_name")%></td>
                <td><%= rs.getString("driverbooking_date")%></td>
                <td><%= rs.getString("driverbooking_time")%></td>
                <td><%= rs.getString("drivebooking_curent_date")%></td>
                <td><%= rs.getString("drivebooking_content")%></td>
                <td><%= rs.getString("user_contact")%></td>
                <td><%= rs.getString("user_address")%></td>
                <td><%= rs.getString("driverbooking_status")%></td>

            </tr>
            <%
                }


            %>
        </table>
    </body>
</html>

