package com.item;

public class Item {
	//attributes
	private int itemID;
	private String itemName;
	private double itemPrice;
	
	public Item(int itemID, String itemName, double itemPrice) {
		super();
		this.itemID = itemID;
		this.itemName = itemName;
		this.itemPrice = itemPrice;
	}

	public int getItemID() {
		return itemID;
	}

	public String getItemName() {
		return itemName;
	}

	public double getItemPrice() {
		return itemPrice;
	}
	
	
}
