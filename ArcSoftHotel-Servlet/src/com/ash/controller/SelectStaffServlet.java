package com.ash.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ash.dao.StaffDao;
import com.ash.entity.Staff;

@WebServlet("/SelectStaff")
public class SelectStaffServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset:utf-8");
		StaffDao dao = new StaffDao();
		ArrayList<Staff> staffs;
		try {
			staffs = dao.getAllStaffs();
			request.getSession().setAttribute("staffs",staffs);//使用session存储查找到的员工信息
		    response.sendRedirect("staffList.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
