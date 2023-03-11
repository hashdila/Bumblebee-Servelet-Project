


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





<section class="vh-100 " style="max-width: 1200px; margin:0 auto" >
    <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-9 col-lg-6 col-xl-5">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                     class="img-fluid" alt="Sample image">
            </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                <form action="/login" method="post">
<%--                    <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">--%>
<%--                        <p class="lead fw-normal mb-0 me-3">Sign in with</p>--%>
<%--                        <button type="button" class="btn btn-primary btn-floating mx-1">--%>
<%--                            <i class="fab fa-facebook-f"></i>--%>
<%--                        </button>--%>

<%--                        <button type="button" class="btn btn-primary btn-floating mx-1">--%>
<%--                            <i class="fab fa-twitter"></i>--%>
<%--                        </button>--%>

<%--                        <button type="button" class="btn btn-primary btn-floating mx-1">--%>
<%--                            <i class="fab fa-linkedin-in"></i>--%>
<%--                        </button>--%>
<%--                    </div>--%>

                    <div class="heding">
                        <h1>Login</h1>
                    </div>



                    <!-- Email input -->
                    <div class="form-outline mb-4">
                        <input type="email" id="username" class="form-control form-control-lg"
                               placeholder="Enter a valid email address" />
                        <label class="form-label" for="username">Email address</label>
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mb-3">
                        <input type="password" id="password" class="form-control form-control-lg"
                               placeholder="Enter password" />
                        <label class="form-label" for="password">Password</label>
                    </div>

                    <div class="d-flex justify-content-between align-items-center">
                        <!-- Checkbox -->
                        <div class="form-check mb-0">
                            <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
                            <label class="form-check-label" for="form2Example3">
                                Remember me
                            </label>
                        </div>
                        <a href="#!" class="text-body">Forgot password?</a>
                    </div>

                    <div class="text-center text-lg-start mt-4 pt-2">
                        <button type="button" class="btn btn-primary btn-lg" id="login"
                                style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
                        <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="#!"
                                                                                          class="link-danger">Register</a></p>
                    </div>

                </form>
            </div>
        </div>
    </div>
    <div
            class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
        <!-- Copyright -->
        <div class="text-white mb-3 mb-md-0">
            Copyright © 2020. All rights reserved.
        </div>
        <!-- Copyright -->

        <!-- Right -->
        <div>
            <a href="#!" class="text-white me-4">
                <i class="fab fa-facebook-f"></i>
            </a>
            <a href="#!" class="text-white me-4">
                <i class="fab fa-twitter"></i>
            </a>
            <a href="#!" class="text-white me-4">
                <i class="fab fa-google"></i>
            </a>
            <a href="#!" class="text-white">
                <i class="fab fa-linkedin-in"></i>
            </a>
        </div>
        <!-- Right -->
    </div>
</section>
