package com.sussex.payment;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListPaymentServlet
 */
@WebServlet("/ListPayment")
public class ListPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListPaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Payment> paymentList = new ArrayList<Payment>();
		paymentList = PaymentDAO.selectAllPayments();
		request.setAttribute("paymentList", paymentList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Payment-Management.jsp");
		dispatcher.forward(request, response);
		
	}

}
