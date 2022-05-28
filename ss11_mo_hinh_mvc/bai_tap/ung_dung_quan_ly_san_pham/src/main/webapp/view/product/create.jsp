<%--
  Created by IntelliJ IDEA.
  User: fpt
  Date: 5/27/2022
  Time: 7:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/product?action=create" method="post">
    <table>
        <tr>
            <td>ID</td>
            <td><input type="text" name="id" placeholder="nhâp id"></td>
        </tr>
        <tr>
            <td>Tên</td>
            <td><input type="text" name="name" placeholder="nhâp tên"></td>
        </tr>
        <tr>
            <td>Giá</td>
            <td>
                <input type="text" name="price" placeholder="nhập giá sản phẩm">
            </td>
        </tr>
        <tr>
            <td>Loại sản phẩm</td>
            <td><input type="text" name="type" placeholder="nhập giá sản phẩm"></td>
        </tr>
        <tr>
            <td>
                <button type="submit">Lưu</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
