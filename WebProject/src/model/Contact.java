package model;

import java.io.Serializable;

public class Contact implements Serializable {
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	private String name;
	private String address;
	private String contact;
	public Contact(String name, String address, String contact) {
		super();
		this.name = name;
		this.address = address;
		this.contact = contact;
	}

}
