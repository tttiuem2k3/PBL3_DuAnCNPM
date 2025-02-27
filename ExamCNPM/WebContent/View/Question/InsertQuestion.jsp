<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page import="java.sql.*"%>
<%ResultSet resultset =null;%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert Question</title>

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet">
<meta name="description" content="overviewque &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="Style/css/bootstrap.min.css" />
<link rel="stylesheet" href="Style/css/font-awesome.min.css" />


<!-- page specific plugin styles -->
<link rel="stylesheet" href="Style/js/jquery-ui.custom.min.css" />
<link rel="stylesheet" href="Style/css/fullcalendar.min.css" />


<!-- text fonts -->
<link rel="stylesheet" href="Style/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="Style/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<link rel="stylesheet" href="Style/css/ace-skins.min.css" />
<link rel="stylesheet" href="Style/css/ace-rtl.min.css" />

<!-- ace settings handler -->
<script src="Style/js/ace-extra.min.js"></script>

<link rel="stylesheet " href="Style/css/template.css" type="text/css ">

<script src="Style/js/jquery-2.1.4.min.js"></script>

<script src="Style/js/bootstrap.min.js"></script>

<!-- ace scripts -->
<script src="Style/js/ace-elements.min.js"></script>
<script src="Style/js/ace.min.js"></script>
<script src="Style/js/jquery.min.js"></script>

<script type="text/javascript"
	src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>

</head>

<body class="no-skin" style="font-size: 14px;">
	<div id="navbar" class="navbar navbar-default          ace-save-state">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<div class="navbar-header pull-left">
				<a href="#" class="navbar-brand"> <small> <i
						class="fa fa-leaf"></i> DUT
				</small>
				</a>
			</div>

			<div class="navbar-buttons navbar-header pull-right"
				role="navigation">
				<ul class="nav ace-nav">
					<li class="purple dropdown-modal"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-bell icon-animated-bell"></i> <span
							class="badge badge-important">8</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i
								class="ace-icon fa fa-exclamation-triangle"></i> 8 Notifications
							</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar navbar-pink">
									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left"> <i
													class="btn btn-xs no-hover btn-pink fa fa-comment"></i> New
													Comments
												</span> <span class="pull-right badge badge-info">+12</span>
											</div>
									</a></li>

									<li><a href="#"> <i
											class="btn btn-xs btn-primary fa fa-user"></i> Bob just
											signed up as an editor ...
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left"> <i
													class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
													New Orders
												</span> <span class="pull-right badge badge-success">+8</span>
											</div>
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left"> <i
													class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
													Followers
												</span> <span class="pull-right badge badge-info">+11</span>
											</div>
									</a></li>
								</ul>
							</li>

							<li class="dropdown-footer"><a href="#"> See all
									notifications <i class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="green dropdown-modal"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-envelope icon-animated-vertical"></i> <span
							class="badge badge-success">5</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i
								class="ace-icon fa fa-envelope-o"></i> 5 Messages</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar">
									<li><a href="#" class="clearfix"> <img
											src="Style/images/avatar.png" class="msg-photo"
											alt="Alex's Avatar" /> <span class="msg-body"> <span
												class="msg-title"> <span class="blue">Alex:</span>
													Ciao sociis natoque penatibus et auctor ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>a moment
														ago</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="Style/images/avatar3.png" class="msg-photo"
											alt="Susan's Avatar" /> <span class="msg-body"> <span
												class="msg-title"> <span class="blue">Susan:</span>
													Vestibulum id ligula porta felis euismod ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>20 minutes
														ago</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="Style/images/avatar4.png" class="msg-photo"
											alt="Bob's Avatar" /> <span class="msg-body"> <span
												class="msg-title"> <span class="blue">Bob:</span>
													Nullam quis risus eget urna mollis ornare ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>3:15 pm</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="Style/images/avatar2.png" class="msg-photo"
											alt="Kate's Avatar" /> <span class="msg-body"> <span
												class="msg-title"> <span class="blue">Kate:</span>
													Ciao sociis natoque eget urna mollis ornare ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>1:33 pm</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="Style/images/avatar5.png" class="msg-photo"
											alt="Fred's Avatar" /> <span class="msg-body"> <span
												class="msg-title"> <span class="blue">Fred:</span>
													Vestibulum id penatibus et auctor ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>10:09 am</span>
											</span>
										</span>
									</a></li>
								</ul>
							</li>

							<li class="dropdown-footer"><a href="inbox.html"> See
									all messages <i class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="light-blue dropdown-modal"><a
						data-toggle="dropdown" href="#" class="dropdown-toggle"> <img
							class="nav-user-photo" src="Style/images/user.jpg"
							alt="Jason's Photo" /> <span class="user-info"> <small>Welcome,</small>
								<small>Question Creator</small>
						</span> <i class="ace-icon fa fa-caret-down"></i>
					</a>

						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="#"> <i class="ace-icon fa fa-cog"></i>
									Settings
							</a></li>

							<li><a href="#"> <i class="ace-icon fa fa-user"></i>
									Profile
							</a></li>

							<li class="divider"></li>

							<li><a href="HomePage"> <i
									class="ace-icon fa fa-power-off"></i> Logout
							</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- /.navbar-container -->
	</div>

	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
                            try {
                                ace.settings.loadState('main-container')
                            } catch (e) {}
                        </script>

		<!-- script type="text/javascript">
                            $(function () {
                                $(document).on('click', '.btn-add', function (e) {
                                    e.preventDefault();

                                    var controlForm = $('.controls form:first'),
                                        currentEntry = $(this).parents('.entry:first'),
                                        newEntry = $(currentEntry.clone()).appendTo(controlForm);

                                    newEntry.find('input').val('');
                                    controlForm.find('.entry:not(:last) .btn-add')
                                        .removeClass('btn-add').addClass('btn-remove')
                                        .removeClass('btn-success').addClass('btn-danger')
                                        .html('<span class="glyphicon glyphicon-minus"></span>');
                                }).on('click', '.btn-remove', function (e) {
                                    $(this).parents('.entry:first').remove();

                                    e.preventDefault();
                                    return false;
                                });
                            });
                        </script -->

		<!-- DYNAMIC CREATING TEXTAREA -->
		<script>
                            $(document).ready(function () {
                                var i = 0;
                                $('#add').click(function () {
                                    i++;
                                    var n = document.getElementById('number').value;
                                    var left = document.getElementsByTagName('textarea').length;
                                    if (left != 0) {
                                        if (n >= left) {
                                            i = n - Math.abs(n - left);
                                            for (i; i < n; i++) {
                                                $('#dynamic_field').append('<tr id="row' + i +
                                                    '"><td><textarea style="height:80px, width=80%" name="option' +
                                                    i + '" id="option' + i +
                                                    '" placeholder="Enter Option Content" class="form-control name_list" required></textarea></td><td style="max-width: 51px;"><button style="opacity: 0;"></button><input type="checkbox" id="optioncb[]" name="optionCheck' +
                                                    i +
                                                    '" style="margin-left: -93px;margin-top: -33px;"/></td></tr>'
                                                );
                                            }
                                        } else {
                                            i = left;
                                            for (i; i >= n; i--) {
                                                $('#row' + i + '').remove();
                                            }
                                        }
                                    }


                                });

                                $(document).on('click', '.btn_remove', function () {
                                    var button_id = $(this).attr("id");
                                    $('#row' + button_id + '').remove();
                                });

                                $('#insert').click(function () {
                                    $.ajax({
                                        url: "InsertQuestion",
                                        method: "POST",
                                        data: $('#addquestion').serialize(),
                                        success: function (data) {
                                            alert(data);
                                            $('#addquestion')[0].reset();
                                        }
                                    });
                                });
                            });
                        </script>

		<!-- 			<script type="text/javascript" >
// 			 $("#addquestion").submit(function(e) {
// 				    e.preventDefault();
// 				    $.ajax({
// 				      type: 'POST',
// 				      url: 'InsertQuestion',
// 				      dataType: 'json',
// 				      contentType:"application/json;charset=utf-8",
// 				      data: $('#addquestion').serialize(),
// 				      async:false,
// 				      success: function() {
// 				        alert("success");
// 				      }
				    
// 				      });
// 				    });
			</script>
                        <!-- check CHECKBOX >
                        <script type="text/javascript" language="JavaScript">
                            function checkCheckBoxes(theForm) {
                                e.preventDefault();
                                var test = document.getElementsByID("optioncb[]");
                                alert(test.length)
                                for (var i = 0; i < test.length; i++) {
                                    if (test[i].checked == true) {
                                        document.getElementsByName('optionCheck' + i).value = true;
                                        document.getElementsByID('correctoption').value = i;
                                        return true;
                                    }
                                }
                                alert('Hãy chọn dòng để xóa!');
                                return false;
                            }
                        </script -->


		<!--                         <script type="text/javascript"> 
//                             function getValueCheckbox() {
//                                 var chkArray = [];

//                                 $("#optioncb[]:checked").each(function () {
//                                     chkArray.push($(this).val());
//                                 });

//                                 /* check if there is selected checkboxes, by default the length is 1 as it contains one single comma */
//                                 if (chkArray.length > 1) {
//                                     alert("You have selected " + chkArray);
//                                 } else {
//                                     alert("Please check at least one of the checkbox");
//                                 }

//                             }
                        </script> -->
		<div id="sidebar" class="sidebar responsive ace-save-state">
			<script type="text/javascript">
                                try {
                                    ace.settings.loadState('sidebar')
                                } catch (e) {}
                            </script>

			<div class="sidebar-shortcuts" id="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					<button class="btn btn-success">
						<i class="ace-icon fa fa-signal"></i>
					</button>

					<button class="btn btn-info">
						<i class="ace-icon fa fa-pencil"></i>
					</button>

					<button class="btn btn-warning">
						<i class="ace-icon fa fa-users"></i>
					</button>

					<button class="btn btn-danger">
						<i class="ace-icon fa fa-cogs"></i>
					</button>
				</div>

				<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
					<span class="btn btn-success"></span> <span class="btn btn-info"></span>

					<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
				</div>
			</div>
			<!-- /.sidebar-shortcuts -->

			<ul class="nav nav-list">
				<li class=""><a href="HomeQuestion"> <i
						class="menu-icon fa fa-tachometer"></i> <span class="menu-text">Home</span>
				</a> <b class="arrow"></b></li>

				<li class="open"><a href="#QuestionManager"
					class="dropdown-toggle"> <i class="menu-icon fa fa-list"></i> <span
						class="menu-text"> Questions </span> <b
						class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class="active"><a href="InsertQuestion"> <i
								class="menu-icon fa fa-caret-right"></i> Insert Question
						</a> <b class="arrow"></b></li>

						<li class=""><a href="UpdateDeleteQuestion?pageid=1"> <i
								class="menu-icon fa fa-caret-right"></i> Update & Delete
								Question
						</a> <b class="arrow"></b></li>
					</ul></li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-pencil-square-o"></i> <span
						class="menu-text"> Question Types </span> <b
						class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="InsertQuestionType"> <i
								class="menu-icon fa fa-caret-right"></i> Insert Question Types
						</a> <b class="arrow"></b></li>

						<li class=""><a href="UpdateDeleteQuestionType?pageid=1">
								<i class="menu-icon fa fa-caret-right"></i> Update & Delete
								Question Types
						</a> <b class="arrow"></b></li>
					</ul></li>


				<li class="">f <a href="CalendarQuestion"> <i
						class="menu-icon fa fa-calendar"></i> <span class="menu-text">
							Calendar </span>
				</a> <b class="arrow"></b>
				</li>
			</ul>
			<!-- /.nav-list -->

			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i id="sidebar-toggle-icon"
					class="ace-icon fa fa-angle-double-left ace-save-state"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>
		</div>

		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a
							href="HomeQuestion">Home</a></li>
						<li class=""><a href="">Questions</a></li>

						<li class="active"><a href="">Insert Questions</a></li>
					</ul>
					<!-- /.breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="Search ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off" /> <i
								class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div>
					<!-- /.nav-search -->
				</div>

				<div class="page-content">
					<!-- /.ace-settings-container -->


					<div class="page-header">
						<h1>
							Insert Questions <small> <i
								class="ace-icon fa fa-angle-double-right"></i> overview &amp;
								stats
							</small>
						</h1>
					</div>

					<div class="row">
						<div class="col-md-6">
							<div class="well-block">
								<div class="well-title">
									<h2 align="left">Insert Question</h2>
								</div>
								<form method="POST" action="InsertQuestion?pageid=1"
									id="addquestion" name="addquestion"
									enctype="multipart/form-data">
									<!-- Form start -->
									<div class="row">
										<!-- Select Basic -->
										<div class="col-md-12">
											<div class="form-group">
												<label class="control-label" for="appointmentfor">Subject</label>
												<br>
												<%
														    try{
														//Class.forName("com.mysql.jdbc.Driver").newInstance();
														Class.forName("com.mysql.jdbc.Driver");
														Connection connection = 
													         DriverManager.getConnection
 													         ("jdbc:mysql://localhost:3306/examonline","root","1234");
//													         ("jdbc:mysql://node16816-examonlinevn.kilatiron.com/examonline?useUnicode=true&characterEncoding=UTF-8","root","PSSmqz60857");
// 													         ("jdbc:mysql://node10595-examonline.fr-1.paas.massivegrid.net/examonline?useUnicode=true&characterEncoding=UTF-8","root","BSOxar77141");
													
													       Statement statement = connection.createStatement() ;
													
													       resultset =statement.executeQuery("select * from subjects") ;
														%>

												<select id="subjectid" name="subjectid"
													style="border: 1px solid #00ffc1">
													<%  while(resultset.next()){ %>
													<option selected value="<%= resultset.getString(1)%>">
														<%= resultset.getString(2)%>
													</option>
													<% } %>
												</select>

												<%
													        }
													        catch(Exception e)
													        {
													             out.println("wrong entry"+e);
													        }
														%>

											</div>
										</div>
										<!-- Select Basic -->
										<div class="col-md-12">
											<div class="form-group">
												<label class="control-label" for="time">Question
													Type</label> <br>
												<%
														    try{
														//Class.forName("com.mysql.jdbc.Driver").newInstance();
														Class.forName("com.mysql.jdbc.Driver");
														Connection connection = 
													         DriverManager.getConnection
 													         ("jdbc:mysql://localhost:3306/examonline","root","1234");
//													         ("jdbc:mysql://node16816-examonlinevn.kilatiron.com/examonline?useUnicode=true&characterEncoding=UTF-8","root","PSSmqz60857");
// 													         ("jdbc:mysql://node10595-examonline.fr-1.paas.massivegrid.net/examonline?useUnicode=true&characterEncoding=UTF-8","root","BSOxar77141");													
													       Statement statement = connection.createStatement() ;
													
													       resultset =statement.executeQuery("select * from questiontypes") ;
														%>

												<select id="questiontypeid1" name="questiontypeid1"
													style="border: 1px solid #00ffc1">
													<%  while(resultset.next()){ %>
													<option selected class="dropdown"
														value="<%= resultset.getString(1)%>">
														<%= resultset.getString(2)%>
													</option>
													<% } %>
												</select>

												<%
													        }
													        catch(Exception e)
													        {
													             out.println("wrong entry"+e);
													        }
														%>

												<!-- <select id="questiontype1" name="questiontype1" class="form-control">
                                                         <c:forEach items="${questiontypes}" var="questiontypes">
 						                                        <option class="dropdown" value="${questiontypes.questiontypeid}" >${questiontypes.questiontypename}</option>
 						                                </c:forEach> 
	                                                </select> -->

											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label class="control-label" for="name">Question</label> <input
													id="contentquestion" name="contentquestion" type="text"
													placeholder="Content" class="form-control input-md">
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label class="control-label" for="appointmentfor">Number
													of Options</label> <input type="text" id="number" name="number"
													value="1" placeholder="Content"
													class="form-control input-md">
											</div>
										</div>

										<div class="col-md-12">
											<div class="form-group">
												<div class="control-group" id="fields">
													<label class="control-label" for="option">Option</label>
													<form action="InsertOption?pageid=1" method="post"
														name="add_name" id="add_name">
														<!-- <div class="" style="max-width: 445px;"> -->
														<table class="table table-bordered" id="dynamic_field">
															<tr>
																<td><textarea style="height: 80px, width=80%"
																		name="option0" id="option0"
																		placeholder="Enter Option Content"
																		class="form-control name_list" required></textarea></td>
																<td style="max-width: 51px;">
																	<button type="button" name="add" id="add"
																		class="btn btn-success">
																		<strong>+</strong>
																	</button> <input type="checkbox" id="optioncb[]"
																	name="optionCheck0" checked
																	style="margin-left: -93px; margin-top: -33px;" />
																</td>

															</tr>
														</table>
														<!--<input type="button" name="submit" id="submit" class="btn btn-info" value="Submit" /> -->
														<!-- </div> -->
														<input type="hidden" name="correctoption"
															id="correctoption" class="btn-info" />

													</form>
													<br>
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label class="control-label" for="appointmentfor">Media
													file</label> <input type="file" name="media">
											</div>
										</div>
									</div>
									<input type="submit" value="ADD" id="insert" name="insert"
										class=" btn-info" />
								</form>
							</div>

							<!-- form end -->


						</div>

						<div class="col-md-6">
							<div class="well-block">
								<div class="well-title">
									<h2 align="left">Import File Excel</h2>
								</div>
								<div class="">
									<form method="POST" action="UploadQuestion?pageid=1"
										enctype="multipart/form-data">

										File to upload <input type="file" name="file"> <br>
										Question type <br>

										<%
											    try{
											//Class.forName("com.mysql.jdbc.Driver").newInstance();
											Class.forName("com.mysql.jdbc.Driver");
											Connection connection = 
										         DriverManager.getConnection
 										         ("jdbc:mysql://localhost:3306/examonline","root","1234");
//										         ("jdbc:mysql://node16816-examonlinevn.kilatiron.com/examonline?useUnicode=true&characterEncoding=UTF-8","root","PSSmqz60857");
// 													         ("jdbc:mysql://node10595-examonline.fr-1.paas.massivegrid.net/examonline?useUnicode=true&characterEncoding=UTF-8","root","BSOxar77141");										
										       Statement statement = connection.createStatement() ;
										
										       resultset =statement.executeQuery("select * from questiontypes") ;
											%>

										<select id="questiontypeid2" name="questiontypeid2"
											style="border: 1px solid #00ffc1">
											<%  while(resultset.next()){ %>
											<option selected value="<%= resultset.getString(1)%>">
												<%= resultset.getString(2)%>
											</option>
											<% } %>
										</select>

										<%
										        }
										        catch(Exception e)
										        {
										             out.println("wrong entry"+e);
										        }
											%>
										<br> <br> <input type="submit" value="IMPORT"
											id="import" name="import" class=" btn-info">
									</form>
								</div>
								<!-- form end -->
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- /.page-header -->

	</div>
	<!-- /.page-content -->
	</div>


	<!-- /.main-content -->

	<div class="footer">
		<div class="footer-inner">
			<div class="footer-content">
				<span class="bigger-120"> <span class="blue bolder">DUT</span>
					Application &copy; 2022-2023
				</span> &nbsp; &nbsp; <span class="action-buttons"> <a href="#">
						<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
				</a> <a href="#"> <i
						class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
				</a> <a href="#"> <i
						class="ace-icon fa fa-rss-square orange bigger-150"></i>
				</a>
				</span>
			</div>
		</div>
	</div>

	<a href="#" id="btn-scroll-up"
		class="btn-scroll-up btn btn-sm btn-inverse"> <i
		class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
	</a>
	<!-- /.main-container -->
</body>

</html>