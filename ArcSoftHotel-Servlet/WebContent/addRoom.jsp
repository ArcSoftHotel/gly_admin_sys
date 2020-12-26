<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<li><a href="SelectRoom">房间信息</a></li>
			<li><a href="#">房客信息</a></li>
			<li><a href="SelectStaff">工作人员信息</a></li>
		</ul>
	</nav>
	<form action="AddRoom" method="post" onsubmit="return checkAll()">
		<table>
			<tr>
				<td>房间编号：</td>
				<td><input type="text" id="roomid" name="roomid"
					onblur="checkId()" /></td>
			</tr>
			<tr>
				<td>房间类型：</td>
				<td><input type="text" id="roomtype" name="roomtype"
					onblur="checkType()" /></td>
			</tr>
			<tr>
				<td>房间价格：</td>
				<td><input type="text" id="roomprice" name="roomprice"
					onblur="checkPrice()" /></td>
			</tr>
			<tr>
				<td>房间状态：</td>
				<td><input type="text" id="status" name="status"
					onblur="checkStatus()" /></td>
			</tr>
			<tr>
				<td>房间图片路径：</td>
				<td><input type="text" id="roomimg" name="roomimg"
					onblur="checkImg()" /></td>
			</tr>
			<tr>
				<td><button type="submit">提交</button></td>
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