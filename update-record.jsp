<%@page import="java.sql.*"%>
<%@include file="menu.html" %>
<%@include file="conn.jsp" %>
<%
PreparedStatement ps=cn.prepareStatement("update productinfo set name=?,brand=?,print=? where pid=?");
ps.setString(1,request.getParameter("name"));
ps.setString(2,request.getParameter("brand"));
ps.setString(3,request.getParameter("price"));
ps.setString(4,request.getParameter("pid"));
ps.executeUpdate();
%>
<html>
 <body>
  <div class="dv">
   <h2 style='color:green'>Product record has been updated successfully</h2>
  </div>
 </body>
</html>