<%@page import="java.sql.*"%>
<%@include file="menu.html" %>
<%@include file="conn.jsp" %>
<%
PreparedStatement ps=cn.prepareStatement("insert into productinfo values(?,?,?,?)");
ps.setString(1,request.getParameter("pid"));
ps.setString(2,request.getParameter("name"));
ps.setString(3,request.getParameter("brand"));
ps.setString(4,request.getParameter("price"));
ps.executeUpdate();
%>
<html>
 <body>
  <div class="dv">
   <h2 style='color:green'>Product record has been inserted successfully</h2>
  </div>
 </body>
</html>