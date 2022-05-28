<%--
  Created by IntelliJ IDEA.
  User: fpt
  Date: 5/27/2022
  Time: 7:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Danh sách sản phẩm</h1>
<a href="/product?action=create">Thêm mới sản phẩm</a>
<a href="/product?action=edit">Edit sản phầm</a>
<a href="/product?action=delete">Xoá sản phẩm</a>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Tên sản phẩm</th>
        <th>Giá</th>
        <th>Loại sản phẩm</th>
    </tr>
    <c:forEach items="${productList}" var="product"> 
        <tr>
            <th>${product.id}</th>
            <th>${product.name}</th>
            <th>${product.price}</th>
            <th>${product.type}</th>
        </tr>
    </c:forEach>
</table>
</body>
</html>
