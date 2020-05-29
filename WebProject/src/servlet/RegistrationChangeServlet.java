package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.RegistrationChangeLogic;
import model.User;

@WebServlet("/RegistrationChange")
public class RegistrationChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//入力情報を取得してuserに格納
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("emailChange");
		String password = request.getParameter("passwordChange");
		String user_nm = request.getParameter("user_nmChange");
		String address = request.getParameter("addressChange");
		String errorMsg = "";

		if(email != ""  && email.matches(".*@.*") == false) {
			errorMsg = "変更後のEmailアドレスを正しく入力してください。" ;
		}
		if(password != ""  && password.length()<=8) {
			errorMsg = errorMsg + "変更後のパスワードは8文字以上で入力してください。";
		}
		if(email == ""  &&  password == "" && user_nm == ""&& address == "") {
			errorMsg = errorMsg + "変更内容を入力してください。";
		}

		request.setAttribute("errorMsg",errorMsg);

		if(errorMsg == "" ) {
			//登録情報の変更をデータベースに登録
			RegistrationChangeLogic rcl = new RegistrationChangeLogic();
			if(email != "") {
				rcl.emailChange(user.getUser_id(), email);
				user.setEmail(email);
			}
			if(password != "") {
				rcl.passChange(user.getUser_id(), password);
				user.setPassword(password);
			}
			if(user_nm != "") {
				rcl.nameChange(user.getUser_id(), user_nm);
				user.setUser_nm(user_nm);
			}
			if(address != "") {
				rcl.addressChange(user.getUser_id(), address);
				user.setAddress(address);
			}

			//フォワード
			session.setAttribute("user",user );
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/RegistrationChangeOK.jsp");
			dispatcher.forward(request, response);

		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/RegistrationChange.jsp");
			dispatcher.forward(request, response);
		}

	}

}
