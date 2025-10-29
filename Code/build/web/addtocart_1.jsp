
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*, org.apache.commons.fileupload.servlet.ServletFileUpload, org.apache.commons.fileupload.disk.DiskFileItemFactory, org.apache.commons.io.FilenameUtils" %>

<!DOCTYPE html>
<html>

<head>
	<title>Supermarket</title>

	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Relief Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />

	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:200,200i,300,300i,400,400i,500,500i,600,600i,700" rel="stylesheet">
        

        
        
        <style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}
#customers tr:nth-child(odd){background-color: #ebebe0;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>


</head>

<body>
	<div class="top_header" id="home">
		<!-- Fixed navbar -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="nav_top_fx_w3layouts_agileits">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					    aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
					
					<div class="logo_wthree_agile">
						<h1>
							<a class="navbar-brand" href="index.html"> E-Mart
								
							</a>
						</h1>
					</div>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<div class="nav_right_top">
												<ul class="nav navbar-nav">
								<li>
								<a class="scroll" href="userpage.jsp">Home</a>
							</li>
							<li class="active">
								<a class="scroll" href="sproduct.jsp">Search Product</a>
							</li>
							<li>
								<a class="scroll" href="mypurchases.jsp">My Purchases</a>
							</li>   
							<li>
								<a class="scroll" href="mycart.jsp">My Cart</a>
							</li>                                                      
							
							<li>
								<a class="scroll" href="login.jsp">Logout</a>
							</li>

						</ul>
					</div>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>
		<div class="clearfix"></div>
	</div>
	
       <div id="FormBody" style="padding:110px;background-size: cover;min-height:700px;background-image:url('images/bg1.jpg');">
                      <div style="width:100%;float:left;margin:0;padding-top:10px;padding-bottom:60px;">
               <center> <h1 style="color:white;">CartPage</h1></center>
            </div>


           <div style="width:80%;float:left;padding-left:1px;color:black;">
            
               <form id="form1" runat="server" method="get" action="cartdata.jsp">
                 
                    <div class="col-md-12">
<%
    
    Connection con = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "smartbook";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "";
        try {
            Class.forName(driver).newInstance();
            con = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("Connected to the database");
    } catch (Exception e) {
            e.printStackTrace();
        }
         String Bid=request.getParameter("bid");
          ResultSet res=null;
                                                                                String sqlquery="select * from filedata where Bid='"+Bid+"'";
                                                                                 PreparedStatement st=con.prepareStatement(sqlquery);
                                                                                res=st.executeQuery();
                                                                                while(res.next())
                                                                                {
 %>       
 <div class="col-md-6">
     <img src="Book Name : <%=res.getString(2)%>" class="col-md-12" style="height:350px;" />
 </div>   
     
 <div class="col-md-4">
     <div style="font-weight:bolder;font-size:25px;">Book Id : </div>
     <input type="text" id="pid" name="pid" value="<%=res.getString(1)%>" readonly="readonly"  style="font-weight:bolder;font-size:25px;" />
     <br/>
      <br/>
     <div style="font-weight:bolder;font-size:25px;">Cost Per Piece : </div>
     <input type="text" id="cost" name="cost" value="<%=res.getString(9)%>" readonly="readonly"  style="font-weight:bolder;font-size:25px;" />
      
     <br/>
     <div style="font-weight:bolder;font-size:25px;">Quantity : </div>
     <input type="number" id="quan" name="quan"  style="font-weight:bolder;font-size:25px;" onchange="calquan()" />
      <br/>
     <div style="font-weight:bolder;font-size:25px;">Total Cost: </div>
     <input type="text" id="tcost" name="tcost" readonly="readonly"  style="font-weight:bolder;font-size:25px;" />
      
     
     <script>
         function calquan()
         {
             var cst=document.getElementById('cost').value;
             var quan=document.getElementById('quan').value;
             var tc=parseInt(cst)*parseInt(quan);
             document.getElementById('tcost').value=tc;
             
         }
     </script>
     <%
         }
         %>
     <br/>
     <br/>
     <div>
         <input type="submit" value="Add to Cart" class="btn btn-success" style="font-weight:bolder;font-size:25px;"/>
     </div>
 </div>

 </div>
                </form>
            </div>
      </div>
	<!-- footer -->
	<div class="footer" id="contact" style="height:50px;">
			
			<p class="copy-right"><script>document.write(new Date().getFullYear())</script> © E-Mart. All rights reserved.
			</p>
	</div>
	<!-- //footer -->
	<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 4
			$("#slider4").responsiveSlides({
				auto: true,
				pager: true,
				nav: false,
				speed: 500,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<script type="text/javascript" src="js/bootstrap.js"></script>

	<script type="text/javascript" src="js/all.js"></script>
	<script>
		$('ul.dropdown-menu li').hover(function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
		}, function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
		});
	</script>

	<!-- js -->
	<!-- script for responsive tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true, // 100% fit in a container
				closed: 'accordion', // Start closed if in accordion view
				activate: function (event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type: 'vertical',
				width: 'auto',
				fit: true
			});
		});
	</script>
	<!--// script for responsive tabs -->
	<!-- Smooth-Scrolling-JavaScript -->
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll, .navbar li a, .footer li a").click(function (event) {
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //Smooth-Scrolling-JavaScript -->
	<script type="text/javascript">
		$(document).ready(function () {
			/*
									var defaults = {
							  			containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
							 		};
									*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>


	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>

</html>
