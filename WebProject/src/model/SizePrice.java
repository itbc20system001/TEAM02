package model;

import java.io.Serializable;

public class SizePrice implements Serializable{
	private int size_price_cd;
	private int height;
	private int width;
	private int price;

	public SizePrice() {
	}

	public SizePrice(int size_price_cd, int height, int width, int price) {
		this.size_price_cd = size_price_cd;
		this.height = height;
		this.width = width;
		this.price = price;
	}

	public int getSize_price_cd() {
		return size_price_cd;
	}

	public void setSize_price_cd(int size_price_cd) {
		this.size_price_cd = size_price_cd;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}


}
