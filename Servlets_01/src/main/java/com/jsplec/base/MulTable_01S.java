package com.jsplec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MulTable_01S
 */
@WebServlet("/MulTable_01S")
public class MulTable_01S extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MulTable_01S() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		
		int number = Integer.parseInt(request.getParameter("number"));
		
		PrintWriter writer = null;
		
			
			writer = response.getWriter();
			writer.println("<html>");
			writer.println("<head>");
			writer.println("<title>" + number + "단 결과화면</title>");
			writer.println("</head>");
			writer.println("<body>");
			for(int i=1; i<=9; i++) {
			writer.println(number + " X " + i + " = " + (number*i) + "<br>");
		}
			writer.println("</body>");
			writer.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int number = Integer.parseInt(request.getParameter("number"));
		
		PrintWriter writer = null;
		
			
			writer = response.getWriter();
			writer.println("<html>");
			writer.println("<head>");
			writer.println("<title>" + number + "단 결과화면</title>");
			writer.println("</head>");
			writer.println("<body>");
			for(int i=1; i<=9; i++) {
			writer.println(number + " X " + i + " = " + (number*i) + "<br>");
		}
			writer.println("</body>");
			writer.println("</html>");
			}

}
