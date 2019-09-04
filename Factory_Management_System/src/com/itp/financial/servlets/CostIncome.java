package com.itp.financial.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itp.financial.model.modelcost;
import com.itp.financial.services.CostIncomei;
import com.itp.financial.services.CostIncomeimpl;

/**
 * Servlet implementation class CostIncome
 */
@WebServlet("/CostIncome")
public class CostIncome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CostIncome() {
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
response.setContentType("text/html");
		
		modelcost cs = new modelcost();
		
		cs.setCostCode(Integer.parseInt(request.getParameter("CostCode")));
		cs.setDescription(request.getParameter("Description"));
		cs.setType(request.getParameter("Type"));
		cs.setDate(request.getParameter("Date"));
		cs.setAmount(request.getParameter("Amount"));
		
		CostIncomei sc = new CostIncomeimpl();
		sc.addCost(cs);
		
		
		CostIncomei costObj = new CostIncomeimpl();
		request.setAttribute("data",costObj );
		
		
		 RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Cost&Income.jsp");
		 if(dispatcher != null)
		 {
			 dispatcher.forward(request,response);
		 }
			
	}

}
