<%-- 
    Document   : HomePage
    Created on : 22 Feb, 2024, 2:15:59 PM
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
        <h1>Hello <%=session.getAttribute("dname")%></h1>
        <a href="MyProfile.jsp">My Profile</a>
        
        <a href="EditProfile.jsp">Edit Profile</a>

        <a href="ChangePassword.jsp">Change Password</a>
        
        <a href="ViewMyDBooking.jsp">View My Booking</a>


    </body>
</html>

