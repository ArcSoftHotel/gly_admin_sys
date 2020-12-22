<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
			<li><a href="allRooms">房间信息</a></li>
			<li><a href="#">房客信息</a></li>
			<li><a href="allStaffs">工作人员信息</a></li>
		</ul>
	</nav>
	<form action="addStaff" method="post">
	    <table>
			<tr>
				<td>员工编号：</td>
				<td><input type="text" id="staffid" name="staff.staffid"
					onblur="checkId()" /></td>
			</tr>
			<tr>
				<td>姓名：</td>
				<td><input type="text" id="staffname" name="staff.staffname"
					onblur="checkName()" /></td>
			</tr>
			<tr>
				<td>部门：</td>
				<td><input type="text" id="department" name="staff.department"
					onblur="checkDepart()" /></td>
			</tr>
			<tr>
				<td>状态：</td>
				<td><input type="text" id="status" name="staff.status"
					onblur="checkStatus()" /></td>
			</tr>
			<tr>
				<td>手机号码：</td>
				<td><input type="text" id="phone" name="staff.phone"
					onblur="checkPhone()" /></td>
			</tr>
			<tr>
				<td><s:submit value="提交" /></td>
			</tr>
		</table>
	</form>
</body>
</html>