package com.itp.salary.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import com.itp.common.utils.DBConnection;


import com.itp.salary.model.UnitInsert;

public class IinsertunitsImpl implements Iinsetunits {

	@Override
	public void insertUnits(UnitInsert unitinsert) {
		Connection conn=DBConnection.getConnection();
		PreparedStatement pStatement;
		try {
			pStatement = conn.prepareStatement("INSERT INTO dailyunits values(?,?,?)");
			pStatement.setString(1, unitinsert.getEmp_Id());
			pStatement.setInt(2, unitinsert.getNumUnits());
			pStatement.setString(3, unitinsert.getDate());
			pStatement.executeUpdate();
			pStatement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	

}
