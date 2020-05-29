package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cart;
import model.CreditCard;
import model.SizePrice;
import model.getSizePriceLogic;

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




		//合計金額表示用
		int totalPrice = 0;
		ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList");

		List<SizePrice> sizePriceList = new ArrayList<SizePrice>();
		getSizePriceLogic getSPL = new getSizePriceLogic();

		for(Cart cart:cartList){
			SizePrice sp = new SizePrice();
			sp = getSPL.execute(cart.getSize_price_cd());
			sizePriceList.add(sp);

		}
		request.setAttribute("sizePriceList", sizePriceList);

		for (Cart cart : cartList) {
			totalPrice+=(cart.getPrice()*cart.getQuantity());
		}
		session.setAttribute("totalPrice", totalPrice);




		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Order.jsp");
		dispatcher.forward(request, response);

	}

}
