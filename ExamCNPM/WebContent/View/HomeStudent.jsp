<%@page import="DAO.LoginDAO"%>
<%@page import="BEAN.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.http.HttpSession"%>

<%-- <%@page import="org.json.simple.JSONObject"%> --%>
<%-- <%@page import="DAO.ExamDAO"%> --%>
<%-- <%@page import="org.json.simple.JSONArray"%> --%>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Student</title>

<!-- Meta-Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Scholar Vision Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript">
            addEventListener("load", function() {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }

        </script>

<!-- Bootstrap-CSS -->
<link href="Style/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />

<!-- Jquery-confirm -->
<script type="text/javascript" src="Style/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="Style/js/jquery-confirm.js"></script>
<link href="Style/css/jquery-confirm.css" rel="stylesheet"
	type="text/css" media="all" />

<!-- Font-awesome-CSS -->
<link href="Style/css/font-awesome.css" rel="stylesheet">

<!-- Flex-slider-CSS -->
<link rel="stylesheet" href="Style/css/flexslider.css" type="text/css"
	media="screen" />

<!-- Owl-carousel-CSS -->
<link href="Style/css/owl.carousel.css" rel="stylesheet">

<!-- Index-Page-CSS -->
<link href="Style/css/style.css" rel="stylesheet" type="text/css"
	media="all" />

<!-- Headings-font -->
<link href="Style/css/font2.css" rel="stylesheet">

<!-- Body-font -->
<link href="Style/css/font.css" rel="stylesheet" type="text/css">

<link href="Style/css/user.css" rel="stylesheet" type="text/css" />

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
	integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
	integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
	crossorigin="anonymous"></script>


</head>

<body>

	<%
		// Lấy ra username đăng nhập vào từ session
		String user = (String) session.getAttribute("username");
		LoginDAO userDAO = new LoginDAO();
		User u = userDAO.getUser(user);
		%>

	<!-- banner -->
	<div class="banner1" id="home">
		<div class="banner-overlay-agileinfo ">
			<div class="topheader" style="height: 60px; background: #77b178">
				<div class="col-md-9 top-header-agile-left"
					style="margin-top: 20px;">
					<div class="infoarea" style="color: blue">
						<span> <i class="fa fa-envelope-o"></i>Email: ic@dut.udn.vn
						</span>
					</div>
				</div>
				<div class="col-md-3 top-header-agile-left" style="margin-top: 0px;">
					<div class="dropdown">
						<a class="btn dropdown-toggle pull-right user" type="button"
							data-toggle="dropdown"> <i class="glyphicon glyphicon-user"></i>
							<%=u.getFullname() %> <span class="caret"></span>
						</a>
						<ul class="dropdown-menu" style="width: 300px;">
							<li><a href="ViewProfile">Account Settings <span
									class="glyphicon glyphicon-cog pull-right"></span>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">Messages <span class="badge pull-right">
										42 </span>
							</a></li>
							<li class="divider"></li>
							<li><a href="HomePage">Sign Out <span
									class="glyphicon glyphicon-log-out pull-right"></span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="top-header-agile" style="background: white">
				<div class="col-md-6 top-header-agile-left nav-collapse ">

					<h1>
						<a href="HomeStudent"> <img class="img-responsive"
							src="Style/images/dut.jpg">
						</a>
					</h1>
				</div>

				<div class="col-md-6 top-header-agile-right text-md-center">
					<div class="span7">
						<div class="title_bloginfo" style="color: red">
							<h3 style="padding: 10px; text-align: center;">THE EXAM
								PERFORMANCE PROGRAM</h3>
							<h4 style="padding: 10px">INFORMATION TECHNOLOGY CENTER</h4>
						</div>
						<div class="infoarea" style="text-align: center;">
							<span> <i class="fa fa-phone"></i>Call Us: 0236.3842145 -
								0236.3842308
							</span>
						</div>
					</div>
				</div>


				<div class="clearfix"></div>
			</div>
		</div>


		<div class="container">

			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
			</nav>
			<div class="w3l_banner_info">
				<section class="slider">
					<div class="flexslider">
						<ul class="slides">
							<li>
								<div class="wthree_banner_info_grid">
									<h3>
										<span>Genius</span>Welcome to <br>scholar vision
									</h3>
									<p>Your child can be a genius</p>
								</div>
							</li>
							<li>
								<div class="wthree_banner_info_grid">
									<h3>
										<span>Genius</span>Education <br>for everyone
									</h3>
									<p>Your child can be a genius</p>
								</div>
							</li>
							<li>
								<div class="wthree_banner_info_grid">
									<h3>
										<span>Genius</span>Welcome to <br>scholar vision
									</h3>
									<p>Your child can be a genius</p>
								</div>
							</li>
							<li>
								<div class="wthree_banner_info_grid">
									<h3>
										<span>Genius</span>Education <br>for everyone
									</h3>
									<p>Your child can be a genius</p>
								</div>
							</li>
						</ul>
					</div>
				</section>

			</div>

		</div>
	</div>
	<!-- //banner -->
	<!-- about -->
	<div class="about-w3layouts">
		<div class="container">
			<div
				class="col-md-6 col-sm-6 gallery-grids agileits w3layouts gallery-grids1 wow slideInLeft">
				<div class="gallery-grid-images agileits w3layouts">
					<div
						class="col-md-4 col-sm-4 gallery-grid gallery-grid-1 history-grid-image">
						<img src="Style/images/a1.jpg" alt="Agileits W3layouts"
							class="zoom-img">
					</div>
					<div
						class="col-md-4 col-sm-4 gallery-grid gallery-grid-2 history-grid-image">
						<img src="Style/images/a2.jpg" alt="Agileits W3layouts"
							class="zoom-img">
					</div>
					<div
						class="col-md-4 col-sm-4 gallery-grid gallery-grid-3 history-grid-image">
						<img src="Style/images/a3.jpg" alt="Agileits W3layouts"
							class="zoom-img">
					</div>
					<div
						class="col-md-4 col-sm-4 gallery-grid gallery-grid-4 history-grid-image">
						<img src="Style/images/a4.jpg" alt="Agileits W3layouts"
							class="zoom-img">
					</div>
					<div
						class="col-md-4 col-sm-4 gallery-grid gallery-grid-5 history-grid-image">
						<img src="Style/images/a5.jpg" alt="Agileits W3layouts"
							class="zoom-img">
					</div>
					<div
						class="col-md-4 col-sm-4 gallery-grid gallery-grid-6 history-grid-image">
						<img src="Style/images/a6.jpg" alt="Agileits W3layouts"
							class="zoom-img">
					</div>
					<div class="clearfix"></div>
				</div>
			</div>

			<div
				class="col-md-6 col-sm-6 gallery-grids agileits w3layouts gallery-grids2 wow slideInRight">
				<h2 class="tittle-agileits-w3layouts">Exam Rules and
					Regulations</h2>
				<h5>Note:</h5>
				<p class="para-w3-agile">1. No person will be allowed in an
					examination room during an examination except the candidates
					concerned and those supervising the examination.</p>
				<p class="para-w3-agile">2. Candidates must appear at the
					examination room at least twenty minutes before the commencement of
					the examination.</p>
				<p class="para-w3-agile">......</p>
				<a class="button-w3layouts hvr-rectangle-out">know more</a>
			</div>
			<div class="clearfix"></div>

		</div>
	</div>
	<!-- //about -->
	<div class="page-header">
		<h3>COURSE OVERVIEW</h3>
	</div>
	<!--/services-->



	<div class="services-w3-agileits w3agileits-ref">
		<div class="col-md-6 services-left">
			<div class="service-grid1">
				<div class="col-md-4 service-grids-w3ls">
					<a href="CheckTest?data=1" class="jqueryConfirm1"> <i
						class="fa fa-desktop" aria-hidden="true"></i>
						<h5>Lập trình C#</h5>
						<p>Võ Đức Hoàng</p>
						<h4 style="color: red"><%=request.getAttribute("program")%></h4>
					</a>
				</div>

				<div class="col-md-4 service-grids-w3ls">
					<a href="CheckTest?data=2" class="jqueryConfirm2"> <i
						class="fa fa-language" aria-hidden="true"></i>
						<h5>Lập trình JAVA</h5>
						<p>Mai Văn Hà</p>
						<h4 style="color: red"><%=request.getAttribute("toeic") %></h4>
					</a>
				</div>

				<div class="col-md-4 service-grids-w3ls">
					<a href="CheckTest?data=3" class="jqueryConfirm3"> <i
						class="fa fa-connectdevelop" aria-hidden="true"></i>
						<h5>Mạng Máy Tính</h5>
						<p>Nguyễn Tấn Khôi</p>
						<h4 style="color: red"><%=request.getAttribute("web") %></h4>
					</a>
				</div>

				<script type="text/javascript">
				
				var program ="<%=request.getAttribute("program")%>";
				var toeic = "<%=request.getAttribute("toeic")%>";
				var ltw ="<%=request.getAttribute("web")%>";
				//data 1
                    $('.jqueryConfirm1').confirm( {
                    	title :"Test",
                    	type: 'green',
                    	content: "Are you want to take a test ?",
                    	buttons: {
                            Ok: {
                                text: 'Ok',
                                btnClass: 'btn-success',
                                action: function(){
                                	if(program.toString().trim() == "Don't have a test" || program.toString().trim() == "Don't have subject" )
                                		window.location = "LoginForwardHomeSt";
                                	else
                                		window.location = "CheckTest?data=1";
                                }
                            },
                            close: function () {
                            }
                        }
                    });
                    
                    //data 2
                    $('.jqueryConfirm2').confirm( {
                    	title :"Test",
                    	type: 'green',
                    	content: "Are you want to take a test ?",
                    	buttons: {
                            Ok: {
                                text: 'Ok',
                                btnClass: 'btn-success',
                                action: function(){
                                	if(toeic.toString().trim() == "Don't have a test" || toeic.toString().trim() == "Don't have subject" )
                                		window.location = "LoginForwardHomeSt";
                                	else
                                		window.location = "CheckTest?data=2";
                                }
                            },
                            close: function () {
                            }
                        }
                    });
                    
                    
                    
                    //data 3
                    $('.jqueryConfirm3').confirm( {
                    	title :"Test",
                    	type: 'green',
                    	content: "Are you want to take a test ?",
                    	buttons: {
                            Ok: {
                                text: 'Ok',
                                btnClass: 'btn-success',
                                action: function(){
                                	if(ltw.toString().trim() == "Don't have a test" || ltw.toString().trim() == "Don't have subject" )
                                		window.location = "LoginForwardHomeSt";
                                	else
                                		window.location = "CheckTest?data=3";
                                }
                            },
                            close: function () {
                            }
                        }
                    });
                </script>
				<div class="clearfix"></div>
			</div>
			<div class="service-grid2">
				<div class="col-md-4 service-grids-w3ls">
					<a href="TestSheet"> <i class="fa fa-language"
						aria-hidden="true"></i>
						<h5>Đồ Họa Máy Tính</h5>
						<p>Nguyễn Tấn Khôi</p>
					</a>
				</div>

				<div class="col-md-4 service-grids-w3ls">
					<a href="TestSheet"> <i class="fa fa-language"
						aria-hidden="true"></i>
						<h5>Công Nghệ Phần Mềm</h5>
						<p>Võ Đức Hoàng</p>
					</a>
				</div>
				<div class="col-md-4 service-grids-w3ls">
					<a href="ResultForward"> <i class="fa fa-file"
						aria-hidden="true"></i>
						<h5>Exam results</h5>
						<p>Students</p>
					</a>
				</div>

				<div class="clearfix"></div>
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
	<div class="col-md-6  services-right">
		<div class="services-info">
			<h3 class="tittle-agileits-w3layouts white-w3ls">Our best
				services</h3>
			<p class="para-w3-agile white-w3ls">Lorem ipsum dolor sit amet,
				consectetur adipiscing elit. Maecenas pulvinar tellus sed
				mauvehicula tempor. In hac habitasse platea dictumst. Donec nunc
				nunc,interdum sed aliquet quis.</p>
			<a href="#" class="button-w3layouts hvr-rectangle-out">Learn more</a>
		</div>
	</div>
	<div class="clearfix"></div>
	</div>
	<!--//services-->
	<!-- agile_testimonials -->
	<div class="test">
		<div class="container"></div>
	</div>
	<!-- //agile_testimonials -->

	<!--footer-->
	<div class="footer w3layouts">
		<div class="container">
			<div class="footer-row w3layouts-agile">
				<div class="col-md-5 footer-grids w3l-agileits">
					<h6>
						<a href="#">ABOUT US</a>
					</h6>
					<p>
						<span
							style="color: rgb(255, 255, 255); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">
							Da Nang University of Technology is one of the leading
							engineering universities in Vietnam The school has a high quality
							of input and output. Da Nang University of Technology is a member
							of the University of Danang system and is classified as a
							national key university in Vietnam. &nbsp;</span> <br> <a
							href="https://dut.udn.vn/" target="_blank">Read More »</a>
					</p>
					<div class="top-header-agile-right">
						<ul>
							<li><a href="#"> <i class="fa fa-twitter"
									aria-hidden="true"></i>
							</a></li>
							<li><a href="https://www.facebook.com/bachkhoaDUT/?fref=ts">
									<i class="fa fa-facebook" aria-hidden="true"></i>
							</a></li>
							<li><a href="#"> <i class="fa fa-linkedin"
									aria-hidden="true"></i>
							</a></li>
							<li><a href="#"> <i class="fa fa-dribbble"
									aria-hidden="true"></i>
							</a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-3 footer-grids w3l-agileits">
					<h3 style="text-transform: uppercase;">info</h3>
					<ul>
						<li><a href="https://dut.udn.vn/Tintuc/Tintucds/gid/all"
							target="_blank">News - Events</a></li>
						<br>
						<li><a
							href="https://dut.udn.vn/Tuyensinh2023/Gioithieu/id/8003"
							target="_blank">Admissions</a></li>
						<br>
						<li><a href="https://dut.udn.vn/Tintuc/Thongbaods/gid/all"
							target="_blank">Notification</a></li>
						<br>
						<li><a
							href="https://dut.udn.vn/TrangSinhvien/Thongbaods/gid/176"
							target="_blank">Scholarships - jobs</a></li>
					</ul>
				</div>

				<div class="col-md-4 footer-grids w3l-agileits">
					<div class="contact-info">
						<h3 class="nopadding" style="text-transform: uppercase;">Contact
							us</h3>
						<p>
							No 54 Nguyen Luong Bang Street, Lien Chieu District, Da Nang City
							<br> <i class="fa fa-phone-square"></i> Phone: 0236.3842145
							- 0236.3842308 <br> <i class="fa fa-envelope"></i> E-mail: <a
								class="mail-link" href="mailto: ic@dut.udn.vn">
								ic@dut.udn.vn</a> <br>
						</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->
	<!-- copy-right -->
	<div class="copyright-wthree">
		<p>
			Copyright @ 2023 Tests Online . All Rights Reserved
			<!--  | Design by <a
				href="#"> Huy_Trung_Hoàng </a> -->
		</p>
	</div>
	<!-- //copy-right -->

	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
	<!-- //smooth scrolling -->




	<!-- flexSlider -->
	<script defer src="Style/js/jquery.flexslider.js"></script>
	<script type="text/javascript">
            $(window).load(function() {
                $('.flexslider').flexslider({
                    animation: "slide",
                    start: function(slider) {
                        $('body').removeClass('loading');
                    }
                });
            });

        </script>
	<!-- //flexSlider -->
	<!-- requried-jsfiles-for owl -->
	<script src="Style/js/owl.carousel.js"></script>
	<script>
            $(document).ready(function() {
                $("#owl-demo2").owlCarousel({
                    items: 1,
                    lazyLoad: false,
                    autoPlay: true,
                    navigation: false,
                    navigationText: false,
                    pagination: true,
                });
            });

        </script>



	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="Style/js/move-top.js"></script>
	<script type="text/javascript" src="Style/js/easing.js"></script>
	<script src="Style/js/bootstrap.js"></script>
	<!-- //for bootstrap working -->


</body>

</html>
