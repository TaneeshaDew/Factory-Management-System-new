package com.itp.financial.model;

public class modelcost {

private int CostCode;
	
	private String Description;
	
	private String Type;
	
	private String Date;
	
	private String Amount;

	public int getCostCode() {
		return CostCode;
	}

	public void setCostCode(int costCode) {
		CostCode = costCode;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public String getType() {
		return Type;
	}

	public void setType(String type) {
		Type = type;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public String getAmount() {
		return Amount;
	}

	public void setAmount(String amount) {
		Amount = amount;
	}
	
}
