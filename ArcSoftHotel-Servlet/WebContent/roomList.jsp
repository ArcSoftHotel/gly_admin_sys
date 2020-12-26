<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ash.entity.Room" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>房间信息</title>
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
    房间列表
	<table border=1>
	  <thead>
		<tr>
			<th>编号</th>
			<th>类型</th>
			<th>价格</th>
			<th>状态</th>
			<th>图片路径</th>
			<th>更新</th>
			<th>删除</th>
		</tr>
	  </thead>
	  <tbody>
		<%
	      ArrayList<Room> rooms = (ArrayList<Room>)session.getAttribute("rooms");
	      for(Room room:rooms){
	    %>
	    <tr>
	      <td><%=room.getRoomid() %></td>
	      <td><%=room.getRoomtype() %></td>
	      <td><%=room.getRoomprice() %></td>
	      <td><%=room.getStatus() %></td>
	      <td><%=room.getRoomimg() %></td>
	      <td>	        
	        <form action="updateRoom.jsp" method="post">
	          <input type="text" name="roomid" value="<%=room.getRoomid()%>" style="display:none">
	          <input type="text" name="roomtype" value="<%=room.getRoomtype()%>" style="display:none">
	          <input type="text" name="roomprice" value="<%=room.getRoomprice()%>" style="display:none">
	          <input type="text" name="status" value="<%=room.getStatus()%>" style="display:none">
	          <input type="text" name="roomimg" value="<%=room.getRoomimg()%>" style="display:none">
	          <button type="submit">修改</button>
	        </form>
	      </td>
	      <td>
	        <form action="DeleteRoom" method="post">
	          <input type="text" name="roomid" value="<%=room.getRoomid()%>" style="display:none">
	          <input type="text" name="roomtype" value="<%=room.getRoomtype()%>" style="display:none">
	          <input type="text" name="roomprice" value="<%=room.getRoomprice()%>" style="display:none">
	          <input type="text" name="status" value="<%=room.getStatus()%>" style="display:none">
	          <input type="text" name="roomimg" value="<%=room.getRoomimg()%>" style="display:none">
	          <button type="submit">删除</button>
	        </form>
	      </td>
	    </tr>
	    <%} %>
	  </tbody>
	</table>
	<a href="addRoom.jsp">添加房间</a>
</body>
</html>