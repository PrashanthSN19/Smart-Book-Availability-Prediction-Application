<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%> -->
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
            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth() + 1;
            var yyyy = today.getFullYear();
            today = dd + '/' + mm + '/' + yyyy;
            document.getElementById("dated").value = today;
        }

    </script>

</head>
 <% String uname=session.getAttribute("Uname").toString();
        if(uname.equals("")){
            response.sendRedirect("login.jsp");
        }
        %>

<body onload="myFunction()">


    <div class="min-vh-100 d-flex flex-column"
        style="background-image:url('images/bg1.jpg'); background-repeat: no-repeat; background-size: cover;">

        <nav class="navbar navbar-expand-lg bg-white border-bottom border-secondary py-3">
            <div class="container-fluid">
                <a class="navbar-brand text-uppercase fw-bold fs-4" href="#"><i class="fa-solid fa-shield-halved"></i>
                    Smart Book Availability</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link fs-5" aria-current="page" href="userpage.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fs-5" href="uploadfile.jsp">Upload File</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fs-5 " href="managemyfile.jsp">Manage Users</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fs-5 active fw-bold text-decoration-underline link-offset-2"
                                href="cloudport.jsp">Cloud Port</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fs-5" href="request.jsp">Request</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fs-5" href="login.jsp">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="container py-5 my-auto">
            <% 
                uname=session.getAttribute("Uname").toString(); //uname="Sunny Boyka6288" ;
                if(session.getAttribute("Uname")==null) { response.sendRedirect("login.jsp"); } %>
                <form id="form1" runat="server" action="portdata.jsp" method="post">
                    <div class="row d-flex justify-content-center align-items-center">
                        <div class="col-md-7">
                            <div class="card rounded text-black border-primary-subtle shadow-sm">
                                <div class="row g-0">
                                    <div class="col-md-12 d-flex align-items-center">
                                        <div class="card-body p-md-4 py-4 mx-md-4 mx-2">

                                            <h4
                                                class="mb-5 text-center text-dark fw-bold text-decoration-underline link-offset-2 text-capitalize">
                                                Cloud Porting Page</h4>


                                            <div class="row gy-3">

                                                <div class="col-md-12">
                                                    <label for="name" class="form-label">Username:</label>
                                                    <input type="text" placeholder="Enter your name"
                                                        class="form-control shadow-none border border-primary"
                                                        runat="server" name="named" id="name" value="<%= uname %>"
                                                        readonly>
                                                </div>


                                                <div class="col-md-12">
                                                    <label for="gender" class="form-label">Cloud:</label>
                                                    <select id="gender" name="cloud"
                                                        class="form-select shadow-none border border-primary"
                                                        runat="server">
                                                        <option>--Select--</option> 
                                                        <option>Cloud 1</option>
                                                        <option>Cloud 2</option>
                                                        <option>Cloud 3</option>
                                                    </select>
                                                </div>


                                                <div class="col-md-12">
                                                    <label for="dated" class="form-label">Dated:</label>
                                                    <input type="text" placeholder="Enter date" runat="server"
                                                    name="dated" id="dated"
                                                        class="form-control shadow-none border border-primary" >
                                                </div>
                                                 

                                               
                                            

                                                <div class="col-md-12 mt-4 d-flex gap-4">
                                                    <input id="reset" type="reset" value="Reset" runat="server"
                                                        class="btn btn-danger shadow-none w-100" />
                                                    <input id="login" type="submit" value="Port" runat="server"
                                                         
                                                        class="btn btn-primary shadow-none w-100" />
                                                </div>

                                                

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
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