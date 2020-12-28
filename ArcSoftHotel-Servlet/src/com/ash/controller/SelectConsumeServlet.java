package com.ash.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ash.dao.ConsumeDao;
import com.ash.entity.Consume;

@WebServlet("/SelectConsume")
public class SelectConsumeServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset:utf-8");
		ConsumeDao dao = new ConsumeDao();
		ArrayList<Consume> conss = new ArrayList<>();
		try {
			conss = dao.selectConsume(request.getParameter("userid"));
			request.getSession().setAttribute("consumes",conss);//使用session存储查找到的房间信息
		    response.sendRedirect("consumeList.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
