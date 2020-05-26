package model;

import java.io.Serializable;

public class OrderDesc implements Serializable{
	int orderId;
	int quantity;

	public OrderDesc() {
	}

	public OrderDesc(int orderId, int quantity) {
		this.orderId = orderId;
		this.quantity = quantity;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


}
