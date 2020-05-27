package model;

import java.io.Serializable;

public class Cart implements Serializable{
	private int pattern_cd;
	private int size_price_cd;
	private boolean liner_flag;
	private boolean hook_flg;
	private int quantity;
	private int price;

	public Cart() {
	}
	public Cart(int pattern_cd, int size_price_cd, boolean liner_flag, boolean hook_flg, int quantity, int price) {
		super();
		this.pattern_cd = pattern_cd;
		this.size_price_cd = size_price_cd;
		this.liner_flag = liner_flag;
		this.hook_flg = hook_flg;
		this.quantity = quantity;
		this.price = price;
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
	public boolean isLiner_flag() {
		return liner_flag;
	}
	public void setLiner_flag(boolean liner_flag) {
		this.liner_flag = liner_flag;
	}
	public boolean isHook_flg() {
		return hook_flg;
	}
	public void setHook_flg(boolean hook_flg) {
		this.hook_flg = hook_flg;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
}

