<%--
  Created by IntelliJ IDEA.
  User: fpt
  Date: 5/22/2022
  Time: 5:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      input{
        display: block;
      }
      label{
        margin-bottom: 10px;
      }
    </style>
  </head>
  <body>
  <form action="/convert" method="post">
    <label for="">Rate:</label>
    <input type="text" name="rate" size="30" placeholder="Enter the rate:">
    <lable>USD:</lable>
    <input type="text" name="usd" size="30" placeholder="Enter the USD">
    <input type="submit" value="Converter"></input>
  </form>
  </body>
</html>
