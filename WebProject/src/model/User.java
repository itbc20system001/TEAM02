package model;

import java.io.Serializable;

//アカウント情報
public class User implements Serializable {
	private int userId; //自動連番
	private String email; //Emailアドレス
	private String password; //パスワード
	private String userName; //氏名
	private String address; //住所


	public User() {
	}

	public User(int userId, String email, String password, String userName, String address) {
		this.userId = userId;
		this.email = email;
		this.password = password;
		this.userName = userName;
		this.address = address;
	}



	public int getUserId() {
		return userId;
	}



	public void setUserId(int userId) {
		this.userId = userId;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getUserName() {
		return userName;
	}



	public void setUserName(String userName) {
		this.userName = userName;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}






}
