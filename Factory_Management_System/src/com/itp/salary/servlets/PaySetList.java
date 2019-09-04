package com.itp.salary.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itp.salary.services.IPay_Set;
import com.itp.salary.services.IPay_SetImpl;

import com.itp.salary.model.Setting;

/**
 * Servlet implementation class PaySetList
 */
@WebServlet("/PaySetList")
public class PaySetList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaySetList() {
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
		response.setContentType("text/html");
		Setting setting=new Setting();
		setting.setPayment_Type(request.getParameter("Payment_Type"));
		setting.setValue(Integer.parseInt(request.getParameter("value")));
		
		IPay_Set iPay_Set=new IPay_SetImpl();
		iPay_Set.setSetting(setting);
		
		IPay_Set iPay_Set2=new IPay_SetImpl();
		request.setAttribute("data", iPay_Set2);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/SalSetting.jsp");
		if(dispatcher != null) {dispatcher.forward(request, response);
		}
	}

}
