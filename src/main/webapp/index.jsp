<%@ page import="customer.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<%
  ArrayList<Customer> customers=new ArrayList<>();
  customers.add(new Customer("Hy Chung Dai","1993-08-20","Ha Noi"));
  customers.add(new Customer("Nguyen Van Linh","1993-08-21","Bac Giang"));
  customers.add(new Customer("Nguyen Binh Hai","1993-08-22","Nam Dinh"));
  customers.add(new Customer("Tran Khoa Van","1993-08-23","HCM"));
  pageContext.setAttribute("customers", customers);
%>

<h1>Danh Sach Khach Hang</h1>
<table>
  <tr>
    <td>Ten</td>
    <td>Ngay sinh</td>
    <td>Dia chi</td>
  </tr>
  <c:forEach var ="customer" items="${customers}">
    <tr>
      <td><c:out value ="${customer.getName()}"/></td>
      <td><c:out value ="${customer.getBirthDay()}"/></td>
      <td><c:out value ="${customer.getAddress()}"/></td>
    </tr>
    <br/>
  </c:forEach>
</table>
</body>
</html>
