<%--
  Created by IntelliJ IDEA.
  User: Dilan Nawarathna
  Date: 3/30/2023
  Time: 11:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Product List</title>
    <style>
        /* Add some basic styles for the card viewer */
        .card {
            width: 300px;
            margin: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0px 0px 5px #ccc;
            display: inline-block;
        }
        .card img {
            max-width: 100%;
            height: auto;
            object-fit: contain;
        }
        .card h3 {
            margin: 10px;
        }
        .card p {
            margin: 10px;
            font-size: 14px;
            color: #555;
        }
        .card .price {
            margin: 10px;
            font-size: 18px;
            color: #00c;
            font-weight: bold;
        }
        .card .actions {
            margin: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .card .actions a {
            text-decoration: none;
            color: #fff;
            background-color: #00c;
            padding: 10px;
            border-radius: 5px;
        }
        .card .actions a:hover {
            background-color: #0077c2;
        }
    </style>
</head>
<body>
<h1>Product List</h1>
<c:forEach var="product" items="${products}">
    <div class="card">
        <img src="data:image/jpeg;base64,${product.imageBase64}" alt="${product.name}">
        <h3>${product.name}</h3>
        <p>${product.description}</p>
        <p><strong>Category:</strong> ${product.category}</p>
        <p><strong>Dimensions:</strong> ${product.dimensions}</p>
        <p><strong>Weight:</strong> ${product.weight}</p>
        <p><strong>Color:</strong> ${product.color}</p>
        <div class="price">${product.price}</div>
        <div class="actions">

            <a href="productdetails.jsp?productId=${product.id}">Add to cart</a>
        </div>
    </div>
</c:forEach>
</body>
</html>
