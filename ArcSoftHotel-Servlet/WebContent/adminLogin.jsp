<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>酒店管理系统</title>
		<link rel="stylesheet Icon" type=" image/x-icon" href="img/windows.ico">
		<link rel="stylesheet" type="text/css" href="css/register-login.css">
	</head>

	<body>

		<div id="box"></div>
		<!--主栏-->
		<div class="cent-box">
			<!--标题-->
			<div class="cent-box-header">
				<h1 class="main-title" style="width:180px;">酒店管理系统</h1>
				<h2 class="sub-title">AI Hotel</h2>
			</div>
			<div class="cont-main clearfix">
			 <form action="AdminLogin" method="post">
				<!--登录区域开始-->
				<div class="login form">
					<!--文本输入框-->
					<div class="group">
						<!--用户名输入框-->
						<div class="group-ipt loginName">
							<input type="text" name="loginName" id="loginName" class="ipt" placeholder="输入您的用户名" required>
						</div>
						<!--密码输入框-->
						<div class="group-ipt loginPwd">
							<input type="password" name="loginPwd" id="loginPwd" class="ipt" placeholder="输入您的登录密码" required>
						</div>
					</div>
					<div class="states">
						<span class="right" style="float: right"><a href="javascript:;"><a href="User_Login.jsp">切换至用户登录</a></a></span>
					</div>
					<br/>
					<!--登录按钮-->
					<div class="button" id="btnLogin">
						<button type="submit" class="login-btn register-btn button" id="embed-submit">登录</button>
					</div>
				</div>
			 </form>
			</div>
				<!--登录区域结束-->
				<!--尾注-->
				<div class="remember clearfix">
					<label class="remember-me">
                <a href="#"></a>
            </label>
					<label class="forgot-password">
                <a href="#"></a>
            </label>
				</div>
			</div>
		</div>

		<!--脚注-->
		<div class="footer">
				<a href="#">HotelBook System</a>
		</div>
	</body>
</html>