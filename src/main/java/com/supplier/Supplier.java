package com.supplier;

public class Supplier {
  private int id;
  private String companyName;
  private String branch;
  private String contactNo;
  private String userName;
  private String password;
  
  public Supplier(int id, String companyName, String branch, String contactNo, String userName, String password) {
	this.id = id;
	this.companyName = companyName;
	this.branch = branch;
	this.contactNo = contactNo;
	this.userName = userName;
	this.password = password;
  }

  public int getId() {
	return id;
  }

  public String getCompanyName() {
	return companyName;
  }

  public String getBranch() {
	return branch;
  }

  public String getContactNo() {
	return contactNo;
  }

  public String getUserName() {
	return userName;
  }
  
  public String getPassword() {
	return password;
  }

}
