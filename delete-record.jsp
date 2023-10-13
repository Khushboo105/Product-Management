<%@page import="java.sql.*"%>
<%@include file="conn.jsp" %>
<html>
 <body>
   <jsp:include page="delete.jsp" />
   <div class='dvv'>
   <%
   String pid=request.getParameter("pid");
   PreparedStatement ps=cn.prepareStatement("delete from productinfo where pid=?");
   ps.setString(1,pid);
   int n=ps.executeUpdate();
   if(n>=1)
   {
	 %>
	 <h2 style='color:green'>Product record with id <%=pid%> has been deleted</h2>
	 <% 	   
   }
   else
   {
	   %>
	     <h2 style='color:red'>Product record with id <%=pid%> does not exist</h2> 
	   <%
   }
   %>
   </div>
   </body>
</html>