<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>登录</title>
</head>
<body>
	<form action="AdminLogin" method="post" onsubmit="return checkAll()">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" id="loginName" name="loginName"  
				onblur="checkName()"/></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" id="loginPwd" name="loginPwd"  
				onblur="checkPw()"/></td>
			</tr>
			<tr>
				<td><button type="submit">提交</button></td>
			</tr>
		</table>
	</form>
<script>
//校验用户名
function checkName(){
	var name=document.getElementById('loginName').value;
	if (name.length>0) {return true;}
	else{
		return false;
	}
}
//校验密码
function checkPw(){
	var pw=document.getElementById('loginPwd').value;
	if (pw.length>0) {return true;}
	else{
		return false;
	}
}
//决定是否向控制器发送表单信息，true发送，false则拒绝发送
function checkAll(){
	var name=checkName();
	var pw=checkPw();
	if (name && pw) {return true;}
	else{
		alert('输入信息不能为空，请重新输入！');
		return false;
	}
}
</script>
</body>
</html>