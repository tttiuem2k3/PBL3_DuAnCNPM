<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="DAO.ExamDAO"%>
<%@page import="org.json.simple.JSONArray"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show Result</title>


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
<!-- <script type="text/javascript" src="Style/js/countdown.js"></script> -->

<script src="Style/js/jquery-1.11.3.js"></script>


</head>

<body onload="startTimer()">

	<div id="home">
		<div class="banner-overlay-agileinfo">
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
							<%=session.getAttribute("fullname")%> <span class="caret"></span>
						</a>
						<ul class="dropdown-menu" style="width: 300px;">
							<li><a href="#">Account Settings <span
									class="glyphicon glyphicon-cog pull-right"></span>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">Messages <span class="badge pull-right">
										42 </span>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">Sign Out <span
									class="glyphicon glyphicon-log-out pull-right"></span>
							</a></li>

						</ul>
					</div>
				</div>
			</div>
			<div class="top-header-agile" style="background: white">
				<div class="col-md-6 top-header-agile-left nav-collapse ">

					<h1>
						<a href="#"> <img class="img-responsive"
							src="Style/images/dut.jpg">
						</a>
					</h1>
				</div>

				<div class="col-md-6 top-header-agile-right text-md-center ">
					<div class="span7">
						<div class="title_bloginfo" style="color: red">
							<h3 style="padding: 10px; text-align: center;">THE EXAM
								PERFORMANCE PROGRAM</h3>
							<h4 style="padding: 10px;">INFORMATION TECHNOLOGY CENTER</h4>
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


	</div>
	<!-- //banner -->
	<!-- about -->
	<div class="col-md-12" style="border: 1px solid #0F8A19;"></div>
	<div class="about-w3layouts">
		<div class="container">
			<div class="row">
				<div class="col-md-12 ">
					<table class="table table-hover table-responsive table-bordered">
						<thead style="font-size: 21px;">
							<tr>
								<th scope="col">S.No.</th>
								<th scope="col">Subject name</th>
								<th scope="col">Test name</th>
								<th scope="col">Point</th>
							</tr>
						</thead>
						<%
		String username = (String)session.getAttribute("username");
		int userid = ExamDAO.getUserID(username);
        JSONArray array=ExamDAO.getResult(userid);
        JSONObject obj;
                
        for(int i=0;i<array.size();++i){
            obj=(JSONObject)array.get(i);
        
        %>
						<tbody style="font-size: 20px;">
							<tr>
								<th scope="row"><%=i+1%></th>
								<td><%=ExamDAO.getSubjectName(userid,(int)obj.get("testid"))%></td>
								<td><%=ExamDAO.getTestName(ExamDAO.getTesttypeid((int)obj.get("testid"))) %></td>
								<td><%=obj.get("point") %></td>
							</tr>

						</tbody>
						<%} %>
					</table>

				</div>
			</div>
			<form action="LoginForwardHomeSt" class="inline" method="post">
				<div class="modal-footer">
					<button type="submit" class="btn btn-success"
						style="font-size: 20px;">Exit</button>
				</div>
			</form>
			<div class="clearfix"></div>
		</div>
		<!-- //about -->

		<!--/services-->
		<div class="services-w3-agileits w3agileits-ref">
			<div class="col-md-6 services-left">



				<div class="clearfix"></div>
			</div>
		</div>
		<div class="col-md-6  "></div>
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
				animation : "slide",
				start : function(slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<!-- //flexSlider -->
	<!-- requried-jsfiles-for owl -->
	<script src="Style/js/owl.carousel.js"></script>



	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="Style/js/move-top.js"></script>
	<script type="text/javascript" src="Style/js/easing.js"></script>
	<script src="Style/js/bootstrap.js"></script>
	<!-- //for bootstrap working -->


</body>

</html>
