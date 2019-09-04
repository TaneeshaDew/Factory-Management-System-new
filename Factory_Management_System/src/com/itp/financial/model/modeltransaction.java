package com.itp.financial.model;

public class modeltransaction {

	private int TransactionCode;
	
	private int AccountNo;
	
	private String Description;
	
	private String Type;
	
	private String Date;
	
	private String Amount;

	public int getTransactionCode() {
		return TransactionCode;
	}

	public void setTransactionCode(int transactionCode) {
		TransactionCode = transactionCode;
	}

	public int getAccountNo() {
		return AccountNo;
	}

	public void setAccountNo(int accountNo) {
		AccountNo = accountNo;
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

