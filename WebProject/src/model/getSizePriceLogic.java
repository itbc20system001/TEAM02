package model;

import java.util.ArrayList;
import java.util.List;

import dao.Size_PriceDAO;

public class getSizePriceLogic {
	public SizePrice execute(int size_price_cd) {
		Size_PriceDAO dao=new Size_PriceDAO();
		SizePrice sp=new SizePrice();
		sp=dao.find_Bycd(size_price_cd);
		return sp;
	}

	public List<SizePrice> find_all(){
		Size_PriceDAO dao=new Size_PriceDAO();
		List<SizePrice> size_priceList=new ArrayList<SizePrice>();
		size_priceList=dao.findAll();
		return size_priceList;
	}

}
