<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%
    String selQry = "select * from tbl_advicor_user_chat tsc inner join tbl_user t on (tsc.to_user_id=t.user_id) or (tsc.from_user_id=t.user_id) where t.user_id='" + session.getAttribute("uid") + "' order by chat_id";
    //System.out.println(selQry);
    ResultSet rs = con.selectCommand(selQry);
    while (rs.next()) {

        if (rs.getString("to_advicor_id").equals(request.getParameter("id"))) {


%>

<div class="chat-message is-sent">
    <img src="../../Assets/Files/<%=rs.getString("user_photo")%>" alt="">
    <div class="message-block">
        <span><%=rs.getString("user_name")%></span>
        <div class="message-text"><%=rs.getString("chat_content")%></div>
    </div>
        <img style="width: 20px;height: 20px;margin-top: 30px" src="../../Assets/Template/friendskit/assets/img/icons/feed/delete.svg" onclick="deleteChat(<%=rs.getString("chat_id")%>)">
</div>
<div class="chat-message" style="margin: 0px; padding: 0px" >

</div>

<%

} else if (rs.getString("from_advicor_id").equals(request.getParameter("id"))) {

    String sel = "select * from tbl_advicor where advicor_id='" + rs.getString("from_advicor_id") + "'";
   
    ResultSet z = con.selectCommand(sel);
    if (z.next()) {
%>
<div class="chat-message is-received">
    <img src="../../Assets/Files/<%=z.getString("advicor_photo")%>" alt="">
    <div class="message-block">
        <span><%=z.getString("advicor_name")%></span>
        <div class="message-text"><%=rs.getString("chat_content")%></div>
    </div>
</div>
<div class="chat-message" style="margin: 0px; padding: 0px" >

</div>
<%
            }

        }
    }


%>