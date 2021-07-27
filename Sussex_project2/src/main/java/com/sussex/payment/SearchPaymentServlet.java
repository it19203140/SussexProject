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
 * Servlet implementation class SearchPaymentServlet
 */
@WebServlet(name = "SearchPayment", urlPatterns = { "/SearchPayment" })
public class SearchPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchPaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Payment> paymentList = new ArrayList<Payment>();
		paymentList = PaymentDAO.searchPayment(request.getParameter("query"));
		
		request.setAttribute("paymentList", paymentList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Payment-Management.jsp");
		dispatcher.forward(request, response);
	}

}
