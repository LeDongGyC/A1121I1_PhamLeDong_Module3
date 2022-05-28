<%--
  Created by IntelliJ IDEA.
  User: fpt
  Date: 27/05/2022
  Time: 11:53 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="/product?action=delete" style="width: 30%">
    <fieldset>
        <legend>Product Information</legend>
        <table>
            <tr>
                <td>Id:</td>
                <td>${product.id}</td>
            </tr>
            <tr>
                <td>Name:</td>
                <td>${product.name}</td>
            </tr>
            <tr>
                <td>Price:</td>
                <td>${product.price}</td>
            </tr>
            <tr>
                <td>Type:</td>
                <td>${product.type}</td>
            </tr>
            <tr>
                <td><button type="submit">Delete</button> </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
