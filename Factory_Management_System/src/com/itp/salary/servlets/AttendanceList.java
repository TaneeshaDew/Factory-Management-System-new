package com.itp.salary.servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itp.salary.services.IAttendance;
import com.itp.salary.services.IAttendanceImpl;

import com.itp.salary.model.Attendance;

/**
 * Servlet implementation class AttendanceList
 */
@WebServlet("/AttendanceList")
public class AttendanceList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AttendanceList() {
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
		Attendance attendance=new Attendance();
	
			java.util.Date date;
			try {
				date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("date"));
				java.sql.Date sqlDate=new java.sql.Date(date.getTime());
				attendance.setEmp_Id(request.getParameter("Emp_Id"));
				attendance.setDate(sqlDate);
				attendance.setArrival_time(request.getParameter("Arrival_time"));
				attendance.setDeparture_time(request.getParameter("Departure_time"));
				
			} catch (java.text.ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
		 
		IAttendance iAttendance=new IAttendanceImpl();
		iAttendance.addAttendance(attendance);
		
		IAttendance iAttendance2=new IAttendanceImpl();
		request.setAttribute("data", iAttendance2);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Attendance.jsp");
		if (dispatcher != null) {
			dispatcher.forward(request, response);
		}
		
	}

}
