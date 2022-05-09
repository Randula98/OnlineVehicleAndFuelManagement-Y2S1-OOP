package com.fuel;

public class Fuel {
	
	private int id;
	private String type;
	private int amount;
	private String vehicleNo;
	private String collectingDate;
	private String vehicleType;
	
	public Fuel(int id, String type, int amount, String vehicleNo, String collectingDate, String vehicleType) {
		super();
		this.id = id;
		this.type = type;
		this.amount = amount;
		this.vehicleNo = vehicleNo;
		this.collectingDate = collectingDate;
		this.vehicleType = vehicleType;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getVehicleNo() {
		return vehicleNo;
	}
	public void setVehicleNo(String vehicleNo) {
		this.vehicleNo = vehicleNo;
	}
	public String getCollectingDate() {
		return collectingDate;
	}
	public void setCollectingDate(String collectingDate) {
		this.collectingDate = collectingDate;
	}
	public String getVehicleType() {
		return vehicleType;
	}
	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}
	
	

}
