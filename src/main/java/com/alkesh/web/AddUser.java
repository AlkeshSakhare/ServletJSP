package com.alkesh.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alkesh.web.dao.UserDao;

/**
 * Servlet implementation class AddUser
 */
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String UserName = request.getParameter("uname");
		String email = request.getParameter("uemail");
		String mobile = request.getParameter("umobile");
		String city = request.getParameter("ucity");
		String password = request.getParameter("upassword");

		System.out.println("UserName " + UserName);
		System.out.println("email " + email);
		System.out.println("mobile " + mobile);
		System.out.println("city " + city);
		System.out.println("password " + password);

		UserDao userDao = new UserDao();
		userDao.saveUser(UserName, email, mobile, city, password);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hola</title>");
		out.println("</head>");
		out.println("<body bgcolor='white'>");
		out.print("alert('User added successfully')");
		out.println("</body>");
		out.println("</html>");
		response.sendRedirect("index.jsp");
	}
}
