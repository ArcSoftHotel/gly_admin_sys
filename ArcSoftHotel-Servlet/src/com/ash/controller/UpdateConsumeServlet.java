package com.ash.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.ash.dao.ConsumeDao;
import com.ash.entity.Consume;

@WebServlet("/UpdateConsume")
public class UpdateConsumeServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html:charset=utf-8");
		ConsumeDao dao = new ConsumeDao();
		Consume consume = new Consume();
		consume.setUserid(request.getParameter("userid"));
		consume.setRoomid(Integer.parseInt(request.getParameter("roomid")));
		consume.setRoomprice(Double.parseDouble(request.getParameter("roomprice")));
		consume.setService_price(Double.parseDouble(request.getParameter("service_price")));
		consume.setDate(Date.valueOf(request.getParameter("date")));
		try {
			if(!dao.updateConsume(consume)) {
				request.setAttribute("result","出现了未知的错误.");
			    RequestDispatcher rd = getServletContext().getRequestDispatcher("/adminLogin.jsp");
			    rd.forward(request, response);
			    return;
			}
		}catch (SQLException e) {
			e.printStackTrace();
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}	
		response.sendRedirect("consumeList.jsp");
		JOptionPane.showMessageDialog(null, "更新成功！");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
