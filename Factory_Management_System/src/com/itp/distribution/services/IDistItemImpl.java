package com.itp.distribution.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.itp.distribution.model.DistItem;
import com.itp.common.utils.DBConnection;

public class IDistItemImpl implements IDistItem{

	@Override
	public void addDistItem(DistItem distribuItem) {
		// TODO Auto-generated method stub
		Connection conn = DBConnection.getConnection();
		
		try {
			PreparedStatement pt = conn.prepareStatement("INSERT INTO DISTRIBUTEDITEMLIST values (?,?,?,?,?,?,?)");
			
			pt.setString(1, distribuItem.getDistributedCode());
			pt.setString(2, distribuItem.getItemCode());
			pt.setString(3, distribuItem.getShopId());
			pt.setInt(4, distribuItem.getDistributedCount());
			pt.setInt(5, distribuItem.getReturnedCount());
			pt.setInt(6, distribuItem.getIncome());
			pt.setDate(7, distribuItem.getDate());
			
			pt.executeUpdate();
			pt.close();
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}

	@Override
	public ArrayList<DistItem> viewDistItems() {
		// TODO Auto-generated method stub
		
		ArrayList<DistItem> datarate = new ArrayList<DistItem>();
		
		Connection conn = DBConnection.getConnection();
		
		try {
			Statement st = conn.createStatement();
			
			String sql = "select * from distributeditemlist";
			ResultSet res = st.executeQuery(sql);
			
			while(res.next()) {
				DistItem di1 = new DistItem();
				
				di1.setDistributedCode(res.getString("distributedcode"));
				di1.setItemCode(res.getString("itemcode"));
				di1.setShopId(res.getString("shopid"));
				di1.setDistributedCount(Integer.parseInt(res.getString("distributedcount")));
				di1.setReturnedCount(Integer.parseInt(res.getString("returncount")));
				di1.setIncome(Integer.parseInt(res.getString("income")));
				di1.setDate(res.getDate("date"));
				
				datarate.add(di1);
				
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
