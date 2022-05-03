package com.employee;

//Done by The French Boy

public class Employee {
	private int employeeID;
	private String firstName;
	private String lastName;
	private String contactNo;
	private String role;
	private double salary;
	private String username;
	private String password;
	
	public Employee(int employeeID, String firstName, String lastName, String contactNo, String role, double salary,
			String username, String password) {
		
		this.employeeID = employeeID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.contactNo = contactNo;
		this.role = role;
		this.salary = salary;
		this.username = username;
		this.password = password;
	}

	public int getEmployeeID() {
		return employeeID;
	}

	
	public String getFirstName() {
		return firstName;
	}

	

	public String getLastName() {
		return lastName;
	}

	

	public String getContactNo() {
		return contactNo;
	}

	

	public String getRole() {
		return role;
	}

	

	public double getSalary() {
		return salary;
	}

	

	public String getUsername() {
		return username;
	}

	

	public String getPassword() {
		return password;
	}

	
	
}
