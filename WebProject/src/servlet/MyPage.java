package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyPage")
public class MyPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//フォワード先
		String forwardPath = null;

		//サーブレットクラスの動作を決定する「action」の値を
		//リクエストパラメーターから取得
		String action = request.getParameter("action");

		//フォワード先の設定
		if(action == null) {
			forwardPath = "/WEB-INF/jsp/myPage.jsp";
		} else if(action.equals("change")) {
			forwardPath = "/WEB-INF/jsp/RegistrationChange.jsp";
		} else if(action.equals("review")) {
			forwardPath = "/WEB-INF/jsp/review.jsp";
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardPath);
		dispatcher.forward(request, response);
	}

}
