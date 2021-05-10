package com.jsplec.base;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Response_01S
 */
@WebServlet("/Response_01S")
public class Response_01S extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Response_01S() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		
		switch(name) {
		case "naver" :
			response.sendRedirect("https://www.naver.com");
			break;
		case "daum" :
			response.sendRedirect("https://www.daum.net");
			break;
		case "google" :
			response.sendRedirect("https://www.google.com");
			break;
			default : 
				response.sendRedirect("https://www.yahoo.com");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		
		switch(name) {
		case "naver" :
			response.sendRedirect("https://www.naver.com");
			break;
		case "daum" :
			response.sendRedirect("https://www.daum.net");
			break;
		case "google" :
			response.sendRedirect("https://www.google.com");
			break;
			default : 
				response.sendRedirect("https://www.yahoo.com");
		}
		}

}
