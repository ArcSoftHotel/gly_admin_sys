<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加房间信息</title>
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
	<form action="addRoom" method="post" onsubmit="return checkAll()">
		<table>
			<tr>
				<td>房间编号：</td>
				<td><input type="text" id="roomid" name="room.roomid"
					onblur="checkId()" /></td>
			</tr>
			<tr>
				<td>类型：</td>
				<td><select name="room.roomtype">
						<option value="president">总统套房</option>
						<option value="standard" selected="selected">标准间</option>
				</select></td>
			</tr>
			<tr>
				<td>价格：</td>
				<td><select name="room.roomcost">
						<option value="¥200/天">¥200/天</option>
						<option value="¥100/天" selected="selected">¥100/天</option>
				</select></td>
			</tr>
			<tr>
				<td><s:submit value="提交" /></td>
			</tr>
		</table>
	</form>
	<script>
		//校验用户名
		function checkId() {
			var id = document.getElementById('roomid').value;
			if (id.length > 0) {
				return true;
			} else {
				alert("房间编号不能为空！");
				return false;
			}
		}
	</script>
</body>
</html>