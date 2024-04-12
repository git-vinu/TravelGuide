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
        <title>Guide Booking</title>
    </head>
    
    <%
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
    %>
    
    <body>
        <h1>My Bookings</h1>
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
                String selQry = "select * from tbl_guidebooking s inner join tbl_user c on s.user_id=c.user_id where guide_id='" + session.getAttribute("lid") + "'";
//                out.print(selQry);
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    i++;

            %>

            <tr>
                <td><%=i%></td>
                <td><%= rs.getString("user_name")%></td>
                <td><%= rs.getString("guidebooking_date")%></td>
                <td><%= rs.getString("guidebooking_time")%></td>
                <td><%= rs.getString("guidebooking_curent_date")%></td>
                <td><%= rs.getString("guidebooking_content")%></td>
                <td><%= rs.getString("user_contact")%></td>
                <td><%= rs.getString("user_address")%></td>
                <td>
                
                <%
                        if (rs.getInt("guidebooking_status") == 0) {
                    %>
                    <a href="ViewMyGBooking.jsp?acid=<%=rs.getString("guidebooking_id")%>">Accept</a>
                    <a href="ViewMyGBooking.jsp?eid=<%=rs.getString("guidebooking_id")%>">Reject</a>
                    <%
                    } else if (rs.getInt("guidebooking_status") == 1) {
                    %>
                    <a href="UserChat/Chat.jsp?id=<%=rs.getString("user_id")%>">Chat</a> |
                    <a href="ViewMyGBooking.jsp?eid=<%=rs.getString("guidebooking_id")%>">Reject</a>
                    <%
                    } else if (rs.getInt("guidebooking_status") == 2) {
                    %>
                    <a href="ViewMyGBooking.jsp?acid=<%=rs.getString("guidebooking_id")%>">Accept</a>
                    <%
                        }

                    %>
                    </td>
            </tr>
            <%
                }


            %>
        </table>
    </body>
    <%@include file="foot.jsp" %>
</html>

