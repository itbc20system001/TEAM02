package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;


@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		User loginUsr = (User) session.getAttribute("user");

		if (loginUsr!=null) {
			RequestDispatcher dis = request.getRequestDispatcher("/WEB-INF/jsp/contactLogin.jsp");
			dis.forward(request, response);
		} else  {
			RequestDispatcher dis = request.getRequestDispatcher("/WEB-INF/jsp/contact.jsp");
			dis.forward(request, response);

		}

	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
