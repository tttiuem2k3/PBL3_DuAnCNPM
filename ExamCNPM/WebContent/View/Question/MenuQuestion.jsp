<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



<meta name="description" content="overview &amp; stats" />
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

</head>
<body class="no-skin" style="font-size: 14px;">
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
			<li class="active"><a href="HomeQuestion"> <i
					class="menu-icon fa fa-tachometer"></i> <span class="menu-text">Home</span>
			</a> <b class="arrow"></b></li>

			<li class=""><a href="#QuestionManager" class="dropdown-toggle">
					<i class="menu-icon fa fa-list"></i> <span class="menu-text">
						Questions </span> <b class="arrow fa fa-angle-down"></b>
			</a> <b class="arrow"></b>

				<ul class="submenu">
					<li class=""><a href="InsertQuestion"> <i
							class="menu-icon fa fa-caret-right"></i> Insert Question
					</a> <b class="arrow"></b></li>

					<li class=""><a href="UpdateDeleteQuestion?pageid=1"> <i
							class="menu-icon fa fa-caret-right"></i> Update & Delete Question
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


			<li class=""><a href="CalendarQuestion"> <i
					class="menu-icon fa fa-calendar"></i> <span class="menu-text">
						Calendar </span>
			</a> <b class="arrow"></b></li>
		</ul>
		<!-- /.nav-list -->

		<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
			<i id="sidebar-toggle-icon"
				class="ace-icon fa fa-angle-double-left ace-save-state"
				data-icon1="ace-icon fa fa-angle-double-left"
				data-icon2="ace-icon fa fa-angle-double-right"></i>
		</div>
	</div>
</body>
</html>