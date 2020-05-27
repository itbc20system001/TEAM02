package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public CartServlet() {


    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

				String hook = request.getParameter("hook");
				System.out.println(hook);

						RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Cart.jsp");
						dispatcher.forward(request, response);


	}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {








	}

}
