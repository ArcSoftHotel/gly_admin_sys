package com.ash.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ash.dao.RoomDao;
import com.ash.entity.Room;

@WebServlet("/AddRoom")
public class AddRoomServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html:charset=utf-8");
		RoomDao dao = new RoomDao();
		Room room = new Room();
		room.setRoomid(Integer.parseInt(request.getParameter("roomid")));
		room.setRoomtype(request.getParameter("roomtype"));
		room.setRoomprice(Double.parseDouble(request.getParameter("roomprice")));
		room.setStatus(request.getParameter("status"));
		room.setRoomimg(request.getParameter("roomimg"));
		try {
			if(!dao.addRoom(room)) {
				request.setAttribute("result","出现了未知的错误.");
			    RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
			    rd.forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		response.sendRedirect("loginSuccess.jsp");	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
