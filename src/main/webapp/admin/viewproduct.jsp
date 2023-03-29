<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.example.din.DBConnction" %><%--
  Created by IntelliJ IDEA.
  User: Dilan Nawarathna
  Date: 3/28/2023
  Time: 1:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Product Management - Bumblebee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
</head>
<body>
<div class="d-flex">

    <div class="container-fluid d-block" style="width: 100%; height:30%">

        <div>

            <div class="d-block" style="margin-left: 5%; margin-top: 5%">

                <h1 >Products</h1>
                <a href="${pageContext.request.contextPath}/admin_home.jsp">Add Product</a>
                <table class="table">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Category</th>
                        <th>Price</th>
                        <th>Image</th>
                        <th>Dimensions</th>
                        <th>Weight</th>
                        <th>Color</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${products}" var="product">
                        <tr>
                            <td>${product.id}</td>
                            <td>${product.name}</td>
                            <td>${product.description}</td>
                            <td>${product.category}</td>
                            <td>${product.price}</td>
                            <td><img src="data:image/png;base64,${product.image}" alt="Product Image"></td>
                            <td>${product.dimensions}</td>
                            <td>${product.weight}</td>
                            <td>${product.color}</td>
                            <td><a href="delete-product?id=${product.id}">Delete</a></td>
                            <td>
                                <a href="${pageContext.request.contextPath}/admin/addproduct.jsp?id=${product.id}"><i class="fa fa-pencil" style="color: black"></i></a>
                                &nbsp;<a href="delete-Product?id=${product.id}"><i class="fa fa-trash" style="color: red"></i></a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>


            </div>
        </div>
            <% Connection conn= DBConnction.getConn();
    out.print(conn);%>

</body>
</html>