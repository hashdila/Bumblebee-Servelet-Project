<%--
  Created by IntelliJ IDEA.
  User: Dilan Nawarathna
  Date: 3/28/2023
  Time: 1:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="hd1 bg-info"style="height: auto; width: 10%;">
        <div class="image justify-content-center align-items-center" style="width: 100px; height: auto;margin:0 auto;">
            <a class="nav-link" href="#"><img src="img/img1.png" class="  "style="width: 80px;  display: flex; justify-content: center;align-items: center;"></img></a>
        </div>
    </div>
    <div class="container-fluid">
        <a class="navbar-brand" href="admin_home.jsp">Add Product</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="adminupdate.jsp">Upade product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/view-products">view & Delet product</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>



<%--            <form class="d-flex">--%>
<%--                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">--%>
<%--                <button class="btn btn-outline-success" type="submit">Search</button>--%>
<%--            </form>--%>

        </div>
    </div>
</nav>

