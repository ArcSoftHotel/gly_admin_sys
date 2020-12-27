package com.ash.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ash.dao.StaffDao;
import com.ash.entity.Staff;

@WebServlet("/DeleteStaff")
public class DeleteStaffServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StaffDao dao = new StaffDao();
		try {
			if(!dao.deleteStaff(Integer.parseInt(request.getParameter("staffid")))) {
				request.setAttribute("result","出现了未知的错误.");
			    RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
			    rd.forward(request, response);
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
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
