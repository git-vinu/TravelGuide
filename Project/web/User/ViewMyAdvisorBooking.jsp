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
        <title>Advicor Booking</title>
    </head>
    <body>
        <h1>My Advicor Bookings</h1>
        <table border="1">
            <tr>
                <th>Sl.No</th>
                <th>Advicor Name</th>
                <th>Advicor Advicor</th>           
                <th>Booking Date</th>

                <th>Booking Time</th>
                <th>Booked Date</th>
                <th>Advicor Details</th>
                <th>Advicor Contact</th>
                <th>Advicor Address</th>
                <th>Status</th>
            </tr>
            <%

                int i = 0;
                String selQry = "select * from tbl_advicorbooking s inner join tbl_advicor c on s.advicor_id =c.advicor_id  where user_id='" + session.getAttribute("uid") + "'";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    i++;

            %>

            <tr>
                <td><%=i%></td>
                <td><%= rs.getString("advicor_name")%></td>
                <td><a href="tel:<%= rs.getString("advicor_contact")%>"><%= rs.getString("advicor_contact")%></a></td>     
                <td><%= rs.getString("advicorbooking_date")%></td>

                <td><%= rs.getString("advicorbooking_time")%></td>
                <td><%= rs.getString("advicorbooking_curent_date")%></td>
                <td><%= rs.getString("advicorbooking_content")%></td>
                <td><%= rs.getString("advicor_contact")%></td>
                <td><%= rs.getString("advicor__address")%></td>
                <td><%
                if(rs.getString("advicorbooking_status").equals("0"))
                {
                    %>
                    Pending
                    <%
                }
                else if(rs.getString("advicorbooking_status").equals("1"))
                {
                     %>
                     <a href="AdvisorChat/Chat.jsp?id=<%=rs.getString("advicor_id")%>">Chat</a>
                    <%
                }
                else if(rs.getString("advicorbooking_status").equals("2"))
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

