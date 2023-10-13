<%@page import="java.sql.*"%>
<%@include file="conn.jsp" %>
<html>
 <body>
   <%
   String pid=request.getParameter("pid");
   PreparedStatement ps=cn.prepareStatement("select * from productinfo where pid=?");
   ps.setString(1,pid);
   ResultSet rst=ps.executeQuery();
   if(rst.next())
   {
	 %>
	 <%@include file="menu.html" %>
	 <table class="resta" border="1">
	   <tr style='background-color:orange;font-size:23px;color:white'>
	      <th colspan="2">Product details</th>
	   </tr>
       <tr>
      		<th align="left">Product id</th>
      		<td><%=rst.getString(1)%></td>
       </tr> 
       <tr>
      		<th align="left">Product name</th>
      		<td><%=rst.getString(2)%></td>
       </tr>
       <tr>
      		<th align="left">Product brand</th>
      		<td><%=rst.getString(3)%></td>
       </tr>
       <tr>
      		<th align="left">Product price</th>
      		<td><%=rst.getString(4)%></td>
       </tr>
    </table>  
	 <% 	   
   }
   else
   {
	   %>
	   <jsp:include page="search.jsp" />
	   <div class='dvv'>
	     <h2 style='color:red'>Product record with id <%=pid%> not found</h2> 
	   </div>
	   <%
   }
   %>
 </body>
</html>