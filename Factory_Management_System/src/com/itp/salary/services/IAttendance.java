package com.itp.salary.services;

import java.util.ArrayList;



import com.itp.salary.model.Attendance;

public interface IAttendance {
	public void addAttendance(Attendance addattendance);
	public ArrayList<Attendance>viewAttendance();

}
