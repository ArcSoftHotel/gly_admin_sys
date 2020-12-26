package com.ash.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ash.dao.RoomDao;

@WebServlet("/DeleteRoom")
public class DeleteRoomServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RoomDao dao = new RoomDao();
		if(!dao.deleteRoom(Integer.parseInt(request.getParameter("roomid")))) {
			request.setAttribute("result","出现了未知的错误.");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
            rd.forward(request, response);
		}
		response.sendRedirect("loginSuccess.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
