<%--
  Created by IntelliJ IDEA.
  User: Dilan Nawarathna
  Date: 3/28/2023
  Time: 1:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form>
    <div class="mb-3">
        <label for="product-name" class="form-label">Product Name</label>
        <input type="text" class="form-control" id="product-name" placeholder="Enter product name">
    </div>
    <div class="mb-3">
        <label for="product-description" class="form-label">Product Description</label>
        <textarea class="form-control" id="product-description" rows="3"></textarea>
    </div>
    <div class="mb-3">
        <label for="product-price" class="form-label">Product Price</label>
        <div class="input-group">
            <span class="input-group-text">$</span>
            <input type="number" class="form-control" id="product-price" placeholder="Enter product price">
        </div>
    </div>
    <div class="mb-3">
        <label for="product-image" class="form-label">Product Image</label>
        <input type="file" class="form-control" id="product-image">
    </div>
    <button type="submit" class="btn btn-primary">Add Product</button>
</form>
