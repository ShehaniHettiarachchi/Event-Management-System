package com.attendee;

public class Attendee {
	
	//attributes
	private int attid;
	private String attname;
	private String email;
	private String nic;
	private String mobile;
	private String affillation;
	private int cusid;
	
	//overloaded constructor
	public Attendee(int attid, String attname, String email, String nic, String mobile, String affillation) {
		super();
		this.attid = attid;
		this.attname = attname;
		this.email = email;
		this.nic = nic;
		this.mobile = mobile;
		this.affillation = affillation;
	}

	//getters
	public int getAttid() {
		return attid;
	}

	public String getAttname() {
		return attname;
	}

	public String getEmail() {
		return email;
	}

	public String getNic() {
		return nic;
	}

	public String getMobile() {
		return mobile;
	}

	public String getAffillation() {
		return affillation;
	}

	public int getCusid() {
		return cusid;
	}

	public void setCusid(int cusid) {
		this.cusid = cusid;
	}

	
	
}
