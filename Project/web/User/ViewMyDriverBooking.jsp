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
        <title>Drive Booking</title>
    </head>
    <body>
        <h1>My Drive Bookings</h1>
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
                String selQry = "select * from tbl_driverbooking s inner join tbl_driver c on s.driver_id=c.driver_id where user_id='" + session.getAttribute("uid") + "'";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    i++;

            %>

            <tr>
                <td><%=i%></td>
                <td><%= rs.getString("driver_name")%></td>
                
                <td><%= rs.getString("driverbooking_date")%></td>
                <td><%= rs.getString("driverbooking_time")%></td>
                <td><%= rs.getString("drivebooking_curent_date")%></td>
                <td><%= rs.getString("drivebooking_content")%></td>
                <td><%= rs.getString("driver_contact")%></td>
                <td><%= rs.getString("driver_address")%></td>
                <td><%= rs.getString("driverbooking_status")%></td>
                
                <td><%
                if(rs.getString("driverbooking_status").equals("0"))
                {
                    %>
                    Pending
                    <%
                }
                else if(rs.getString("driverbooking_status").equals("1"))
                {
                     %>
                     <a href="DriverChat/Chat.jsp?id=<%=rs.getString("driver_id")%>">Chat</a>
                    <%
                }
                else if(rs.getString("driverbooking_status").equals("2"))
                {
                     %>
                    Rejected
                    <%
                }
                %></td>
                

            </tr>
            <%
                }


            %>
        </table>
    </body>
    <%@include file="foot.jsp" %>
</html>

