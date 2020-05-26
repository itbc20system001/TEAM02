package model;

import java.io.Serializable;

//アカウント情報
public class User implements Serializable {
	public String userId;
	public String password;
	public String userName;
	public String address;

	public User() {
	}

	public User(String userId, String password, String name, String address) {
		this.userId = userId;
		this.password = password;
		this.userName = name;
		this.address = address;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return userName;
	}

	public void setName(String name) {
		this.userName = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


}
