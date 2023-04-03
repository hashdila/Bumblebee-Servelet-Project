<%--
  Created by IntelliJ IDEA.
  User: Dilan Nawarathna
  Date: 3/11/2023
  Time: 7:09 AM
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--Header--%>

<%@include file="include/header.jsp"%>

<%--<h1><%= "BOMBLE BEE" %></h1>--%>
<%@include file="include/navbar.jsp"%>

<%@include file="include/carasol.jsp"%>

<%--<%@include file="include/cart_viewer.jsp"%>--%>
<div class="main" style="margin: auto; max-width: 1200px">
<jsp:include page="include/cart_viewer.jsp"/>
</div>

<%@include file="include/footer.jsp"%>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<%--<%@include file="login&register/login.jsp"%>--%>






