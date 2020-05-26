package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Shop")
public class Shop extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//何色を選んだか取得
		String color = request.getParameter("color");
		String fowardPath = null;
		if (color == null) {
			fowardPath = "/WEB-INF/jsp/colorSelect.jsp";
		} else {
			request.setAttribute("color", color);
			fowardPath = "/WEB-INF/jsp/patternSelect.jsp";
		}
		System.out.println(color);

		//フォワード
		RequestDispatcher dis = request.getRequestDispatcher(fowardPath);
		dis.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
