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
import model.User;


@WebServlet("/Creditcard")
public class Creditcard extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		User loginUsr = (User) session.getAttribute("user");
		ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList");

		if (loginUsr!=null) {
			if (cartList == null || cartList.size() == 0) {
				response.sendRedirect("/rideau/Cart");
			}else {
				RequestDispatcher dis = request.getRequestDispatcher("/WEB-INF/jsp/Creditcard.jsp");
				dis.forward(request, response);

			}

		} else  {
			response.sendRedirect("/rideau/Login");

		}

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		doGet(request, response);
	}

}
