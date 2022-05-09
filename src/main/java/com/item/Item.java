package com.item;

public class Item {
	//attributes
	private int itemID;
	private String itemName;
	private double itemPrice;
	private int quantity;
	private int supID;
	
	public Item(int itemID, String itemName, double itemPrice,int quantity,int supID) {
		super();
		this.itemID = itemID;
		this.itemName = itemName;
		this.itemPrice = itemPrice;
	}

	public int getItemID() {
		return itemID;
	}

	public void setItemID(int itemID) {
		this.itemID = itemID;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public double getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(double itemPrice) {
		this.itemPrice = itemPrice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getSupID() {
		return supID;
	}

	public void setSupID(int supID) {
		this.supID = supID;
	}

	
	
}
