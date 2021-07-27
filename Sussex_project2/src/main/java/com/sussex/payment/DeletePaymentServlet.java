package com.sussex.payment;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sussex.user.UserDAO;

/**
 * Servlet implementation class DeletePaymentServlet
 */
@WebServlet("/DeletePayment")
public class DeletePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletePaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bankReference = request.getParameter("bankReference");
		
		if(PaymentDAO.deletePayment(bankReference))
		{
			ArrayList<Payment> paymentList = new ArrayList<Payment>();
			paymentList = PaymentDAO.selectAllPayments();
			request.setAttribute("paymentList", paymentList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Payment-Management.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Error.jsp");
			dispatcher.forward(request, response);
		}
	}

}
