package model;

import java.io.Serializable;

//アカウント情報
public class User implements Serializable {
	private int user_id; //自動連番
	private String email; //Emailアドレス
	private String password; //パスワード
	private String user_nm; //氏名
	private String address; //住所


	public User() {
	}


	public User(int user_id, String email, String password, String user_nm, String address) {
		this.user_id = user_id;
		this.email = email;
		this.password = password;
		this.user_nm = user_nm;
		this.address = address;
	}


	public User(String email, String password, String user_nm, String address) {
		this.email = email;
		this.password = password;
		this.user_nm = user_nm;
		this.address = address;
	}


	public int getUser_id() {
		return user_id;
	}


	public void setUser_id(int user_id) {
		this.user_id = user_id;
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


	public String getUser_nm() {
		return user_nm;
	}


	public void setUser_nm(String user_nm) {
		this.user_nm = user_nm;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}





}
