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
import model.SizePrice;
import model.getSizePriceLogic;


@WebServlet("/Cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public CartServlet() {


    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Cart.jsp");
		dispatcher.forward(request, response);


	}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//セッションスコープから取得
    	HttpSession session = request.getSession();
    	//リスト作成
    	ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList");
		if (cartList == null) {
			// nullなら新しく作る
			cartList = new ArrayList<Cart>();
		}
    	int hook = Integer.parseInt(request.getParameter("hook"));
		int cloth = Integer.parseInt(request.getParameter("cloth"));
		int size = Integer.parseInt(request.getParameter("size"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int  pattern = Integer.parseInt(request.getParameter("pattern"));

		getSizePriceLogic sizePriceLogic = new getSizePriceLogic();
		SizePrice sp = sizePriceLogic.execute(size);
		int price = sp.getPrice();

		//System.out.println(quantity);

		boolean hook_flg;
		if(hook==0){
		hook_flg=true;
		}else{
		hook_flg=false;
		}

		boolean cloth_flg;
		if(cloth==0){
		cloth_flg=true;
		}else{
		cloth_flg=false;
		}


        //コンストラクタに入れる
		Cart c = new Cart(pattern, size, cloth_flg, hook_flg, quantity, price);
		cartList.add(c);
        //セッションスコープにリストを入れる
		session.setAttribute("cartList", cartList);

				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Cart.jsp");
				dispatcher.forward(request, response);









	}

}
