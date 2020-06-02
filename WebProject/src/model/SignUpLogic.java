package model;

import dao.UserDAO;

public class SignUpLogic {
	public void execute(User user) {
		UserDAO dao = new UserDAO();
		dao.create(user);
	}

	public boolean FindBySameName(String email) {
		UserDAO dao = new UserDAO();
		return dao.findBySameEmail(email);
	}

}
