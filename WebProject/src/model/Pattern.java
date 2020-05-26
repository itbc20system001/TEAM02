package model;

import java.io.Serializable;

public class Pattern implements Serializable {
	int patternId;
	String patternName;	//柄の名前
	int color;	//色番号

	public Pattern() {
	}

	public Pattern(int patternId, String patternName, int color) {
		this.patternId = patternId;
		this.patternName = patternName;
		this.color = color;
	}

	public int getPatternId() {
		return patternId;
	}

	public void setPatternId(int patternId) {
		this.patternId = patternId;
	}

	public String getPatternName() {
		return patternName;
	}

	public void setPatternName(String patternName) {
		this.patternName = patternName;
	}

	public int getColor() {
		return color;
	}

	public void setColor(int color) {
		this.color = color;
	}


}
