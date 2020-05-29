package model;

import java.util.List;

import dao.Order_mainDAO;

public class OrderMainLogic {

	public OrderId insert(User user, int total) {

		Order_mainDAO dao = new Order_mainDAO();
		OrderId orderId = new OrderId();
		return dao.create(user,total,orderId);

	}

	public List<OrderMain> findByUserId(User user) {
		Order_mainDAO dao = new Order_mainDAO();
		List<OrderMain> orderMainList = dao.findByUserId(user);

		return orderMainList;
	}

}
