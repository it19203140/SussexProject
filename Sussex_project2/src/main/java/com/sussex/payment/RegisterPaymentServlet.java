package com.sussex.payment;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.sussex.database.CommonConfigurations;

/**
 * Servlet implementation class RegisterPaymentServlet
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50)

@WebServlet(name = "RegisterPayment", urlPatterns = { "/RegisterPayment" })
public class RegisterPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterPaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		
		String usertype = request.getParameter("usertype");
		String prg = request.getParameter("prg");
		String fullName = request.getParameter("fullname");
		String nameWithInitials = request.getParameter("initials");
		String branch = request.getParameter("branch");
		String bankReference = request.getParameter("bankreference");
		String paymentFor = request.getParameter("paymentfor");
		String addtionalNote = request.getParameter("note");
		
		Part file = request.getPart("image");
		String imageFilePath = extractFileName(file);
		File f = new File(imageFilePath);
		String imageFileName = prg + "___" + bankReference + "___" + f.getName();
		
		
		/**
         * *** Get The Absolute Path Of The Web Application If Needed****
         */
		
		//String applicationPath = getServletContext().getRealPath("");
        //System.out.println("applicationPath:" + applicationPath);
        
		

        File fileUploadDirectory = new File(CommonConfigurations.REGISTRATION_IMAGE_UPLOAD_PATH);
        
        //If file not found throw an exception
        if (!fileUploadDirectory.exists()) {
        	fileUploadDirectory.mkdirs();
        	throw new FileNotFoundException();
        }
        
        String savePath = CommonConfigurations.REGISTRATION_IMAGE_UPLOAD_PATH + File.separator + imageFileName;
        file.write(savePath + File.separator);
        
		Payment newPayment = new Payment(prg, fullName, nameWithInitials, branch, bankReference, paymentFor, addtionalNote, savePath);
        
        if(PaymentDAO.insertPayment(newPayment))
        {
        	if(usertype.equals("parent")) {
        		
				RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);
				
        	} else if (usertype.equals("admin")) {
        		
    			ArrayList<Payment> paymentList = new ArrayList<Payment>();
    			paymentList = PaymentDAO.selectAllPayments();
    			request.setAttribute("paymentList", paymentList);
    			RequestDispatcher dispatcher = request.getRequestDispatcher("Payment-Management.jsp");
    			dispatcher.forward(request, response);
        	}
        } else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Error.jsp");
			dispatcher.forward(request, response);
        }
		
	}
	
    private String extractFileName(Part part) {//This method will print the file name.
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }

}
