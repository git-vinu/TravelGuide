<%-- 
    Document   : HomePage
    Created on : 21 Feb, 2024, 4:39:44 PM
    Author     : vinum
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h1>Hello <%=session.getAttribute("uname")%></h1>
        <a href="MyProfile.jsp">My Profile</a>
        <a href="EditProfile.jsp">Edit Profile</a>

        <a href="ChangePassword.jsp">Change Password</a>
        
        <a href="SearchHotel.jsp">Search Hotel</a>
        
        <a href="SearchDriver.jsp">Search Driver</a>
        
        <a href="SearchGuide.jsp">Search Guide</a>
        
        <a href="SearchAdvisor.jsp">Search Advisor</a>
        
        <a href="ViewMyHotelBooking.jsp">My Hotel Booking</a>
        
        <a href="ViewMyAdvisorBooking.jsp">My Advisor Booking</a>
        
        <a href="ViewMyGuideBooking.jsp">My Guide Booking</a>
        
        <a href="ViewMyDriverBooking.jsp">My Drive Booking</a>
        
        


    </body>
</html>
