<%--
  Created by IntelliJ IDEA.
  User: fpt
  Date: 5/20/2022
  Time: 8:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      form{
        width: 175px;
        border: 1px black solid;
        padding: 10px 20px ;
      }
      input{
        /*margin-bottom: 10px;*/
      }
    </style>
  </head>
  <body>
  <form action="/calculator" method="post">

    <input type="text" name="product" placeholder="Enter name of product: ">
    <br>
    <input type="text" name="price" placeholder="Enter list price of product: "/>
    <br>
    <input type="text" name="discount" placeholder="Enter the discount percent">
    <br>
    <input type="submit" value="Discount Product">
  </form>
  <h3> Discount Amount: ${discountAmount}</h3>
  <h3>Discount Price: ${discountPrice}</h3>
  </body>
</html>
