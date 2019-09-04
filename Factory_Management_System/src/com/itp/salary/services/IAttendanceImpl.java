package com.itp.salary.services;

import java.sql.Connection;
//import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import com.itp.common.utils.DBConnection;

import com.itp.salary.model.Attendance;

public class IAttendanceImpl implements IAttendance{

	@Override
	public void addAttendance(Attendance addattendance) {
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement pStatement = conn.prepareStatement("INSERT INTO dailyattendance_table values(?,?,?,?)");
			pStatement.setString(1,addattendance.getEmp_Id());
			pStatement.setDate(2, addattendance.getDate());
			pStatement.setString(3, addattendance.getArrival_time());
			pStatement.setString(4, addattendance.getDeparture_time());
			pStatement.executeUpdate();
			pStatement.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public ArrayList<Attendance> viewAttendance() {
		ArrayList<Attendance> datarate=new ArrayList<Attendance>();
		Connection conn= DBConnection.getConnection();
		 try {
			Statement st=conn.createStatement();
			String sql="select * from dailyattendance_table";
			ResultSet res=st.executeQuery(sql);
			while(res.next()) {
				Attendance Vattendance=new Attendance();
				Vattendance.setEmp_Id(res.getString("Emp_Id"));
				Vattendance.setDate(res.getDate("date"));
				Vattendance.setArrival_time(res.getString("Arrival_time"));
				Vattendance.setDeparture_time(res.getString("Departure_time"));
				
				datarate.add(Vattendance);
				
			}
			st.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return datarate;
	}
	

}
