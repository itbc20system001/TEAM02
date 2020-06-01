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
import model.GetPatternListLogic;
import model.Pattern;
import model.SizePrice;
import model.User;
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

		//柄の画像表示
		GetPatternListLogic patternLogic = new GetPatternListLogic();
		List<Pattern> patternList = new ArrayList<Pattern>();

		for(Cart cart:cartList){
			Pattern p = patternLogic.getPattern(cart.getPattern_cd());
			patternList.add(p);
		}
		session.setAttribute("patternList", patternList);


		//ログインしていればフォワード、していなければログインページにリダイレクト
		User loginUsr = (User) session.getAttribute("user");
		if (loginUsr!=null) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Order.jsp");
		dispatcher.forward(request, response);
		} else  {
			response.sendRedirect("/rideau/Login");

	}
	}
}
