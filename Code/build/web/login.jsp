<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Smart Book Availability</title>

        <!--/tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <meta name="keywords" content="Relief Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <!--//tags -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />


        <script>
            function myFunction() {
                var x = document.getElementById("name").value;
                document.getElementById("uname").value = document.getElementById("name").value + Math.floor(Math.random() * (9999 - 5));
            }
        </script>
    </head>

    <body>
        <div class="min-vh-100 d-flex flex-column"
            style="background-image:url('images/bg1.jpg'); background-repeat: no-repeat; background-size: cover;">

            <nav class="navbar navbar-expand-lg bg-white border-bottom border-secondary py-3">
                <div class="container-fluid">
                    <a class="navbar-brand text-uppercase fw-bold fs-4" href="#"><i class="fa-solid fa-shield-halved"></i> Smart Book Availability</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link fs-5" aria-current="page" href="index.html">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link fs-5" href="register.jsp">Register</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link fs-5 active fw-bold text-decoration-underline link-offset-2"
                                    href="login.jsp">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link fs-5" href="contact.jsp">Contact</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
<% session.setAttribute("Uname", ""); %>
            <div class="container-fluid my-auto">

                <div class="row justify-content-center">
                    <div class="col-md-11">
                        <div class="card rounded text-black border-primary-subtle shadow-sm my-5">
                            <div class="card-body py-1 ">
                                <div class="row">
                                    <div class="col-md-6 g-0">
                                        <img src="./images/banner2.jpg" class="img-fluid h-100"
                                            style="object-fit: cover;" />
                                    </div>
                                    <div class="col-md-6 py-3 px-5">

                                        <form id="form1" runat="server" action="logindata.jsp" method="post">
                                            <h4 class="mb-5 text-center text-dark fw-bold text-decoration-underline link-offset-2 text-capitalize">Login Page</h4>

                                            <div class="row gy-3">


                                                <div class="col-md-12">
                                                    <label for="uname" class="form-label">Enter Your Username:</label>
                                                    <input type="text" name="uname" id="uname" placeholder="Enter the username" class="form-control shadow-none border border-primary" runat="server">
                                                </div>

                                                <div class="col-md-12">
                                                    <label for="pswd" class="form-label">Enter Your Password:</label>
                                                    <input type="password" name="pswd" id="pswd" placeholder="Enter the password" class="form-control shadow-none border border-primary" runat="server">
                                                </div>
 

                                                <div class="col-md-12 mt-4 d-flex gap-4">
                                                    <input id="reset" type="reset" value="Reset" runat="server" class="btn btn-danger shadow-none w-100" />
                                                    <input id="logi" type="submit" value="Submit" runat="server"  class="btn btn-primary shadow-none w-100" />
                                                </div>

                                                </div>
                                                
                                                

                                        <div class="text-center mt-4 d-flex justify-content-center align-items-center gap-2">
                                            <a href="register.jsp" class="text-decoration-none d-flex align-items-center gap-2 justify-content-center fs-5">Sign Up Page <i class="fa-solid fa-circle-arrow-right"></i> </a>
                                            | 
                                            <a href="forgotpassword.jsp" class="text-decoration-none d-flex align-items-center gap-2 justify-content-center fs-5">Forgot Password </a>
                                        </div> 
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>


            <!-- <div class="flex-grow-1"></div> -->

            <footer class="bg-secondary text-uppercase text-white text-center">
                <script>document.write(new Date().getFullYear());</script> © Smart Book Availability. All Rights Reserved
            </footer>


        </div>
        <!-- //footer -->

        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>

    </body>

    </html>