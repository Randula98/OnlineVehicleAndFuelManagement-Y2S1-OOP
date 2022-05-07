package com.appointment;

public class Appointment {
	private int id;
	private String aptype;
	public Appointment(int id, String aptype) {
		
		
		this.id = id;
		this.aptype = aptype;
	}
	public int getId() {
		return id;
	}
	
	public String getAptype() {
		return aptype;
	}
	
	
}
