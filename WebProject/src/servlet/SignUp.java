package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.SignUpLogic;
import model.User;

@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//フォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/signUp.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//入力情報を取得してuserに格納
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String user_nm = request.getParameter("user_nm");
		String address = request.getParameter("address");
		User user = new User(email,password,user_nm,address);
		String errorMsg = "";

		if(email.matches(".*@.*") == false) {
			errorMsg = "Emailアドレスを正しく入力してください。" ;
			request.setAttribute("errorMsg",errorMsg);
		}
		if(password.length()<8) {
			errorMsg = errorMsg + "パスワードは8文字以上で入力してください。";
			request.setAttribute("errorMsg",errorMsg);
		}
		if(user_nm == null || user_nm =="") {
			errorMsg =errorMsg + "氏名を入力してください。";
			request.setAttribute("errorMsg",errorMsg);
		}
		if(address==null || address=="" ) {
			errorMsg = errorMsg + "住所を入力してください。";
			request.setAttribute("errorMsg",errorMsg);
		}

		if(errorMsg == "" ) {
			//登録情報をデータベースに追加
			SignUpLogic signUpLogic = new SignUpLogic();
			signUpLogic.execute(user);

			//フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/signUpOK.jsp");
			dispatcher.forward(request, response);

		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/signUp.jsp");
			dispatcher.forward(request, response);
		}
	}

}
