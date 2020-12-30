package com.ash.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.ash.dao.ConsumeDao;

@WebServlet("/DeleteConsume")
public class DeleteConsumeServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ConsumeDao dao = new ConsumeDao();
		try {
			if(!dao.deleteConsume(request.getParameter("userid"),Integer.parseInt(request.getParameter("roomid")))) {
				JOptionPane.showMessageDialog(null, "删除失败，出现了待解决的问题！");
				request.setAttribute("result","出现了未知的错误.");
			    RequestDispatcher rd = getServletContext().getRequestDispatcher("/adminLogin.jsp");
			    rd.forward(request, response);
			}
		}catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}		
		response.sendRedirect("loginSuccess.jsp");
		JOptionPane.showMessageDialog(null, "删除成功！");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
