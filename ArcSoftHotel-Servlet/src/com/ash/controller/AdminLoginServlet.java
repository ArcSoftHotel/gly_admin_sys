package com.ash.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;

import com.ash.dao.AdminDao;

@WebServlet("/AdminLogin")
public class AdminLoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");

        //判断用户名和密码是否为空
        if (request.getParameter("loginName").equals("") || request.getParameter("loginPwd").equals("")) {
            JOptionPane.showMessageDialog(null, "用户名或密码不能为空");
            String message = "<li>登录失败<>";
            request.setAttribute("result", message);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/adminLogin.jsp");
            rd.forward(request, response);
        }
        AdminDao adminDao=new AdminDao();
        String username=request.getParameter("loginName");
        String password=request.getParameter("loginPwd");
        if(adminDao.Login_A(username,password)!=null){
            //利用session进行存储
            HttpSession session=request.getSession();
            synchronized(session)
            {
                session.setAttribute("user",adminDao.Login_A(username,password));
            }
            response.sendRedirect("loginSuccess.jsp");
        }
        
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
