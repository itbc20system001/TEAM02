package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CreditCard;

@WebServlet("/Order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//リクエストパラメータ
		request.setCharacterEncoding("UTF-8");
		String creditCard = request.getParameter("creditCard");


		//リクエストスコープ(カード番号のみ取得)
		CreditCard cardNumber = new CreditCard(creditCard);
		request.setAttribute("creditCard", cardNumber);

		//Httpセッションインスタンスの取得
		HttpSession session = request.getSession();





		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Order.jsp");
		dispatcher.forward(request, response);

	}

}
