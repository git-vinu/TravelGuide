<%-- 
    Document   : AdvisorBooking
    Created on : 24 Feb, 2024, 12:38:31 PM
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
        <form method="POST">
            
            <%


            if (request.getParameter("btnsubmit")!= null) {
                String HotelbookingContent = request.getParameter("txt_content");
                String HotelbookingDate = request.getParameter("txt_date");
                String HotelbookingTime = request.getParameter("txt_time");
               

             
                    String insQry = "insert into tbl_hotelbooking(hotelbooking_content,hotelbooking_date,hotelbooking_time,hotelbooking_curent_date,hotel_id,user_id)values('" + HotelbookingContent + "','" + HotelbookingDate + "','" + HotelbookingTime + "',curdate(),'"+ request.getParameter("did") +"','"+ session.getAttribute("uid") +"') ";
                    
//               out.print(insQry);
                    if(con.executeCommand(insQry)) {
                       
                        %>
                        <script>
                         alert("inserted");   
                            </script>
                        <%
                    
                }
            }
        %>
            
            <table border="1">
                <tr>
                    <td>Content</td>
                    <td><textarea name="txt_content" required></textarea></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td><input type="date" name="txt_date" required></td>
                </tr>
                <tr>
                    <td>Time</td>
                    <td><input type="time" name="txt_time" required></td>
                </tr>
                



             
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btnsubmit" value="send">
                        

                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
