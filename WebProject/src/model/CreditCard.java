package model;

import java.io.Serializable;

public class CreditCard implements Serializable {
	private String creditCard;

	public String getCreditCard() {
		return creditCard;
	}

	public void setCreditCard(String creditCard) {
		this.creditCard = creditCard;
	}

	public CreditCard(String creditCard) {
		super();
		this.creditCard = creditCard;
	}


}
