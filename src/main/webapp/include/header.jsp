<%--
  Created by IntelliJ IDEA.
  User: Dilan Nawarathna
  Date: 3/5/2023
  Time: 10:13 PM
  To change this template use File | Settings | File Templates.
--%>

<!-- Navbar -->

<div class="header-menu d-flex " style="height: auto; margin: auto; max-width: 1200px ">

    <div class="hd1 "style="height: auto; width: 10%;">
        <div class="image justify-content-center align-items-center" style="width: 100px; height: auto;margin:0 auto;">
            <a class="nav-link" href="#"><img src="img/img1.png" class="  "style="width: 80px;  display: flex; justify-content: center;align-items: center;"></img></a>
        </div>
    </div>

    <div class="hd1 "style="height: auto; width: 25%;">
        <!-- <p class="company-name" style="font-size: 30px;">Bumble Bee</p> -->
        <figure class="text-center">
            <blockquote class="blockquote">
                <p>Bumble Bee</p>
            </blockquote>
            <figcaption class="blockquote-footer">
                Fast and Quality  <cite title="Source Title">BumbleBee.lk</cite>
            </figcaption>
        </figure>
    </div>

    <div class="hd1  d-flex"style="height: 60px; width: 65%;">
        <div class="profil " style="height: auto; width: 92%;">
            <div class="name d-flex flex-row-reverse">

                <div class="run" style="width: 50%">
                    <h4 class="fonts">Welcome <%=session.getAttribute("email")%></h4>

                </div>

                <div class="run" style="width: 50%">
                    <marquee width="100%" direction="left" height="auto">
                       "buy first, pay later"
                    </marquee>
                </div>

            </div>
        </div>
        <div class="profil" style="height: auto; width: 8%; margin:auto; display: flex; justify-content: center;align-items: center;">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fa-solid fa fa-user fa-3x" ></i></a>

            <ul class="dropdown-menu" style="margin-right: 100px;">
                <li><a class="dropdown-item" href="./seller/login.jsp">Customer Login</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Change Account</a></li>
                <li><a class="dropdown-item" href="admin_home.jsp">admin</a></li>
            </ul>


        </div>
    </div>

</div>