package com.u8.sdk.lenovo;

public class GoodInfo {

	private String productID;
	private String waresid;
	private boolean openPrice;
	
	public GoodInfo(String productID, String waresid, boolean openPrice){
		this.productID = productID;
		this.waresid = waresid;
		this.openPrice = openPrice;
	}
	
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public String getWaresid() {
		return waresid;
	}
	public void setWaresid(String waresid) {
		this.waresid = waresid;
	}
	public boolean isOpenPrice() {
		return openPrice;
	}
	public void setOpenPrice(boolean openPrice) {
		this.openPrice = openPrice;
	}
	
	
	
}
