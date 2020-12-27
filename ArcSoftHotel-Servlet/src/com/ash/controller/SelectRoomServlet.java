package com.ash.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ash.dao.RoomDao;
import com.ash.entity.Room;

@WebServlet("/SelectRoom")
public class SelectRoomServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset:utf-8");
		RoomDao dao = new RoomDao();
		ArrayList<Room> rooms;
		try {
			rooms = dao.getAllRooms();
			request.getSession().setAttribute("rooms",rooms);//使用session存储查找到的房间信息
		    response.sendRedirect("roomList.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
