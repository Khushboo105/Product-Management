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
	 <form action="update-record.jsp">
	 <table class="resta" border="1">
	   <tr style='background-color:orange;font-size:23px;color:white'>
	      <th colspan="2">Product details</th>
	   </tr>
       <tr>
      		<th align="left">Product id</th>
      		<td><input type='text' value="<%=rst.getString(1)%>" name="pid" readonly="readonly" style="width:100%"></td>
       </tr> 
       <tr>
      		<th align="left">Edit product name</th>
      		<td><input type='text' value="<%=rst.getString(2)%>" name="name" style="width:100%"></td>
       </tr>
       <tr>
      		<th align="left">Edit product brand</th>
      		<td><input type='text' value="<%=rst.getString(3)%>" name="brand" style="width:100%"></td>
       </tr>
       <tr>
      		<th align="left">Edit product price</th>
      		<td><input type='text' value="<%=rst.getString(4)%>" name="price" style="width:100%"></td>
       </tr>
       <tr>
        <td colspan="2" align="right">
        	<button class='bt'>Update Record</button>
        </td>
       </tr>
    </table>  
    </form>
	 <% 	   
   }
   else
   {
	   %>
	   <jsp:include page="edit.jsp" />
	   <div class='dvv'>
	     <h2 style='color:red'>Product record with id <%=pid%> not found</h2> 
	   </div>
	   <%
   }
   %>
 </body>
</html>