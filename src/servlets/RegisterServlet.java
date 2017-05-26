package servlets;

import java.io.IOException;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojoClasses.User;
import travelClouds.UserDAO;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		User user = new User();
		UserDAO userDAO = new UserDAO();
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("password_confirmation");
		long phoneNumber = Long.parseLong(request.getParameter("phone"));
		String country = request.getParameter("country");
		
		String userName = request.getParameter("userName");


		System.out.println("In Register Servlet"+userName);

		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setEmailid(email);
		user.setPassword(password);
		user.setConfirmPassword(confirmPassword);
		user.setPhonenumber(phoneNumber);
		user.setCountry(country);
		user.setUserName(userName);
		boolean isSuccess = userDAO.addUser(user);
		if(isSuccess){
			
			userDAO.addUserInLogin(user);
			response.sendRedirect(request.getContextPath()+"/web/login.jsp");

		}

	}

}
