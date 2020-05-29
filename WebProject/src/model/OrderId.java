package model;

import java.io.Serializable;

public class OrderId implements Serializable {

	private int order_id;

	public OrderId() {

}
	public OrderId(int order_id) {

		this.order_id = order_id;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

}
