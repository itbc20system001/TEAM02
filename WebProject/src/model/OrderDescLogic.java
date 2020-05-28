package model;

import java.util.List;

import dao.OrderDescDAO;


public class OrderDescLogic {

	public OrderDesc insert(OrderDesc orderDesc) {

		OrderDescDAO dao = new OrderDescDAO();
		return dao.create(orderDesc);

	}

	public List<OrderDesc> findByOrder_id(int orderId) {
		OrderDescDAO dao = new OrderDescDAO();
		List<OrderDesc> orderDescList = dao.findByOrder_id(orderId);

		return orderDescList;
	}

}



