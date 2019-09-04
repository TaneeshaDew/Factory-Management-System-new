package com.itp.financial.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.itp.common.utils.DBConnection;
import com.itp.financial.model.modelcost;


public class CostIncomeimpl implements CostIncomei {

	@Override
	public void addCost(modelcost costCode) {
		// TODO Auto-generated method stub
		
		Connection con = DBConnection.getConnection();
		try {
			PreparedStatement pst = con.prepareStatement("insert into Cost values(?,?,?,?,?)");
			
			pst.setInt(1,costCode.getCostCode());
			pst.setString(2,costCode.getDescription());
			pst.setString(3,costCode.getType());
			pst.setString(4,costCode.getDate());
			pst.setString(5,costCode.getAmount());
			
			pst.executeUpdate();
			pst.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public ArrayList<modelcost> vieModelcosts() {
		// TODO Auto-generated method stub
		ArrayList<modelcost> datarate =  new ArrayList<modelcost>();
		Connection conn = DBConnection.getConnection();
		try {
			Statement st = conn.createStatement();
			String sql = "select * from cost";
			ResultSet res = st.executeQuery(sql);
			
			while(res.next())
			{
				modelcost costobj = new modelcost();
				costobj.setCostCode(res.getInt("CostCode"));
				costobj.setDescription(res.getString("Description"));
				costobj.setType(res.getString("Type"));
				costobj.setDate(res.getString("Date"));
				costobj.setAmount(res.getString("Amount"));
				
				datarate.add(costobj);
				
			
				
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
