<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ash.entity.Staff" %>
<%@ page import="java.util.ArrayList" %>
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
    <li><a href="SelectRoom">房间信息</a></li>
    <li><a href="#">房客信息</a></li>
    <li><a href="SelectStaff">工作人员信息</a></li>
  </ul>
</nav>
    人员列表
    <table border=1>
    <thead>
		<tr>
			<th>编号</th>
			<th>姓名</th>
			<th>职责</th>
			<th>状态</th>
			<th>电话</th>
			<th>更新</th>
			<th>删除</th>
		</tr>
	</thead>
	<tbody>
	    <%
	      ArrayList<Staff> staffs = (ArrayList<Staff>)session.getAttribute("staffs");
	      for(Staff staff:staffs){
	    %>
	    <tr>
	      <td><%=staff.getStaffid() %></td>
	      <td><%=staff.getStaffname() %></td>
	      <td><%=staff.getDuty() %></td>
	      <td><%=staff.getStatus() %></td>
	      <td><%=staff.getPhone() %></td>
	      <td>	        
	        <form action="updateStaff.jsp" method="post">
	          <input type="text" name="staffid" value="<%=staff.getStaffid()%>" style="display:none">
	          <input type="text" name="staffname" value="<%=staff.getStaffname()%>" style="display:none">
	          <input type="text" name="duty" value="<%=staff.getDuty()%>" style="display:none">
	          <input type="text" name="status" value="<%=staff.getStatus()%>" style="display:none">
	          <input type="text" name="phone" value="<%=staff.getPhone()%>" style="display:none">
	          <button type="submit">修改</button>
	        </form>
	      </td>
	      <td>
	        <form action="DeleteStaff" method="post">
	          <input type="text" name="staffid" value="<%=staff.getStaffid()%>" style="display:none">
	          <input type="text" name="staffname" value="<%=staff.getStaffname()%>" style="display:none">
	          <input type="text" name="duty" value="<%=staff.getDuty()%>" style="display:none">
	          <input type="text" name="status" value="<%=staff.getStatus()%>" style="display:none">
	          <input type="text" name="phone" value="<%=staff.getPhone()%>" style="display:none">
	          <button type="submit">删除</button>
	        </form>
	      </td>
	    </tr>
	    <%} %>
	</tbody>	
	</table>
	<a href="addStaff.jsp">添加员工</a>
</body>
</html>