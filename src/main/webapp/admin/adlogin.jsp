<%--
  Created by IntelliJ IDEA.
  User: Dilan Nawarathna
  Date: 4/6/2023
  Time: 12:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: Veeshan
  Date: 3/29/2023
  Time: 8:18 PM
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Login Page</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>



<div class="vh-100 d-flex justify-content-center align-items-center">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="col-12 col-md-8 col-lg-6">
                <div class="border border-3 border-primary"></div>
                <div class="card bg-white shadow-lg">
                    <a href="../index.jsp">

                        <button type="button" class="btn-close" aria-label="Close" data-bs-dismiss="modal"
                                style="position: absolute;top: 0; right: 0;"> </button> </a>
                    <div class="card-body p-5">
                        <form class="mb-3 mt-md-4" action="../Admin_login" method="post">
                            <h2 class="fw-bold mb-2 text-uppercase ">Admin Log In</h2>

                            <div class="mb-3">
                                <label for="username" class="form-label ">User Name</label>
                                <input type="text" class="form-control" name="username" id="username" placeholder="User name">
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label ">Password</label>
                                <input type="password" class="form-control" name="password" id="password" placeholder="***">
                            </div>

                            <div class="d-grid">
                                <button class="btn btn-outline-dark" type="submit">Login</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</html>