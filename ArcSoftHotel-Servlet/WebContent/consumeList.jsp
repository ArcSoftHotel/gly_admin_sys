<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ash.entity.Consume"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>房客消费信息管理</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet"
	href="bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="bower_components/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="bower_components/Ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="bower_components/jvectormap/jquery-jvectormap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">

	<div class="wrapper">

		<header class="main-header">

			<!-- Logo -->
			<a href="#" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>后台</b>管理</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>AI智慧酒店</b>后台系统</span>
			</a>

			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<li class="dropdown messages-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-envelope-o"></i> <span class="label label-success">4</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">你有1条未读信息</li>
								<li>
									<ul class="menu">
										<li><a href="#">
												<div class="pull-left">
													<img src="dist/img/user4-128x128.jpg" class="img-circle"
														alt="User Image">
												</div>
												<h4>
													zhb <small><i class="fa fa-clock-o"></i> 2 days</small>
												</h4>
												<p></p>
										</a></li>
									</ul>
								</li>
								<li class="footer"><a href="#">查看所有信息</a></li>
							</ul></li>
						<!-- Notifications: style can be found in dropdown.less -->
						<li class="dropdown notifications-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-bell-o"></i> <span class="label label-warning">10</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">你有5条未读消息</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<ul class="menu">
										<li><a href="#"> <i class="fa fa-users text-aqua"></i>
												有5位用户完成预定
										</a></li>
										<li><a href="#"> <i class="fa fa-users text-red"></i>
												1位客户checkout
										</a></li>
										<li><a href="#"> <i
												class="fa fa-shopping-cart text-green"></i> 25 条消费记录
										</a></li>
									</ul>
								</li>
								<li class="footer"><a href="#">查看全部信息</a></li>
							</ul></li>

						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="dist/img/user2-160x160.jpg" class="user-image"
								alt="User Image"> <span class="hidden-xs">管理员</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="dist/img/user2-160x160.jpg" class="img-circle"
									alt="User Image">

									<p>
										管理员 - 007 <small>注册日期 Nov. 2020</small>
									</p></li>
								<!-- Menu Body -->
								<li class="user-body">
									<div class="row">
										<div class="col-xs-4 text-center">
											<a href="#">个人中心</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">我的好友</a>
										</div>
									</div> <!-- /.row -->
								</li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="Admin_login.jsp" class="btn btn-default btn-flat">重新登录</a>
									</div> <%--<div class="pull-right">
                                    <a href="index.jsp" class="btn btn-default btn-flat">退出登录</a>
                                </div>--%>
								</li>
							</ul></li>
						<li><a href="#" data-toggle="control-sidebar"><i
								class="fa fa-gears"></i></a></li>
					</ul>
				</div>

			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="dist/img/user2-160x160.jpg" class="img-circle"
							alt="User Image">
					</div>
					<div class="pull-left info">
						<p>管理员</p>
						<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
					</div>
				</div>
				<!-- search form -->
				<form action="SelectConsume" method="post" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="userid" class="form-control"
							placeholder="查找信息..."> <span class="input-group-btn">
							<button type="submit" name="search" id="search-btn"
								class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
				<!-- /.search form -->
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu" data-widget="tree">
					<li class="header">主菜单</li>


					<li><a href="../../head.jsp"> <i class="fa fa-bar-chart"></i>
							<span>图表统计</span> <span class="pull-right-container"> <%--<small class="label pull-right bg-green">记录</small>--%>
						</span>
					</a></li>

					<li><a href="../../roomConsumeSel.do"> <i
							class="fa fa-table"></i> <span>房间消费查询</span> <span
							class="pull-right-container"> <!--<small class="label pull-right bg-green">所有消费记录</small>-->
						</span>
					</a></li>

					<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
							<span>入住管理</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i> <small
								class="label pull-right bg-green">预定 & 房客</small>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="../../SelAllReserve.do"><i
									class="fa fa-list-ul"></i> 查看所有预定信息</a></li>
							<li><a href="../../pages/forms/reserve_add.jsp"><i
									class="fa fa-plus"></i> 增加预定信息</a></li>
							<li><a href="../../pages/forms/reserve_update.jsp"><i
									class="fa fa-pencil-square-o"></i> 修改预定信息</a></li>
							<li><a href="../../pages/forms/reserve_delete.jsp"><i
									class="fa  fa-remove"></i> 删除预定信息</a></li>
							<li><a href="../../SelAllCheckIn.do"><i
									class="fa fa-users"></i> 查看所有房客信息</a></li>
							<li><a href="../../pages/forms/checkin_add.jsp"><i
									class="fa fa-user-plus"></i> 增加房客信息</a></li>
							<li><a href="../../pages/forms/checkin_update.jsp"><i
									class="fa fa-user"></i> 修改房客信息</a></li>
							<li><a href="../../pages/forms/checkin_delete.jsp"><i
									class="fa fa-user-times"></i> 删除房客信息</a></li>
						</ul></li>

					<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
							<span>房间管理</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="SelectRoom"><i class="fa fa-list-ul"></i>
									查看所有房间信息</a></li>
							<li><a href="addRoom.jsp"><i class="fa fa-plus"></i>
									增加房间信息</a></li>
						</ul></li>

					<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
							<span>员工管理</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="SelectStaff"><i class="fa fa-list-ul"></i>
									查看所有员工信息</a></li>
							<li><a href="addStaff.jsp"><i class="fa fa-plus"></i>
									增加员工信息</a></li>
						</ul></li>

					<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
							<span>会议室管理</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i> <small
								class="label pull-right bg-green">预定 & 管理</small>
						</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="../../SelAllMeeting.do"><i
									class="fa fa-list-ul"></i> 查看所有会议室</a></li>
							<li><a href="Meetingroom_Add.jsp"><i class="fa fa-plus"></i>
									增加会议室</a></li>
							<li><a href="Meetingroom_Update.jsp"><i
									class="fa fa-pencil-square-o"></i> 更新会议室</a></li>
							<li><a href="Meetingroom_Delete.jsp"><i
									class="fa  fa-remove"></i> 删除会议室</a></li>
							<li><a href="../../SelAllMeetingReserve.do"><i
									class="fa fa-list-ul"></i> 查看所有会议室预定</a></li>
							<li><a href="../../pages/forms/meetingReserve_add.jsp"><i
									class="fa fa-plus"></i> 增加会议室预定</a></li>
							<li><a href="../../pages/forms/meetingReserve_update.jsp"><i
									class="fa fa-pencil-square-o"></i> 修改会议室预定</a></li>
							<li><a href="../../pages/forms/meetingReserve_delete.jsp"><i
									class="fa  fa-remove"></i> 删除会议室预定</a></li>
						</ul></li>

					<li><a href="../../SelAllVisitors.do"> <i
							class="fa fa-table"></i> <span>访客记录查询</span> <span
							class="pull-right-container"> <!--<small class="label pull-right bg-green">所有访客记录</small>-->
						</span>
					</a></li>
					<li><a href="Face_Upload.jsp"> <i class="fa fa-user"></i>
							<span>人脸上传</span> <span class="pull-right-container"></span>
					</a></li>
					<li><a href="Face_Select.jsp"> <i class="fa fa-user"></i>
							<span>人脸检索</span> <span class="pull-right-container"></span>
					</a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>检索消费信息</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
					<li><a href="#">房客管理</a></li>
					<li class="active">检索消费信息</li>
				</ol>
			</section>

			<section class="content">

				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">检索消费信息</h3>
					</div>
					<div class="box-body">
						<table id="example1" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>用户名</th>
									<th>房间号</th>
									<th>房间价格</th>
									<th>服务价格</th>
									<th>更新时间</th>
									<th>更新</th>
									<th>删除</th>
								</tr>
							</thead>
							<tbody>
								<%
									ArrayList<Consume> conss = (ArrayList<Consume>)session.getAttribute("consumes");
								    for(Consume consume:conss){
								%>
								<tr>
									<td><%=consume.getUserid()%></td>
									<td><%=consume.getRoomid()%></td>
									<td><%=consume.getRoomprice()%></td>
									<td><%=consume.getService_price()%></td>
									<td><%=consume.getDate()%></td>
									<td>
										<form action="updateConsume.jsp" method="post">
											<input type="text" name="userid"
												value="<%=consume.getUserid()%>" style="display: none">
											<input type="text" name="roomid"
												value="<%=consume.getRoomid()%>" style="display: none">
											<input type="text" name="roomprice" value="<%=consume.getRoomprice()%>"
												style="display: none"> <input type="text"
												name="service_price" value="<%=consume.getService_price()%>"
												style="display: none"> <input type="text"
												name="date" value="<%=consume.getDate()%>"
												style="display: none">
											<button type="submit">修改</button>
										</form>
									</td>
									<td>
										<form action="DeleteConsume" method="post">
											<input type="text" name="userid"
												value="<%=consume.getUserid()%>" style="display: none">
											<input type="text" name="roomid"
												value="<%=consume.getRoomid()%>" style="display: none">
											<input type="text" name="roomprice" value="<%=consume.getRoomprice()%>"
												style="display: none"> <input type="text"
												name="service_price" value="<%=consume.getService_price()%>"
												style="display: none"> <input type="text"
												name="date" value="<%=consume.getDate()%>"
												style="display: none">
											<button type="submit">删除</button>
										</form>
									</td>
								</tr>
								<%
								    }
								%>
							</tbody>
						</table>
					</div>
				</div>
				<!-- 此处的form已被删除，可能需重新组织css -->
				<!-- /.box-body -->
			</section>
		</div>
		<!-- /.content -->
	</div>

</body>
</html>