package com.sussex.user;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sussex.database.CommonConfigurations;
import com.sussex.payment.Payment;
import com.sussex.payment.PaymentDAO;

/**
 * Servlet implementation class LoginUserServlet
 */
@WebServlet("/LoginUser")
public class LoginUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		User user = new User(username, password);
		
		if(username.equals(CommonConfigurations.ADMIN_USERNAME) && password.equals(CommonConfigurations.ADMIN_PASSWORD))
		{
			ArrayList<Payment> paymentList = new ArrayList<Payment>();
			paymentList = PaymentDAO.selectAllPayments();
			request.setAttribute("paymentList", paymentList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Payment-Management.jsp");
			dispatcher.forward(request, response);
		}
		
		else if (UserDAO.validateUser(user))
		{
			Payment payment = new Payment();
			ArrayList<Payment> paymentList = new ArrayList<Payment>();
			paymentList = PaymentDAO.searchPayment(username);
			
			if(paymentList.size() > 0) {
				payment = paymentList.get(0);
			} else {
				payment.setPrg(username);
			}
			
			request.setAttribute("payment", payment);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Payment-Registration-Parent.jsp");
			dispatcher.forward(request, response);
		} else {
			
			String errorMessage = "Invalid username or password ! Please try again !";
			request.setAttribute("errorMessage", errorMessage);
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
	}

}
