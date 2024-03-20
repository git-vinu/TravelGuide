<%@include file="head.jsp" %>
<%-- 
    Document   : editprofile
    Created on : 9 Feb, 2022, 3:33:16 PM
    Author     : rinus
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
    </head>
    <body>
        <br>
        <div id="tab">
            <%
                if (request.getParameter("btnedit") != null) {

                    String up = "Update tbl_guide set guide_name='" + request.getParameter("txtname") + "',guide_contact='" + request.getParameter("txtcontact") + "',guide_email='" + request.getParameter("txtemail") + "',guide_address='" + request.getParameter("txtaddr") + "' where guide_id='" + session.getAttribute("lid") + "'";
                    con.executeCommand(up);
                    response.sendRedirect("EditProfile.jsp");

                }
            %>
            <h1 align="center">Edit your Profile </h1>
            <form method="post" >
                <table border="1" cellpadding="10" align="center">
                    <tr>
                        <%
                            String sel = "select * from tbl_guide where guide_id ='" + session.getAttribute("lid") + "'";
                            ResultSet rs = con.selectCommand(sel);
                            if (rs.next()) {


                        %>
                        <th>Name</th><td><input type="text" name="txtname" value="<%=rs.getString("guide_name")%>"></td></tr>
                    <tr> <th>Contact</th><td><input type="text" name="txtcontact" value="<%=rs.getString("guide_contact")%>"></td></tr>
                    <tr> <th>Email</th><td><input type="text" name="txtemail" value="<%=rs.getString("guide_email")%>"></td></tr>
                    <tr>  <th>Address</th><td><textarea name="txtaddr"><%=rs.getString("guide_address")%></textarea></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" name="btnedit" value="Edit Profile"></td>
                            <%
                                }
                            %>
                </tr>
            </table>
        </form>
    </div>
   </body>
    <%@include file="foot.jsp" %>
    <br><br>
</html>