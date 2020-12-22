<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>登录</title>
</head>
<body>
	<form action="login" method="post" onsubmit="return checkAll()">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" id="username" name="loginUser.account"  
				onblur="checkName()"/></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" id="password" name="loginUser.password"  
				onblur="checkPw()"/></td>
			</tr>
			<tr>
				<td>类型：</td>
				<td><select name="loginUser.usertype"  
				onblur="checkPw()">
				    <option value="guest">用户</option>
				    <option value="admin" selected="selected">管理员</option>
				</select></td>
			</tr>
			<tr>
				<td><s:submit value="提交" /></td>
			</tr>
		</table>
	</form>
<script>
//校验用户名
function checkName(){
	var name=document.getElementById('username').value;
	if (name.length>0) {return true;}
	else{
		return false;
	}
}
//校验密码
function checkPw(){
	var pw=document.getElementById('password').value;
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