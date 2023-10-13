<%@include file="menu.html" %>
<html>
 <body>
  <form action="save-record.jsp">
   <table class="formta">
    <tr>
     <td class='pad'>Enter product id</td>
     <td class='pad'><input type="number" name="pid" class="tb" required></td>
    </tr>
    <tr>
     <td class='pad'>Enter product name</td>
     <td class='pad'><input type="text" name="name" class="tb" required></td>
    </tr>
    <tr>
     <td class='pad'>Enter product brand</td>
     <td class='pad'>
     	<select class="tb" name="brand">
     	 <option>Dell</option>
     	 <option>HP</option>
     	 <option>Acer</option>
     	 <option>Apple</option>
     	 <option>Logitech</option>
     	</select>
     </td>
    </tr>
    <tr>
     <td class='pad'>Enter product price</td>
     <td class='pad'><input type="number" name="price" class="tb" required></td>
    </tr>
    <tr>
     <td class="pad" colspan="2" align="right">
     	<button class="bt">Save Record</button>
     </td>
    </tr>
   </table>
  </form>
 </body>
</html>