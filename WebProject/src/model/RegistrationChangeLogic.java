package model;

import dao.UserDAO;

public class RegistrationChangeLogic {

	public void emailChange(int user_id,String email) {
		UserDAO dao = new UserDAO();
		dao.changeEmail(user_id,email);

	}

	public void passChange(int user_id,String password) {
		UserDAO dao = new UserDAO();
		dao.changePass(user_id,password);

	}

	public void nameChange(int user_id,String user_nm) {
		UserDAO dao = new UserDAO();
		dao.changeName(user_id,user_nm);

	}

	public void addressChange(int user_id,String address) {
		UserDAO dao = new UserDAO();
		dao.changeAddress(user_id,address);

	}

}
