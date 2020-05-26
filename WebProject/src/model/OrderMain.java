package model;

import java.io.Serializable;

public class OrderMain implements Serializable{
	String date;

	public OrderMain() {
	}

	public OrderMain(String date) {
		this.date = date;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
