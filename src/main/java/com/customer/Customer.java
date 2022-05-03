package com.customer;
// Done by Randula
public class Customer {
	
	private int id;
	private String firstName;
	private String lastName;
	private String contact;
	private String email;
	private String username;
	private String password;
	
	public Customer(int id, String firstName, String lastName, String contact, String email, String username,String password) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.contact = contact;
		this.email = email;
		this.username = username;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	
	public String getFirstName() {
		return firstName;
	}

	

	public String getLastName() {
		return lastName;
	}

	

	public String getContact() {
		return contact;
	}

	

	public String getEmail() {
		return email;
	}

	

	public String getUsername() {
		return username;
	}

	

	public String getPassword() {
		return password;
	}

	

}
