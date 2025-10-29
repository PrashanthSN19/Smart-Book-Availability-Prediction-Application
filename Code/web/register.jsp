<!-- <%@page contentType="text/html" pageEncoding="UTF-8" %> -->
    <!DOCTYPE html>
    <html>

    <head>
        <title>Smart Book Availability</title>

        <!--/tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <!--//tags -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
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
                                <a class="nav-link fs-5 active fw-bold text-decoration-underline link-offset-2"
                                    href="register.jsp">Register</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link fs-5" href="login.jsp">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link fs-5" href="contact.jsp">Contact</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

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

                                        <form id="form1" runat="server" action="registerdata.jsp" method="post">

                                            <h4
                                                class="mb-5 text-center text-dark fw-bold text-decoration-underline link-offset-2 text-capitalize">
                                                Signup</h4>

                                            <div class="row gy-3">

                                                <div class="col-md-12 position-relative">
                                                    <label for="name" class="form-label">Enter Name :</label>
                                                    <input type="text" placeholder="Enter your name"
                                                        class="form-control shadow-none border border-primary"
                                                        runat="server" name="named" id="name" onchange="myFunction()">
                                                        <div class="invalid-tooltip rounded-3 ">
                                                            * Enter Name
                                                        </div>
                                                </div>

                                                <div class="col-md-12 position-relative">
                                                    <label for="pswd" class="form-label">Enter Desired Password
                                                        :</label>
                                                    <input type="password" name="pswd" id="pswd"
                                                        placeholder="Enter desired password"
                                                        class="form-control shadow-none border border-primary"
                                                        runat="server">
                                                        <div class="invalid-tooltip rounded-3 ">
                                                            * Enter Password
                                                        </div>
                                                </div>

                                                <div class="col-md-12 position-relative">
                                                    <label for="cpswd" class="form-label">Confirm Password :</label>
                                                    <input type="password" name="cpswd" id="cpswd"
                                                        placeholder="Confirm password"
                                                        class="form-control shadow-none border border-primary"
                                                        runat="server">
                                                        <div class="invalid-tooltip rounded-3 alertcpass">
                                                            * Enter Confirm Password
                                                        </div>
                                                </div>

                                                <div class="col-md-12 position-relative">
                                                    <label for="uname" class="form-label">Enter Desired Username
                                                        :</label>
                                                    <input type="text" name="uname" id="uname"
                                                        placeholder="Enter desired username"
                                                        class="form-control shadow-none border border-primary"
                                                        runat="server" readonly="readonly">
                                                        <div class="invalid-tooltip rounded-3 ">
                                                            * Enter Username
                                                        </div>
                                                </div>

                                                <div class="col-md-12 position-relative">
                                                    <label for="age" class="form-label">Age :</label>
                                                    <input type="text" name="age" id="age" placeholder="Enter your age"
                                                        class="form-control shadow-none border border-primary"
                                                        runat="server">
                                                        <div class="invalid-tooltip rounded-3 ">
                                                            * Enter Age
                                                        </div>
                                                </div>

                                                <div class="col-md-12 position-relative">
                                                    <label for="mailid" class="form-label">Email Id :</label>
                                                    <input type="text" name="email" id="mailid"
                                                        placeholder="Enter your mail id"
                                                        class="form-control shadow-none border border-primary"
                                                        runat="server">
                                                        <div class="invalid-tooltip rounded-3 alertmailid">
                                                            * Enter Valid Email
                                                        </div>
                                                </div>

                                                <div class="col-md-12 position-relative">
                                                    <label for="gender" class="form-label">Gender :</label>
                                                    <select name="gender" id="gender"
                                                        class="form-select shadow-none border border-primary"
                                                        runat="server">
                                                        <option value="">--Select--</option>
                                                        <option>Male</option>
                                                        <option>Female</option>
                                                    </select>
                                                    <div class="invalid-tooltip rounded-3 ">
                                                        * Select Gender
                                                    </div>
                                                </div>

                                                <div class="col-md-12 position-relative">
                                                    <label for="utype" class="form-label">User Type :</label>
                                                    <select name="utype" id="utype"
                                                        class="form-select shadow-none border border-primary"
                                                        runat="server">
                                                        <option value="">--Select--</option>
                                                        <option>Publisher</option>
                                                        <option>Customer</option>
                                                        <option>Merchant</option>
                                                    </select>
                                                    <div class="invalid-tooltip rounded-3 ">
                                                        * Select User Type
                                                    </div>
                                                </div>

                                                <div class="col-md-12 position-relative">
                                                    <label for="phone" class="form-label">Phone Number :</label>
                                                    <input type="text" name="phone" id="phone"
                                                        placeholder="Enter your phone number"
                                                        class="form-control shadow-none border border-primary"
                                                        runat="server">
                                                        <div class="invalid-tooltip rounded-3 alertphone">
                                                            * Enter Valid Phone
                                                        </div>
                                                </div>

                                                <div class="col-md-12 position-relative">
                                                    <label for="addr" class="form-label">Address:</label>
                                                    <textarea name="addr" id="addr"
                                                        placeholder="Enter your Address"
                                                        class="form-control shadow-none border border-primary"
                                                        runat="server" ></textarea>
                                                </div>

                                                <div class="col-md-12 position-relative mt-4 d-flex gap-4">
                                                    <input id="reset" type="reset" value="Reset" runat="server"
                                                        class="btn btn-danger shadow-none w-100" />
                                                    <input id="login" type="submit" value="Submit" runat="server" 
                                                        class="btn btn-primary shadow-none w-100" />
                                                </div>


                                            </div>


                                            <div class="text-center mt-3">
                                                <a href="login.jsp"
                                                    class="text-decoration-none d-flex align-items-center gap-2 justify-content-center fs-5">Login
                                                    Page <i class="fa-solid fa-circle-arrow-right"></i></a>
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
        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script>
            $(function() {
         
        
                $("#form1").on("submit", function(e) {
                    debugger;
        
                    let phonestat = false;
        
                    var name = $("#name").val()
                    var pswd = $("#pswd").val()
                    var cpswd = $("#cpswd").val()
                    var uname = $("#uname").val()  
                    var age = $("#age").val()  
                    var mailid = $("#mailid").val()  
                    var gender = $("#gender").val()  
                    var utype = $("#utype").val()  
                    var phone = $("#phone").val()  
                    var testmailid = new RegExp("[a-z0-9]+@[a-z]+\.[a-z]{2,3}");
                    var testphone = new RegExp("^[6-9][0-9]{9}$");
                    var testaadhar = new RegExp("^[2-9]{1}[0-9]{3}[0-9]{4}[0-9]{4}$");
                    var testusn = new RegExp("(?=(.[a-zA-Z])(?=.[0-9]))");
        
                    if (mailid != "") {
                        if (!testmailid.test(mailid)) {
                            $(".alertmailid").text("* Enter Valid Email");
                            $("#mailid").addClass("is-invalid");
                            e.preventDefault();
                        } else {
                            $("#mailid").removeClass("is-invalid");
                        }
                    } else {
                        $(".alertmailid").text("* Enter Email");
                        $("#mailid").addClass("is-invalid");
                        e.preventDefault();
                    }
        
                    if (phone != "") {
                        if (!testphone.test(phone)) {
                            $(".alertphone").text("* Enter Valid Phone");
                            $("#phone").addClass("is-invalid");
                            e.preventDefault();
        
                        } else {
                            $("#phone").removeClass("is-invalid");
                        }
                    } else {
                        $(".alertphone").text("* Enter Phone");
                        $("#phone").addClass("is-invalid");
                        e.preventDefault();
                    }
        
        
                    if (pswd != "") {
                        $("#pswd").removeClass("is-invalid");
                    } else {
                        $("#pswd").addClass("is-invalid");
                        e.preventDefault();
                    }
        
                    if (cpswd != "") 
                    { 
                      if(pswd != cpswd)
                      {
                        $("#cpswd").addClass("is-invalid");
                        $(".alertcpass").text("* Password Do Not Match");
                        e.preventDefault();
                      } 
                      else  
                      { 
                        $("#cpswd").removeClass("is-invalid");
                      }
                    }
                      else  
                      {
                        $(".alertcpass").text("* Enter Confirm Password");
                        $("#cpswd").addClass("is-invalid");
                        e.preventDefault();
                      }
        
                    if (name != "") {
                        $("#name").removeClass("is-invalid");
                    } else {
                        $("#name").addClass("is-invalid");
                        e.preventDefault();
                    } 
        
                    if (uname != "") {
                        $("#uname").removeClass("is-invalid");
                    } else {
                        $("#uname").addClass("is-invalid");
                        e.preventDefault();
                    } 
        
                    if (age != "") {
                        $("#age").removeClass("is-invalid");
                    } else {
                        $("#age").addClass("is-invalid");
                        e.preventDefault();
                    } 
        
                    if (gender != "") {
                        $("#gender").removeClass("is-invalid");
                    } else {
                        $("#gender").addClass("is-invalid");
                        e.preventDefault();
                    } 
                    if (utype != "") {
                        $("#utype").removeClass("is-invalid");
                    } else {
                        $("#utype").addClass("is-invalid");
                        e.preventDefault();
                    } 
                   
        
                })
        
                $("input,textarea,select").on("keydown change", function() {
                    $(this).removeClass("is-invalid")
                })
        
                $("#reset").on("click", function() {
                $("input,textarea,select").removeClass("is-invalid") 
            })
            })
        </script>
    </body>

    </html>