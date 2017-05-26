package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojoClasses.User;
import travelClouds.UserDAO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		doGet(request, response);
		UserDAO userDAO = new UserDAO();
		String email = request.getParameter("username");
		String password = request.getParameter("password");
		
		ArrayList<String> userDetails = userDAO.validateUser(email,password);
		String userName = userDAO.getProfile(email,password);

		
		if(userDetails == null){
			request.setAttribute("error", "Please check your username or password");

			RequestDispatcher rd =
					request.getRequestDispatcher("/web/login.jsp");
					rd.forward(request, response);
			
			//response.sendRedirect(request.getContextPath()+"/web/login.jsp");

		}

		else if (userDetails.get(0) != null && userDetails.get(1).equals("User")) {
	        HttpSession session = request.getSession();

			session.setAttribute("userMail", userDetails.get(0));
			session.setAttribute("userName", userName);


			RequestDispatcher rd =
					request.getRequestDispatcher("/web/userHome.jsp");
			rd.forward(request, response);
			

			//response.sendRedirect(request.getContextPath()+"/web/userHome.jsp");

		}
		else if (userDetails.get(0) != null && userDetails.get(1).equals("Admin")) {
			  HttpSession session = request.getSession();

				session.setAttribute("userMail", userDetails.get(0));
				session.setAttribute("userName", userName);


				RequestDispatcher rd =
						request.getRequestDispatcher("/web/adminHome.jsp");
				rd.forward(request, response);

			//response.sendRedirect(request.getContextPath()+"/web/adminHome.jsp");

		}else{
			
             response.getWriter()
                     .write("<html><body onload=\"alert('Sorry, the username and password you entered do not match with our records. Please try again.')\"></body></html>");
 			response.sendRedirect(request.getContextPath()+"/web/loginError.jsp");

		}
	}

}
