<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新增员工</title>
</head>
<body>
    <nav>
		<ul>
			<li><a href="#">房间消费查询</a></li>
			<li><a href="SelectRoom">房间信息</a></li>
			<li><a href="#">房客信息</a></li>
			<li><a href="SelectStaff">工作人员信息</a></li>
		</ul>
	</nav>
	<form action="AddStaff" method="post">
	    <table>
			<tr>
				<td>员工编号：</td>
				<td><input type="text" id="staffid" name="staffid"
					onblur="checkId()" /></td>
			</tr>
			<tr>
				<td>姓名：</td>
				<td><input type="text" id="staffname" name="staffname"
					onblur="checkName()" /></td>
			</tr>
			<tr>
				<td>职责：</td>
				<td><input type="text" id="duty" name="duty"
					onblur="checkDepart()" /></td>
			</tr>
			<tr>
				<td>状态：</td>
				<td><input type="text" id="status" name="status"
					onblur="checkStatus()" /></td>
			</tr>
			<tr>
				<td>手机号码：</td>
				<td><input type="text" id="phone" name="phone"
					onblur="checkPhone()" /></td>
			</tr>
			<tr>
				<td><button type="submit">提交</button></td>
			</tr>
		</table>
	</form>
</body>
</html>