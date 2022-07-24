package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Login;
import com.model.LoginManager;

public class AddData extends HttpServlet {
	private static final long serialVersionUID = 1L;
           
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		try
		{
			Login S = new Login();
			LoginManager SM = new LoginManager();
			
			String sname = request.getParameter("sname");
			String spassword = request.getParameter("spassword");

			S.setName(sname);
			S.setPassword(spassword);
			
			String ack = SM.saveData(S);
			
			pw.print(ack);
		}
		catch(Exception e)
		{
			pw.print(e.getMessage());
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.include(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
