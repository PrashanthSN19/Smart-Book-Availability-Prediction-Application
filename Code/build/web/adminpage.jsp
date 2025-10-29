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


	</head>

	<body>
		<div class="min-vh-100 d-flex flex-column"
			style="background-image:url('images/bg1.jpg'); background-repeat: no-repeat; background-size: cover;">

			<nav class="navbar navbar-expand-lg bg-white border-bottom border-secondary py-3">
				<div class="container-fluid">
					<a class="navbar-brand text-uppercase fw-bold fs-4" href="#"><i
							class="fa-solid fa-shield-halved"></i>
						Smart Book Availability</a>
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
						data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
							<li class="nav-item">
								<a class="nav-link fs-5 active fw-bold text-decoration-underline link-offset-2"
									aria-current="page" href="adminpage.jsp">Home</a>
							</li>
							<li class="nav-item">
								<a class="nav-link fs-5" href="manageusers.jsp">Manage Users</a>
							</li>
							<li class="nav-item">
								<a class="nav-link fs-5 " href="approveusers.jsp">Approve Users</a>
							</li>
							<li class="nav-item">
								<a class="nav-link fs-5" href="managefiles.jsp">Manage Books</a>
							</li>
							<li class="nav-item">
								<a class="nav-link fs-5" href="login.jsp">Logout</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="container py-5 my-5">
				<div class="row d-flex justify-content-center align-items-center">
					<div class="col-md-11">
						<div class="card">
							<div class="row g-0 mb-4">
								<div class="col-md-12 d-flex align-items-center">
									<div class="card-body p-md-4 py-4 mx-md-4 mx-2">

										<h4
											class="mb-5 text-center  fw-bold text-decoration-underline link-offset-2 text-capitalize">
											Welcome to Admin Home page</h4>



										<div class="row gx-4 gy-2">
											<div class="col-md-4 text-center">
												<img src="images/mu.png" style="width:250px;height:250px;"
													class="img-thumbnail img-fluid border-2" />
                                                                                                <br/>
												<a href="manageusers.jsp"
													class="text-dark text-decoration-none fw-bold fs-5">Manage Users</a>
											</div>
											<div class="col-md-4 text-center">
												<img src="images/ua.png" style="width:250px;height:250px;"
													class="img-thumbnail img-fluid border-2" />
                                                                                                <br/>
												<a href="approveusers.jsp"
													class="text-dark text-decoration-none fw-bold fs-5">Approve
													Users</a>
											</div>
											<div class="col-md-4 text-center">
												<img src="images/cf.png" style="width:250px;height:250px;"
													class="img-thumbnail img-fluid border-2" />
                                                                                                <br/>
												<a href="managefiles.jsp"
													class="text-dark text-decoration-none fw-bold fs-5">Manage Books</a>
											</div>
										</div>

									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>



			<footer class="bg-secondary text-uppercase text-white text-center">
				<script>document.write(new Date().getFullYear());</script> © Smart Book Availability. All Rights Reserved
			</footer>


		</div>
		<!-- //footer -->

		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>

	</body>

	</html>