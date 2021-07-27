package com.sussex.user;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet(name = "UpdateUser", urlPatterns = { "/UpdateUser"})
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String prg = request.getParameter("username");
	    String password = request.getParameter("password");
	    User user = new User(prg, password);
	    
	    if(UserDAO.updateUser(user))
	    {
			ArrayList<User> userList = new ArrayList<User>();
			userList = UserDAO.selectAllUsers();
			
			request.setAttribute("userList", userList);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("User-Management.jsp");
		    dispatcher.forward(request, response);

		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Error.jsp");
			dispatcher.forward(request, response);
		}
	}

}
