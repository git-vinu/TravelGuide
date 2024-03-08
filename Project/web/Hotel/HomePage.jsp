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
        <h1>Hello <%=session.getAttribute("hname")%></h1>
        <a href="MyProfile.jsp">My Profile</a>
        
        <a href="EditProfile.jsp">Edit Profile</a>

        <a href="ChangePassword.jsp">Change Password</a>
        
        <a href="ViewMyHBooking.jsp">View My Booking</a>


    </body>
</html>
