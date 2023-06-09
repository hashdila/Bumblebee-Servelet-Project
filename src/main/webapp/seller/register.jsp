


<%@ page import="java.sql.Connection" %>
<%@ page import="com.example.din.DBConnction" %><%--
  Created by IntelliJ IDEA.
  User: Dilan Nawarathna
  Date: 3/10/2023
  Time: 9:45 PM
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">





<section class="vh-100" style="background-color: #eee;">

    <div class="container h-100">

        <div class="row d-flex justify-content-center align-items-center h-100">


            <div class="col-lg-12 col-xl-11">
                <div class="card text-black" style="border-radius: 25px;">
                    <div class="card-body p-md-5">
                        <div class="row justify-content-center">
                            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                <a href="../index.jsp"><button type="button" class="btn-close btn-close-primary " aria-label="Close"></button></a>
                            </div>
                            <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                                <form action="../register" class="mx-1 mx-md-4" method="post">

                                    <div class="d-flex flex-row align-items-center mb-4">
                                        <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                        <div class="form-outline flex-fill mb-0">
                                            <input type="text" name="username" id="username" class="form-control" />
                                            <label class="form-label" for="username">Username</label>
                                        </div>
                                    </div>

                                    <div class="d-flex flex-row align-items-center mb-4">
                                        <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                        <div class="form-outline flex-fill mb-0">
                                            <input type="text" name="password" id="password" class="form-control" />
                                            <label class="form-label" for="password">Password</label>
                                        </div>
                                    </div>
                                    <div class="d-flex flex-row align-items-center mb-4">
                                        <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                        <div class="form-outline flex-fill mb-0">
                                            <input type="email" name="email" id="email" class="form-control" />
                                            <label class="form-label" for="email">email</label>
                                        </div>
                                    </div>

<%--                                    <div class="d-flex flex-row align-items-center mb-4">--%>
<%--                                        <i class="fas fa-lock fa-lg me-3 fa-fw"></i>--%>
<%--                                        <div class="form-outline flex-fill mb-0">--%>
<%--                                            <input type="password" id="form3Example4c" class="form-control" />--%>
<%--                                            <label class="form-label" for="form3Example4c">Password</label>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>

<%--                                    <div class="d-flex flex-row align-items-center mb-4">--%>
<%--                                        <i class="fas fa-key fa-lg me-3 fa-fw"></i>--%>
<%--                                        <div class="form-outline flex-fill mb-0">--%>
<%--                                            <input type="password" id="form3Example4cd" class="form-control" />--%>
<%--                                            <label class="form-label" for="form3Example4cd">Repeat your password</label>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>

<%--                                    <div class="form-check d-flex justify-content-center mb-5">--%>
<%--                                        <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />--%>
<%--                                        <label class="form-check-label" for="form2Example3">--%>
<%--                                            I agree all statements in <a href="#!">Terms of service</a>--%>
<%--                                        </label>--%>
<%--                                    </div>--%>

                                    <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                        <button type="submit" class="btn btn-primary btn-lg">Register</button>
                                    </div>
<%--                                    <button type="submit" class="register">Register</button>--%>

                                </form>

                            </div>
                            <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                                     class="img-fluid" alt="Sample image">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
