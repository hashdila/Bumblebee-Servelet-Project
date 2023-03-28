<%--
  Created by IntelliJ IDEA.
  User: Dilan Nawarathna
  Date: 3/28/2023
  Time: 2:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table>
    <thead>
    <tr>
        <th>Product Name</th>
        <th>Product Description</th>
        <th>Product Price</th>
        <th>Product Image</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Product A</td>
        <td>A great product</td>
        <td>$19.99</td>
        <td><img src="product-a.jpg" alt="Product A"></td>
        <td>
            <button onclick="deleteProduct('product-a')">Delete</button>
        </td>
    </tr>
    <tr>
        <td>Product B</td>
        <td>Another great product</td>
        <td>$24.99</td>
        <td><img src="product-b.jpg" alt="Product B"></td>
        <td>
            <button onclick="deleteProduct('product-b')">Delete</button>
        </td>
    </tr>
    <!-- More products... -->
    </tbody>
</table>

