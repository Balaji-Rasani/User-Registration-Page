package com;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");// get some data from client (uname,passwd)
		String pass = req.getParameter("password");

//		PrintWriter writer = resp.getWriter();
//		resp.setContentType("text/html");
//		writer.append("Hi " + username + " You are successfully registered");
		
		req.setAttribute("name", username);
		req.setAttribute("password", pass);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("result.jsp");
		requestDispatcher.forward(req, resp);
	}

}
