package com.auth;
import com.dto.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
@WebServlet("/register2")
public class register2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		
		Student stu = (Student) session.getAttribute("stu"); //upcating child to parent
		
		stu.setMobile(Long.parseLong(request.getParameter("mnumber")));
		stu.setAmobile(Long.parseLong(request.getParameter("anumber")));
		stu.setEmail(request.getParameter("email"));
		
		session.setAttribute("stu", stu);
		response.sendRedirect("register3.jsp");
		
		
		
	}

}
