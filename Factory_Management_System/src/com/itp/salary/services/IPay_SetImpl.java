package com.itp.salary.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.itp.common.utils.DBConnection;

import com.itp.salary.model.Setting;

public class IPay_SetImpl implements IPay_Set{

	@Override
	public void setSetting(Setting addSetting) {
		Connection conn=DBConnection.getConnection();
		
		try {
			PreparedStatement pStatement=conn.prepareStatement("INSERT INTO payment_setting values(?,?)");
			pStatement.setString(1, addSetting.getPayment_Type());
			pStatement.setInt(2, addSetting.getValue());
			pStatement.executeUpdate();
			pStatement.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public ArrayList<Setting> viewsetiing() {

		ArrayList<Setting> datarate=new ArrayList<Setting>();
		Connection conn= DBConnection.getConnection();
		 try {
			Statement st=conn.createStatement();
			String sql="select * from payment_setting";
			ResultSet res=st.executeQuery(sql);
			while(res.next()) {
				Setting vsSetting=new Setting();
				vsSetting.setPayment_Type(res.getString("Payment_Type"));
				vsSetting.setValue(res.getInt("value"));
				
				datarate.add(vsSetting);
				
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
