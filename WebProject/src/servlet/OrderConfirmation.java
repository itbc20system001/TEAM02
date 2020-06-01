package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cart;
import model.OrderDesc;
import model.OrderDescLogic;
import model.OrderId;
import model.OrderMainLogic;
import model.User;

@WebServlet("/OrderConfirmation")
public class OrderConfirmation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//リストから値を取得
		HttpSession session = request.getSession();
		User loginUsr = (User) session.getAttribute("user");
		int totalPrice = (Integer) session.getAttribute("totalPrice");
		ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList");

		//ロジックからDAOを呼び出し、値を格納
		OrderId orderId = new OrderId();
		OrderMainLogic mainLogic = new OrderMainLogic();
		orderId = mainLogic.insert(loginUsr ,totalPrice);

		OrderDescLogic descLogic = new OrderDescLogic();
		for(Cart cart:cartList) {
			int pattern_cd = cart.getPattern_cd();
			int size_price_cd = cart.getSize_price_cd();
			boolean liner_flg = cart.isLiner_flag();
			boolean hook_flg = cart.isHook_flg();
			int quantity = cart.getQuantity();
			int price = cart.getPrice();

			OrderDesc orderDesc = new OrderDesc(orderId.getOrder_id(), quantity, pattern_cd, size_price_cd, price, liner_flg, hook_flg);
			orderDesc = descLogic.insert(orderDesc);

		}
		session.removeAttribute("cartList");


		//ログインしていればフォワード、していなければログインページにリダイレクト
		if (loginUsr!=null) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/OrderConfirmation.jsp");
		dispatcher.forward(request, response);
		} else  {
			response.sendRedirect("/rideau/Login");

		}
	}

}

