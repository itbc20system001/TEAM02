package model;

import java.io.Serializable;

public class Pattern implements Serializable {
	private int pattern_cd;//柄番号
	private String pattern_nm;//柄名
	private String pattern_detail;//柄の説明
	private String pattern_img;//柄のURL


	public Pattern() {
	}

	public Pattern(int pattern_cd, String pattern_nm, String pattern_detail, String pattern_img) {
		this.pattern_cd = pattern_cd;
		this.pattern_nm = pattern_nm;
		this.pattern_detail = pattern_detail;
		this.pattern_img = pattern_img;
	}

	public int getPattern_cd() {
		return pattern_cd;
	}

	public void setPattern_cd(int pattern_cd) {
		this.pattern_cd = pattern_cd;
	}

	public String getPattern_nm() {
		return pattern_nm;
	}

	public void setPattern_nm(String pattern_nm) {
		this.pattern_nm = pattern_nm;
	}

	public String getPattern_detail() {
		return pattern_detail;
	}

	public void setPattern_detail(String pattern_detail) {
		this.pattern_detail = pattern_detail;
	}

	public String getPattern_img() {
		return pattern_img;
	}

	public void setPattern_img(String pattern_img) {
		this.pattern_img = pattern_img;
	}



}
