package com.u8.sdk.test.order;

public class U8Account {

	private String accountID;
	private String accountName;
	
	public U8Account(String accountID, String accountName){
		this.accountID = accountID;
		this.accountName = accountName;
	}
	
	public String getAccountID() {
		return accountID;
	}
	public void setAccountID(String accountID) {
		this.accountID = accountID;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	
	
	
}
