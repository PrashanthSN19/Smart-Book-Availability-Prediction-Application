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
							<a class="nav-link fs-5" aria-current="page" href="index.html">Home</a>
						</li>
						<li class="nav-item">
							<a class="nav-link fs-5" href="register.jsp">Register</a>
						</li>
						<li class="nav-item">
							<a class="nav-link fs-5 " href="login.jsp">Login</a>
						</li>
						<li class="nav-item">
							<a class="nav-link fs-5 active fw-bold text-decoration-underline link-offset-2"
								href="contact.jsp">Contact</a>
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

							<ul class="nav nav-pills my-3 nav-fill" id="pills-tab" role="tablist">
								<li class="nav-item" role="presentation">
									<button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill"
										data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home"
										aria-selected="true">Contact Info</button>
								</li>
								<li class="nav-item" role="presentation">
									<button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
										data-bs-target="#pills-profile" type="button" role="tab"
										aria-controls="pills-profile" aria-selected="false">Send Message</button>
								</li>
								<li class="nav-item" role="presentation">
									<button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill"
										data-bs-target="#pills-contact" type="button" role="tab"
										aria-controls="pills-contact" aria-selected="false">View Map</button>
								</li>
							</ul>

							<div class="tab-content" id="pills-tabContent">

								<div class="tab-pane fade show active" id="pills-home" role="tabpanel"
									aria-labelledby="pills-home-tab" tabindex="0">

									<div class="row p-4">

										<div class="col-md-4">
											<h6>
												<span class="fas fa-phone-volume" aria-hidden="true"></span>
												Phone Number
											</h6>
											<p>+1 234 567 8901, +1 234 567 8901</p>
										</div>

										<div class="col-md-4">
											<h6>
												<span class="far fa-envelope" aria-hidden="true"></span>
												Email Address
											</h6>
											<p>Email :<a href="mailto:example@email.com"> mail@example.com</a></p>
										</div>

										<div class="col-md-4">
											<h6>
												<span class="fas fa-map-marker-alt" aria-hidden="true"></span>
												Location
											</h6>
											<p>Broome St, NY 10002,California, USA.

											</p>
										</div>

									</div>

								</div>

								<div class="tab-pane fade" id="pills-profile" role="tabpanel"
									aria-labelledby="pills-profile-tab" tabindex="0">

									<form action="#" method="get" class="p-4">
										<h5 class="text-center mb-5">Please fill this form to contact with us.</h5>
										<div class="row gy-3 justify-content-center gx-4">
											<div class="col-md-6">
												<label for="Name" class="form-label">Name:</label>
												<input type="text" name="Name" placeholder="Name" required=""
													class="form-control shadow-none border-primary">
											</div>
											<div class="col-md-6">
												<label for="Email" class="form-label">Email:</label>
												<input type="email" name="Email" placeholder="Email" required=""
													class="form-control shadow-none border-primary">
											</div>
											<div class="col-md-6">
												<label for="Telephone" class="form-label">Telephone:</label>
												<input type="text" name="Telephone" placeholder="Telephone" required=""
													class="form-control shadow-none border-primary">
											</div>
											<div class="col-md-6">
												<label for="Subject" class="form-label">Subject:</label>
												<input type="text" name="Subject" placeholder="Subject" required=""
													class="form-control shadow-none border-primary">
											</div>
											<div class="col-md-12">
												<label for="Message" class="form-label">Message:</label>
												<textarea name="Message" onfocus="this.value = '';"
													onblur="if (this.value == '') {this.value = 'Message...';}"
													placeholder="Message" required="" rows="4"
													class="form-control shadow-none border-primary">Message...</textarea>
											</div>
											<div class="col-md-12 text-end">
												<input type="submit" value="Submit" class="btn btn-primary shadow-none">
												<input type="reset" value="Clear" class="btn btn-danger shadow-none">
											</div>
										</div>
									</form>

								</div>

								<div class="tab-pane fade" id="pills-contact" role="tabpanel"
									aria-labelledby="pills-contact-tab" tabindex="0">
									<div class="p-4 col-md-12">

										<iframe
											src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d100949.24429313939!2d-122.44206553967531!3d37.75102885910819!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80859a6d00690021%3A0x4a501367f076adff!2sSan+Francisco%2C+CA%2C+USA!5e0!3m2!1sen!2sin!4v1472190196783"
											class="img-thumbnail w-100 img-fluid vh-50"  allowfullscreen=""></iframe>
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