package com.jsplec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DecAdd2
 */
@WebServlet("/DecAdd2")
public class DecAdd2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DecAdd2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>선언부를 이용한 덧셈</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("2 + 1  = " + decAdd(2, 1) + "<br>");
		writer.println("3 + 1  = " + decAdd(3, 1) + "<br>");
		writer.println("4 + 1  = " + decAdd(4, 1) + "<br>");
		writer.println("5 + 1  = " + decAdd(5, 1) + "<br>");
		writer.println("</body>");
		writer.println("</html>");

	}

	// 선언부
	private int decAdd(int a, int b) {
		int result = 0;
		result = a + b;
		return result;
	}
	

}
