package model;

import java.io.Serializable;

public class Curtain implements Serializable{
	int curtainId;
	int height;		//入力値
	int width;
	int clothType;		//0:あり 1:なし
	int hookType;

	public Curtain() {
	}

	public Curtain(int curtainId, int height, int width, int clothType, int hookType) {
		this.curtainId = curtainId;
		this.height = height;
		this.width = width;
		this.clothType = clothType;
		this.hookType = hookType;
	}

	public int getCurtainId() {
		return curtainId;
	}

	public void setCurtainId(int curtainId) {
		this.curtainId = curtainId;
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

	public int getClothType() {
		return clothType;
	}

	public void setClothType(int clothType) {
		this.clothType = clothType;
	}

	public int getHookType() {
		return hookType;
	}

	public void setHookType(int hookType) {
		this.hookType = hookType;
	}


}
