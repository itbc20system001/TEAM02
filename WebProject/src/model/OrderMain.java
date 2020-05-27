package model;

import java.io.Serializable;

public class OrderMain implements Serializable{
	private int order_id;
	private int user_id;
	private int total;
	private String order_date;

	public OrderMain() {
	}

	public OrderMain(int order_id, int user_id, int total, String order_date) {
		super();
		this.order_id = order_id;
		this.user_id = user_id;
		this.total = total;
		this.order_date = order_date;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getOrder_date() {
		return order_date;
	}

	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}



}
