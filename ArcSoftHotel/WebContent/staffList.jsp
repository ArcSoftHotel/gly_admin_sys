<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>员工信息</title>
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
    人员列表
    <table border=1>
		<tr>
			<th>编号</th>
			<th>姓名</th>
			<th>部门</th>
			<th>状态</th>
			<th>电话</th>
			<th>更新</th>
			<th>删除</th>
		</tr>
		<s:iterator value="staffs">
			<tr>			    
				<form action="updateStaff" method="post" >
				    <td><input type="text" name="staff.staffid" value="<s:property value="staffid"/>"/></td>
				    <td><input type="text" name="staff.staffname" value="<s:property value="staffname"/>"/></td>
				    <td><input type="text" name="staff.department" value="<s:property value="department"/>"/></td>
				    <td><input type="text" name="staff.status" value="<s:property value="status"/>"/></td>
				    <td><input type="text" name="staff.phone" value="<s:property value="phone"/>"/></td>
				    <td><button type="submit">更新</button></td>
				</form>
				<form action="deleteStaff" method="post" >
				    <input type="text" name="staff.staffid" value="<s:property value="staffid"/>" style="display:none"/>
				    <input type="text" name="staff.staffname" value="<s:property value="staffname"/>" style="display:none"/>
				    <input type="text" name="staff.department" value="<s:property value="department"/>" style="display:none"/>
				    <input type="text" name="staff.status" value="<s:property value="status"/>" style="display:none"/>
				    <input type="text" name="staff.phone" value="<s:property value="phone"/>" style="display:none"/>
				    <td><button type="submit">删除</button></td>
				</form>
			</tr>
		</s:iterator>
	</table>
	<a href="addStaff.jsp">添加员工</a>
</body>
</html>