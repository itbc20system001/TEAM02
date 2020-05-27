package model;

import java.io.Serializable;

public class OrderDesc implements Serializable{
	private int order_desc_id;
	private int order_id;
	private int quantity;
	private int pattern_cd;
	private int size_price_cd;
	private int price;
	private boolean liner_flg;
	private boolean hook_flg;



	public OrderDesc() {
	}

	public OrderDesc(int order_desc_id, int order_id, int quantity, int pattern_cd, int size_price_cd, int price,
			boolean liner_flg, boolean hook_flg) {
		super();
		this.order_desc_id = order_desc_id;
		this.order_id = order_id;
		this.quantity = quantity;
		this.pattern_cd = pattern_cd;
		this.size_price_cd = size_price_cd;
		this.price = price;
		this.liner_flg = liner_flg;
		this.hook_flg = hook_flg;
	}

	public int getOrder_desc_id() {
		return order_desc_id;
	}

	public void setOrder_desc_id(int order_desc_id) {
		this.order_desc_id = order_desc_id;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPattern_cd() {
		return pattern_cd;
	}

	public void setPattern_cd(int pattern_cd) {
		this.pattern_cd = pattern_cd;
	}

	public int getSize_price_cd() {
		return size_price_cd;
	}

	public void setSize_price_cd(int size_price_cd) {
		this.size_price_cd = size_price_cd;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public boolean isLiner_flg() {
		return liner_flg;
	}

	public void setLiner_flg(boolean liner_flg) {
		this.liner_flg = liner_flg;
	}

	public boolean isHook_flg() {
		return hook_flg;
	}

	public void setHook_flg(boolean hook_flg) {
		this.hook_flg = hook_flg;
	}





}
