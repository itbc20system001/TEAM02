package model;

import java.util.List;

import dao.Order_mainDAO;

public class OrderMainLogic {

	public OrderMain insert(OrderMain orderMain) {

		Order_mainDAO dao = new Order_mainDAO();
		return dao.create(orderMain);

	}

	public List<OrderMain> findByUserId(User user) {
		Order_mainDAO dao = new Order_mainDAO();
		List<OrderMain> orderMainList = dao.findByUserId(user);

		return orderMainList;
	}

}
