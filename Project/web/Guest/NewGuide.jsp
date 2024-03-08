<%-- 
    Document   : NewUser
    Created on : 6 Feb, 2024, 5:44:24 PM
    Author     : vinum
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guide Registration</title>
    </head>
    <body>

        <form action="../Assets/ActionPages/GuideUploadAction.jsp" method="post" enctype="multipart/form-data">
            <table border="1">
                <tr>
                    <th colspan="2">Guide Registration</th>
                </tr>


                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" required></td>
                </tr>
                <tr>
                    <td>Contact:</td>
                    <td><input type="tel" name="contact" required></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="email" name="email" required></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><textarea name="address" placeholder="Enter address here" required></textarea></td>
                </tr>

                <tr>
                    <td><label for="district">District:</label></td>
                    <td>
                        <select id="district" name="district" required onchange="getPlace(this.value)">
                            <option value="">Select District</option>
                            <%String insQrya = "select * from tbl_district";
                                ResultSet rsla = con.selectCommand(insQrya);
                                while (rsla.next()) {
                            %>
                            <option value="<%=rsla.getString("district_id")%>"><%=rsla.getString("district_name")%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label>Place</label></td>
                    <td>
                        <select id="sel_place" name="sel_place" required>
                            <option value="">Select Place</option>file_photo
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" required></td>
                </tr>
                <tr>
                    <td>Photo:</td>
                    <td><input type="file" name="file_photo" accept="image/*" required></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Register">
                        <input type="reset" name="cancel" value="Cancel"/>
                    </td>
                </tr>
            </table>
        </form>
    </table>
</form>

</body>

<script src="../Assets/jQuery/jQuery.js"></script>
<script>
                            function getPlace(did)
                            {
                                $.ajax({
                                    url: "../Assets/AjaxPages/AjaxPlace.jsp?did=" + did,
                                    success: function(result) {
                                        $("#sel_place").html(result);

                                    }
                                });
                            }</script>

</html>