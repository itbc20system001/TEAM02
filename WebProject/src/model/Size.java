package model;

import java.io.Serializable;

public class Size implements Serializable{
	int sizeId;
	int height;
	int width;
	int price;

	public Size() {
	}

	public Size(int sizeId, int height, int width, int price) {
		this.sizeId = sizeId;
		this.height = height;
		this.width = width;
		this.price = price;
	}

	public int getSizeId() {
		return sizeId;
	}

	public void setSizeId(int sizeId) {
		this.sizeId = sizeId;
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
