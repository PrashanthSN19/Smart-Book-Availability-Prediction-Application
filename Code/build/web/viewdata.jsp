<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
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
									aria-current="page" href="custpage.jsp">Home</a>
							</li>
							<li class="nav-item">
								<a class="nav-link fs-5 " href="mypurchases.jsp">My Purchases</a>
							</li>
							<li class="nav-item">
								<a class="nav-link fs-5" href="login.jsp">Logout</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>


                    <%
                        String uname=session.getAttribute("Uname").toString();
        if(uname.equals("")){
            response.sendRedirect("login.jsp");
        }%>

			<div class="container py-5 my-5">
				<div class="row d-flex justify-content-center align-items-center">
					<div class="col-md-11">
						<div class="card">
							<div class="row g-0 mb-4">
								<div class="col-md-12 d-flex align-items-center">
									<div class="card-body p-md-4 py-4 mx-md-4 mx-2">

										<h4
											class="mb-5 text-center  fw-bold text-decoration-underline link-offset-2 text-capitalize">
											Book Information Page</h4>

                                                                                <div class="row">

										<% Connection con=null; 
                                                                                String url="jdbc:mysql://localhost:3306/" ; 
                                                                                String dbName="smartbook" ; 
                                                                                String driver="com.mysql.jdbc.Driver" ; 
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
                                                                                String Bid=request.getParameter("bid");
                                                                                ResultSet res=null;
                                                                                String sqlquery="select * from filedata where Bid='"+Bid+"'";
                                                                                PreparedStatement st1=con.prepareStatement("select count(*) from reviews where Bid='"+Bid+"'");
                                                                                String rev="";
                                                                                res=st1.executeQuery();
                                                                                while(res.next())
                                                                                {
                                                                                    rev=res.getString(1);
                                                                                }
                                                                                PreparedStatement st=con.prepareStatement(sqlquery);
                                                                                res=st.executeQuery();
                                                                                while(res.next())
                                                                                {
                                                                                %>

                                                                                <div class="col-lg-6" style="padding:20px;">
                                                                                    <img src="./Files/<%=res.getString(6)%>" style="height:500px;" /><br/>
                                                                                </div>
                                                                                <div  class="col-lg-6" style="padding:20px;">
                                                                                    <h5>Book Id : <%=res.getString(1)%></h5>
                                                                                    <h5>Book name : <%=res.getString(2)%></h5>
                                                                                    <h5>Book Type : <%=res.getString(3)%></h5>
                                                                                    <h5>Description : </h5>
                                                                                    <h5><%=res.getString(5)%></h5>
                                                                                    <h5>Publisher : <%=res.getString(8)%></h5>
                                                                                    <h5>Cost : <%=res.getString(9)%> Rs</h5>
                                                                                    <h5>Review Counts : <a href="allreviews.jsp?bid=<%=res.getString(1)%>"><%=rev%> Review</a> </h5>
                                                                                    <h5><a href="https://www.google.com/maps/search/<%=res.getString(10)%>" target="_blank">View Book Location </a></h5>
                                                                                    <a href="addtocart.jsp?bid=<%=res.getString(1)%>" class="btn btn-primary col-lg-12">Add to cart</a>
                                                                                </div>
                                                                                <% } 
                                                                                    
%>                                                                              </div>


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