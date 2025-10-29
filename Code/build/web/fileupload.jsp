<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>Smart Book Availability</title>

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
        
<script>
function myFunction() {
    document.getElementById("cid").value="CID"+Math.floor(Math.random() * (9999 - 5));
    var today = new Date();
var dd = today.getDate();

var mm = today.getMonth()+1; 
var yyyy = today.getFullYear();
today = dd+'/'+mm+'/'+yyyy;
    document.getElementById("dated").value=today;
}



function ImagePreview() { 
    debugger;
 var PreviewIMG = document.getElementById('PreviewPicture'); 
 var UploadFile    =  document.getElementById('FileUpload').files[0]; 
 var ReaderObj  =  new FileReader(); 
 ReaderObj.onloadend = function () { 
    PreviewIMG.style.backgroundImage  = "url("+ ReaderObj.result+")";
  } 
 if (UploadFile) { 
    ReaderObj.readAsDataURL(UploadFile);
  } else { 
     PreviewIMG.style.backgroundImage  = "";
  } 
}
</script>
</head>
 <% String uname=session.getAttribute("Uname").toString();
        if(uname.equals("")){
            response.sendRedirect("login.jsp");
        }
        %>
<body onload="myFunction()">
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
							<a class="navbar-brand" href="index.html"> Access Control using Keyword Search
								
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
							<li>
								<a class="scroll" href="uploadfile.jsp">Upload File</a>
							</li>
							<li>
								<a class="scroll" href="managemyfile.jsp">Manage Users</a>
							</li>
							<li class="active">
								<a class="scroll" href="fileupload.jsp">Suspect Upload</a>
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
	
        <div id="FormBody" style="padding:110px;background-size: cover;min-height:800px;background-image:url('images/bg1.jpg');">
           <div style="width:20%;float:left;margin:0;">.
            </div>

           <div style="width:40%;float:left;padding-left:1px;color:black;">
            
              <form id="form1" runat="server" action="suspectdata.jsp" method="post" enctype="multipart/form-data">
               <!-- <form action="upload" method="post" enctype="multipart/form-data">-->
				<table class="style1" style="color:black;font-size:18px;font-weight:bold;">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="center" colspan="2">
                            <span style="font-weight:bolder;font-size:25px;color:white;">Upload Suspect Page !!!</span></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                           Suspect Photo:</td>
                        <td>&nbsp;
<input id="FileUpload" type="file" name="ImageUpload" class="image" onchange="ImagePreview()" />  
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                           </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <input id="login" type="submit" value="Fetch Data" runat="server" style="background-color:#B8D4E3;border-radius:5px;width:95px;" /></td>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    
                </table>
                </form>
            </div>
            
            <div id="PreviewPicture" style="width:20%;float:left;margin:0;min-height: 200px;background-size: 100% 100%;margin-top: 0px;"></div>
      </div>
    
                       
	<!-- footer -->
	<div class="footer" id="contact" style="height:50px;">
			
			<p class="copy-right">2018 © Access Control using Keyword Search System. All rights reserved.
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