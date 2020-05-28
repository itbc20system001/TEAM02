package model;

import java.util.List;

import dao.Order_mainDAO;

public class OrderMainLogic {

	public OrderMain insert(OrderMain orderMain) {

		Order_mainDAO dao = new Order_mainDAO();
		return dao.create(orderMain);

	}

	public List<OrderMain> findAllByUserId(User loginUsr) {
		Order_mainDAO dao = new Order_mainDAO();
		List<OrderMain> orderMainList = dao.findByUserId(loginUsr);

		return orderMainList;
	}

}
