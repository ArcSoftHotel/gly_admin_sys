<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
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
    <li><a href="allRooms">房间信息</a></li>
    <li><a href="#">房客信息</a></li>
    <li><a href="allStaffs">工作人员信息</a></li>
  </ul>
</nav>
    房间列表
	<table border=1>
		<tr>
			<th>编号</th>
			<th>类型</th>
			<th>价格</th>
			<th>更新</th>
			<th>删除</th>
		</tr>
		<s:iterator value="rooms">
			<tr>			    
				<form action="updateRoom" method="post" >
				    <td><input type="text" name="room.roomid" value="<s:property value="roomid"/>"/></td>
				    <td><input type="text" name="room.roomtype" value="<s:property value="roomtype"/>"/></td>
				    <td><input type="text" name="room.roomcost" value="<s:property value="roomcost"/>"/></td>
				    <td><button type="submit">更新</button></td>
				</form>
				<form action="deleteRoom" method="post" >
				    <input type="text" name="room.roomid" value="<s:property value="roomid"/>" style="display:none"/>
				    <input type="text" name="room.roomtype" value="<s:property value="roomtype"/>" style="display:none"/>
				    <input type="text" name="room.roomcost" value="<s:property value="roomcost"/>" style="display:none"/>
				    <td><button type="submit">删除</button></td>
				</form>
			</tr>
		</s:iterator>
	</table>
	<a href="addRoom.jsp">添加房间</a>
</body>
</html>