package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cart;


@WebServlet("/CartCancel")
public class CartCancel extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public CartCancel() {

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {




	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList");// セッションからリストを取得してくる

		String[] cancel = request.getParameterValues("cancel");

		int i = 0;
		Iterator<Cart> it = cartList.iterator();
        while(it.hasNext()){
            it.next();
            for(String can : cancel) {
            	if(Integer.parseInt(can) == i) {
            		it.remove();
            	}
            }
            i++;
        }


		RequestDispatcher dis = request.getRequestDispatcher("/WEB-INF/jsp/CartCancel.jsp");
		dis.forward(request, response);

	}

}
