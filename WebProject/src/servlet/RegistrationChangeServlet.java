package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegistrationChange")
public class RegistrationChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//入力情報を取得してuserに格納
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("emailChange");
		String password = request.getParameter("passwordChange");
		String user_nm = request.getParameter("user_nmChange");
		String address = request.getParameter("addressChange");
		//User user = new User(email,password,user_nm,address);
		String errorMsg = "";

		if(email != ""  && email.matches(".*@.*") == false) {
			errorMsg = "変更後のEmailアドレスを正しく入力してください。" ;
			request.setAttribute("errorMsg",errorMsg);
		}
		if(password != ""  && password.length()<=8) {
			errorMsg = errorMsg + "変更後のパスワードは8文字以上で入力してください。";
			request.setAttribute("errorMsg",errorMsg);
		}


		if(errorMsg == "" ) {
			//登録情報の変更をデータベースに登録
			//SignUpLogic signUpLogic = new SignUpLogic();
			//signUpLogic.execute(user);

			//フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/RegistrationChangeOK.jsp");
			dispatcher.forward(request, response);

		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/RegistrationChange.jsp");
			dispatcher.forward(request, response);
		}

	}

}
