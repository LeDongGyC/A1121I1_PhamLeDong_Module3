<%--
  Created by IntelliJ IDEA.
  User: fpt
  Date: 27/05/2022
  Time: 11:54 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="/product?action=edit">
    <fieldset>
        <legend>product information</legend>
        <table>
            <tr>
                <td>Id:</td>
                <td><input type="text" name="id" id="id"></td>
            </tr>

            <tr>
                <td>Name:</td>
                <td><input type="text" name="newName" id="name"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="text" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Type:</td>
                <td><input type="text" name="type" id="type"></td>
            </tr>

            <tr>
                <tr></tr>
                <td><input type="submit" value="Update product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
