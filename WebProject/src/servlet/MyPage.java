package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.OrderDesc;
import model.OrderDescLogic;
import model.OrderMain;
import model.OrderMainLogic;
import model.User;

@WebServlet("/MyPage")
public class MyPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ログイン情報を取得。取得できない場合はログイン画面に飛ばす処理を難化上手く書く
		//ダミー（リダイレクトを使う）
		//HttpSession s = request.getSession();
		//s.setAttribute("loginUsr", new User(1, "11", "11", "11", "11"));
		//User u = (User)s.getAttribute("loginUsr");

		HttpSession session=request.getSession();
		User loginUsr = (User) session.getAttribute("user");

		if(loginUsr==null) {
			response.sendRedirect("/rideau/Login");
		} else {
			OrderMainLogic orderMainLogic = new OrderMainLogic();
			List<OrderMain> orderMainList=orderMainLogic.findByUserId(loginUsr);

			if(orderMainList !=null){
				request.setAttribute("orderMainList",orderMainList);
			}

			String id = request.getParameter("orderId");
			if(id!=null) {
				OrderDescLogic orderDescLogic = new OrderDescLogic();
				List<OrderDesc> orderDescList = orderDescLogic.findByOrder_id(Integer.parseInt(id));
				request.setAttribute("orderDescList", orderDescList);
			}


			//フォワード先
			String forwardPath = null;

			//サーブレットクラスの動作を決定する「action」の値を
			//リクエストパラメーターから取得
			String action = request.getParameter("action");

			//フォワード先の設定
			if(action == null) {
				forwardPath = "/WEB-INF/jsp/myPage.jsp";
			} else if(action.equals("detail")) {
				forwardPath = "/WEB-INF/jsp/myPage_detail.jsp";
			} else if(action.equals("change")) {
				forwardPath = "/WEB-INF/jsp/RegistrationChange.jsp";
			} else if(action.equals("review")) {
				forwardPath = "/WEB-INF/jsp/review.jsp";
			}

			//request.setAttribute()でデータベースの情報を取得するロジックを作成
//			int uId = u.getUser_id();
			// Order_mainDAO からユーザーidで検索をする
			//request.setAttribute()にセットする


			RequestDispatcher dispatcher = request.getRequestDispatcher(forwardPath);
			dispatcher.forward(request, response);
		}

	}
}