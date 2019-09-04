package com.itp.salary.model;

<<<<<<< HEAD
import java.sql.Date;

public class Attendance {
	private String Emp_Id;
	private Date date;
=======

public class Attendance {
	private String Emp_Id;
	private String date;
>>>>>>> 1772941fc43ff5d4ecd96f9b816345fef7bd9308
	private String Arrival_time;
	private String Departure_time;
	public String getEmp_Id() {
		return Emp_Id;
	}
	public void setEmp_Id(String emp_Id) {
		Emp_Id = emp_Id;
	}
<<<<<<< HEAD
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
=======
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
>>>>>>> 1772941fc43ff5d4ecd96f9b816345fef7bd9308
		this.date = date;
	}
	public String getArrival_time() {
		return Arrival_time;
	}
	public void setArrival_time(String arrival_time) {
		Arrival_time = arrival_time;
	}
	public String getDeparture_time() {
		return Departure_time;
	}
	public void setDeparture_time(String departure_time) {
		Departure_time = departure_time;
	}
	
	
	

}
