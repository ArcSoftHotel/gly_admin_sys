<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ash.entity.Room" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改房间信息</title>
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
	<form action="UpdateRoom">
	  <table>
	    <thead>
	      <tr>
	        <th>编号</th>
	        <th>类型</th>
	        <th>价格</th>
	        <th>状态</th>
	        <th>图片路径</th>
	      </tr>
	    </thead>
	    <tbody>
	    <tr>
		<td><input type="text" name="roomid" 
		value="<%=new String(request.getParameter("roomid").getBytes("ISO8859_1"),"utf-8")%>"></td> 
		<td><input type="text" name="roomtype" 
		value="<%=new String(request.getParameter("roomtype").getBytes("ISO8859_1"),"utf-8")%>"></td> 
		<td><input type="text" name="roomprice" 
		value="<%=new String(request.getParameter("roomprice").getBytes("ISO8859_1"),"utf-8")%>"></td> 
		<td><input type="text" name="status" 
		value="<%=new String(request.getParameter("status").getBytes("ISO8859_1"),"utf-8")%>"></td>
		<td><input type="text" name="roomimg" 
		value="<%=new String(request.getParameter("roomimg").getBytes("ISO8859_1"),"utf-8")%>"></td>
		</tr>
	    </tbody>
	  </table>
	  <button type="submit">修改</button>
	</form>
</body>
</html>