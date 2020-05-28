package model;

import dao.Size_PriceDAO;

public class getSizePriceLogic {
	public SizePrice execute(int size_price_cd) {
		Size_PriceDAO dao=new Size_PriceDAO();
		SizePrice sp=new SizePrice();
		sp=dao.find_Bycd(size_price_cd);
		return sp;
	}
}
