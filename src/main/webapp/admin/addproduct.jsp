<%--
  Created by IntelliJ IDEA.
  User: Dilan Nawarathna
  Date: 3/28/2023
  Time: 7:12 PM
  To change this template use File | Settings | File Templates.
--%>


<div class="container mt-5" style="max-width: 1200px; margin: auto;">
    <h1>Add Product Details</h1>
    <form action="./AddProductServlet" method="POST" enctype="multipart/form-data">
        <fieldset>
            <legend>Product Information</legend>
            <div class="mb-3">
                <label for="name" class="form-label">Name:</label>
                <input type="text" name="name" id="name" class="form-control" placeholder="Enter product name" required>
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Description:</label>
                <textarea name="description" id="description" class="form-control" placeholder="Enter product description"></textarea>
            </div>
            <div class="mb-3">
                <label for="category" class="form-label">Category:</label>
                <input type="text" name="category" id="category" class="form-control" placeholder="Enter product category">
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Price:</label>
                <input type="number" id="price" name="price" step="0.01" min="0" class="form-control" placeholder="Enter product price" required>
            </div>
            <div class="mb-3">
                <label for="image" class="form-label">Image:</label>
                <input type="file" id="image" name="image" class="form-control">
            </div>
            <div class="mb-3">
                <label for="dimensions" class="form-label">Dimensions:</label>
                <input type="text" id="dimensions" name="dimensions" class="form-control" placeholder="Enter product dimensions">
            </div>
            <div class="mb-3">
                <label for="weight" class="form-label">Weight:</label>
                <input type="text" id="weight" name="weight" class="form-control" placeholder="Enter product weight">
            </div>
            <div class="mb-3">
                <label for="color" class="form-label">Color:</label>
                <input type="text" id="color" name="color" class="form-control" placeholder="Enter product color">
            </div>
        </fieldset>
        <div class="d-grid gap-2">
            <input type="submit" value="Add Product" class="btn btn-primary">
        </div>
    </form>
    </div>