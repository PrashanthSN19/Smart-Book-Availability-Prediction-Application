<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> -->
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
							<a class="nav-link fs-5" aria-current="page" href="userpage.jsp">Home</a>
						</li>
						<li class="nav-item">
							<a class="nav-link fs-5" href="cloudport.jsp">Cloud Port</a>
						</li>
						<li class="nav-item">
							<a class="nav-link fs-5 active fw-bold text-decoration-underline link-offset-2 "
								href="request.jsp">Request</a>
						</li>
						<li class="nav-item">
							<a class="nav-link fs-5 "
								href="mrequest.jsp">Requests For Me</a>
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
										Files Search</h4>

									<form id="form1" runat="server" method="get">

										<div class="row gy-3 mb-2">

											<div class="col-md-12 d-flex align-items-end gap-2">
												<label for="dated" class="form-label d-block text-nowrap">Search
													For:</label>
												<input type="text" placeholder="Enter date" runat="server" name="data"
													id="data" class="form-control shadow-none border border-primary">
												<input type="submit" value="Fetch !!!"
													class="btn btn-primary shadow-none" />
											</div>
										</div>

										<% Connection con=null; 
                                                                                String url="jdbc:mysql://localhost:3306/" ; 
                                                                                String dbName="smartbook" ; String driver="com.mysql.jdbc.Driver" ; 
                                                                                String userName="root" ; 
                                                                                String password="" ; 
                                                                                try {
											Class.forName(driver).newInstance(); con=DriverManager.getConnection(url +
											dbName, userName, password); System.out.println("Connected to the database"); 
                                                                                } 
                                                                                catch (Exception e) 
                                                                                { 
                                                                                    e.printStackTrace(); 
                                                                                } 
                                                                                String	fname=request.getParameter("data"); 
                                                                                   if(fname!=null) 
                                                                                { ResultSet res=null;
                                                                                %>




											<div class="table-responsive">

												<table id="customers" class="table table-bordered">
													<thead>
														<tr>
															<th>File ID</th>
															<th>File Name</th>
															<th>Cloud</th>
															<th>File Type</th>
															<th>Request</th>
														</tr>
													</thead>
													<tbody>
														<% 
                                                                                                                    String uname=session.getAttribute("Uname").toString();
															 if(uname.equals("")){
                                                                                                                            response.sendRedirect("login.jsp");
                                                                                                                        }
                                                                                                                         PreparedStatement st=con.prepareStatement("select Fid,Filname,Cloud,FType,UploadedBy from filedata where Filname like '%"+fname+"%' and UploadedBy<>'"+uname+"'");
															res=st.executeQuery();
															while(res.next())
															{
															%>
															<tr>
																<td>
																	<%=res.getString(1)%>
																</td>
																<td>
																	<%=res.getString(2)%>
																</td>
																<td>
																	<%=res.getString(3)%>
																</td>
																<td>
																	<%=res.getString(4)%>
																</td>
																<td><a href="requestfile.jsp?Fid=<%=res.getString(1)%>&Own=<%=res.getString(5)%>&fname=<%=res.getString(2)%>"
																	class="btn btn-sm btn-primary shadow-none">Request</a>
															</tr>
															<% } } %>
													</tbody>
												</table>
											</div>
									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>


		<div class="flex-grow-1"></div>

		<footer class="bg-secondary text-uppercase text-white text-center">
			<script>document.write(new Date().getFullYear());</script> © Smart Book Availability. All Rights Reserved
		</footer>


	</div>
	<!-- //footer -->

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>

</body>

</html>