package com.itp.inv.model;

import java.sql.Date;

public class product {
	
	
	private String pname;
	private String pid;
	private int pstore;
	private Date date;
	
	
//	public int getTotal() {
//		return total;
//	}
//	public void setTotal(int total) {
//		this.total = total;
//	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public int getPstore() {
		return pstore;
	}
	public void setPstore(int pstore) {
		this.pstore = pstore;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
}
