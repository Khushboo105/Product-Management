<%@page import="java.sql.*"%>
<%@include file="menu.html" %>
<%@include file="conn.jsp" %>
<html>
 <body>
   <%
   Statement st=cn.createStatement();
   ResultSet rst=st.executeQuery("select * from productinfo");
   %>
   <table class="resta" border="1">
     <tr>
      <th>Product id</th>
      <th>Product name</th>
      <th>Product brand</th>
      <th>Product price</th>
     </tr>
     <%
     while(rst.next())
     {
    	 %>
    	 <tr>
    	  <td><%=rst.getString(1)%></td>
    	  <td><%=rst.getString(2)%></td>
    	  <td><%=rst.getString(3)%></td>
    	  <td><%=rst.getString(4)%></td>
    	 </tr>
    	 <%
     }
     %>
   </table>
 </body>
</html>