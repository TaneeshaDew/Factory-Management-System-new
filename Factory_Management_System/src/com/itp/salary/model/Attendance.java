package com.itp.salary.model;

import java.sql.Date;

public class Attendance {
	private String Emp_Id;
	private Date date;
	private String Arrival_time;
	private String Departure_time;
	public String getEmp_Id() {
		return Emp_Id;
	}
	public void setEmp_Id(String emp_Id) {
		Emp_Id = emp_Id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
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
