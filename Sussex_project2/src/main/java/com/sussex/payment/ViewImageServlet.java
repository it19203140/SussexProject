package com.sussex.payment;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewImageServlet
 */
@WebServlet("/ViewImage")
public class ViewImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      
	      // Get the absolute path of the image
	      String filepath = request.getParameter("filepath");
	      
	      Path path = new File(filepath).toPath();
	      
	      // retrieve mimeType dynamically
	      String mime = Files.probeContentType(path);
	      if (mime == null) {
	    	  response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
	        return;
	      }

	      response.setContentType(mime);
	      File file = new File(filepath);
	      response.setContentLength((int)file.length());

	      FileInputStream in = new FileInputStream(file);
	      OutputStream out = response.getOutputStream();

	      // Copy the contents of the file to the output stream
	       byte[] buf = new byte[1024];
	       int count = 0;
	       while ((count = in.read(buf)) >= 0) {
	         out.write(buf, 0, count);
	      }
	    out.close();
	    in.close();
	}

}
