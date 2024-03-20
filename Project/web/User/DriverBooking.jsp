<%@include file="head.jsp" %>
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
        <title>Drive Booking</title>
    </head>
    <body>
        <form method="POST">
            
            <%


            if (request.getParameter("btnsubmit")!= null) {
                String DrivebookingContent = request.getParameter("txt_content");
                String DriverbookingDate = request.getParameter("txt_date");
                String DriverbookingTime = request.getParameter("txt_time");
               

             
                    String insQry = "insert into tbl_driverbooking(drivebooking_content,driverbooking_date,driverbooking_time,drivebooking_curent_date,driver_id,user_id)values('" + DrivebookingContent + "','" + DriverbookingDate + "','" + DriverbookingTime + "',curdate(),'"+ request.getParameter("did") +"','"+ session.getAttribute("uid") +"') ";
                    
//                  out.print(insQry);
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
                        <input type="submit" name="btnsubmit" value="Save">

                    </td>
                </tr>
            </table>
        </form>
    </body>
    <%@include file="foot.jsp" %>
</html>
