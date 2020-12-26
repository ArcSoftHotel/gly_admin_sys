<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ash.entity.Staff" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改员工信息</title>
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
	<form action="UpdateStaff" method="post">
	  <table>
	    <thead>
	      <tr>
	        <th>编号</th>
	        <th>姓名</th>
	        <th>职责</th>
	        <th>状态</th>
	        <th>电话</th>
	      </tr>
	    </thead>
	    <tbody>
	    <tr>
		<td><input type="text" name="staffid" 
		value="<%=new String(request.getParameter("staffid").getBytes("ISO8859_1"),"utf-8")%>"></td> 
		<td><input type="text" name="staffname" 
		value="<%=new String(request.getParameter("staffname").getBytes("ISO8859_1"),"utf-8")%>"></td> 
		<td><input type="text" name="duty" 
		value="<%=new String(request.getParameter("duty").getBytes("ISO8859_1"),"utf-8")%>"></td> 
		<td><input type="text" name="status" 
		value="<%=new String(request.getParameter("status").getBytes("ISO8859_1"),"utf-8")%>"></td>
		<td><input type="text" name="phone" 
		value="<%=new String(request.getParameter("phone").getBytes("ISO8859_1"),"utf-8")%>"></td>
		</tr>
		</tbody>
	  </table>
	  <button type="submit">修改</button>
	</form>
</body>
</html>