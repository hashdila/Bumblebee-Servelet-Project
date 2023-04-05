<%--
  Created by IntelliJ IDEA.
  User: Dilan Nawarathna
  Date: 3/6/2023
  Time: 12:36 PM
  To change this template use File | Settings | File Templates.
--%>
<nav class="navbar navbar-expand-lg bg-info  " style="max-width: 1200px; margin: auto;">
    <div class="container-fluid align-middle">
        <a class="navbar-brand" href="#">HOME</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-1 mb-lg-0 ">
                <li class="nav-item ">
                    <a class="nav-link active" aria-current="page" href="#">Company</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./contacr.jsp">Contact-Us</a>
                </li>



            </ul>
            <div class="serching d-flex">
                <div class="se" style="padding-right: 10px;">
                    <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>

                <div>
                    <a href="${pageContext.request.contextPath}/viewCart"><i class="fa-solid fa fa-shopping-cart fa-2x " ></i></a>
                </div>
            </div>

        </div>
    </div>
</nav>
