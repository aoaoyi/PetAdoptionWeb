package com.luckypet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ProcessServlet extends HttpServlet{

	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
		
	    // Read form data
        String fullName = req.getParameter("fullName");
        String email = req.getParameter("email");
        String phone =req.getParameter("phone");
        String pet = req.getParameter("petOption");
        String housing = req.getParameter("housingType");
        String reason = req.getParameter("reason");
        String agreement = req.getParameter("agreement");

        // Pass data to JSP
        req.setAttribute("fullName", fullName);
        req.setAttribute("email", email);
        req.setAttribute("phone", phone);
        req.setAttribute("pet", pet);
        req.setAttribute("housing", housing);
        req.setAttribute("reason", reason);
        req.setAttribute("agreement", agreement);

        //Forward request to JSP
        RequestDispatcher rd =req.getRequestDispatcher("/confirmation.jsp");
        rd.forward(req, res);
	}
	
}
