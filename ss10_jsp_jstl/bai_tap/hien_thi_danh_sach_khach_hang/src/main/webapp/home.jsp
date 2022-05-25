<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fpt
  Date: 5/23/2022
  Time: 8:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <tr><th>DANH SÁCH KHÁCH HÀNG</th></tr>
        <tr>
            <th>Tên</th>
            <th>Ngày sinh</th>
            <th>Địa chỉ</th>
            <th>Ảnh</th>
        </tr>
        <c:forEach items="${customerList}" var="customer">
            <tr>
                <td>${customer.name}</td>
                <td>${customer.date}</td>
                <td>${customer.address}</td>
                <td><img src="${customer.img}" style="width: 60px; height: 50px"></td>
            </tr>

        </c:forEach>
    </table>
</body>
</html>
