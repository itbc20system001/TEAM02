package model;

import java.util.List;

import dao.OrderDescDAO;


public class OrderDescLogic {

//	public OrderDesc insert(OrderDesc orderDesc) {
//
//		OrderDesc dao = new OrderDesc();
//		return dao.create(orderDesc);
//
//	}

	public List<OrderDesc> findByOrder_id(OrderMain orderMain) {
		OrderDescDAO dao = new OrderDescDAO();
		List<OrderDesc> orderDescList = dao.findByOrder_id(orderMain.getOrder_id());

		return orderDescList;
	}

}



