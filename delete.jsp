<%@include file="menu.html" %>
<html>
 <body>
  <form action="delete-record.jsp">
   <table class="formta" style='background-color:red;color:white'>
    <tr>
     <td class='pad'>Enter product id</td>
     <td class='pad'><input type="number" name="pid" class="tb" required></td>
     <td class="pad" colspan="2" align="right"><button class="bt">delete Record</button></td>
    </tr>
   </table>
  </form>
 </body>
</html>