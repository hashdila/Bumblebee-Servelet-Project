<%--
  Created by IntelliJ IDEA.
  User: Dilan Nawarathna
  Date: 3/28/2023
  Time: 1:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form>
    <input type="hidden" id="product-id" value="123">
    <div class="mb-3">
        <label for="product-name" class="form-label">Product Name</label>
        <input type="text" class="form-control" id="product-name" placeholder="Enter product name" value="Product Name Updated">
    </div>
    <div class="mb-3">
        <label for="product-description" class="form-label">Product Description</label>
        <textarea class="form-control" id="product-description" rows="3">Product Description Updated</textarea>
    </div>
    <div class="mb-3">
        <label for="product-price" class="form-label">Product Price</label>
        <div class="input-group">
            <span class="input-group-text">$</span>
            <input type="number" class="form-control" id="product-price" placeholder="Enter product price" value="19.99">
        </div>
    </div>
    <div class="mb-3">
        <label for="product-image" class="form-label">Product Image</label>
        <input type="file" class="form-control" id="product-image">
        <div class="mt-2">
            <img src="product-image-updated.jpg" class="img-thumbnail" alt="Current product image">
        </div>
    </div>
    <div class="mb-3">
        <label for="last-update" class="form-label">Last Update</label>
        <input type="text" class="form-control" id="last-update" readonly value="2023-03-27 12:30:00">
    </div>
    <button type="submit" class="btn btn-primary">Update Product</button>
</form>
