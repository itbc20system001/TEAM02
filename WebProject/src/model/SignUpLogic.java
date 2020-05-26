package model;

import dao.UserDAO;

public class SignUpLogic {
	public void execute(User user) {
		UserDAO dao = new UserDAO();
		dao.create(user);
	}

}
