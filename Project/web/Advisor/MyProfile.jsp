<%-- 
    Document   : MyProfile
    Created on : 21 Feb, 2024, 5:01:57 PM
    Author     : vinum
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
    </head>
    <body>
        <br>
        <div id="tab">
            <h1 align="center">MY PROFILE</h1>
            <form method="post">
                <table border="1" cellpadding="10" align="center">
                    <tr>
                        <%
                            String sel = "select * from tbl_advicor where advicor_id='" + session.getAttribute("adid") + "'";
                            ResultSet rs = con.selectCommand(sel);
                            if (rs.next()) {


                        %>

                    <tr><td colspan="2"><img src="../Assets/Files/<%=rs.getString("advicor_photo")%>" width="150" height="150"></td>
                    <tr><th>Name</th><td><%=rs.getString("advicor_name")%></td></tr>
                    <tr><th>Contact</th> <td><%=rs.getString("advicor_contact")%></td></tr>
                    <tr><th>Email</th> <td><%=rs.getString("advicor_email")%></td></tr>
                    <tr><th>Address</th> <td><%=rs.getString("advicor__address")%></td></tr>

                    <%
                        }
                    %>
                </table>
            </form>
        </div>
    </body>
    <br><br>
</html>
