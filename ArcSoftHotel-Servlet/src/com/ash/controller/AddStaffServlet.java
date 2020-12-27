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

@WebServlet("/AddStaff")
public class AddStaffServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html:charset=utf-8");
		StaffDao dao = new StaffDao();
		Staff staff = new Staff();
		staff.setStaffid(Integer.parseInt(request.getParameter("staffid")));
		staff.setStaffname(request.getParameter("staffname"));
		staff.setDuty(request.getParameter("duty"));
		staff.setStatus(request.getParameter("status"));
		staff.setPhone(request.getParameter("phone"));
		try {
			if(!dao.addStaff(staff)) {
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
