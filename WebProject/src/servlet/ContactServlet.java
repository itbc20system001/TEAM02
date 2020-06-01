package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Contact;
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
		HttpSession session = request.getSession();
//		ArrayList<Contact> contactList = (ArrayList<Contact>) session.getAttribute("contactList");
//		if (contactList == null) {
//			// nullなら新しく作る
//			contactList = new ArrayList<Contact>();
//		}

String name = request.getParameter("ctc_name");
String address = request.getParameter("ctc_address");
String contact = request.getParameter("contact");

session.setAttribute("ctc_name",name);
session.setAttribute("ctc_address",address);
session.setAttribute("contact",contact);


Contact ctc = new Contact(name, address, contact);
session.setAttribute("ctc", ctc);
//contactList.add(ctc);
//
//session.setAttribute("contactList", contactList);

RequestDispatcher dis = request.getRequestDispatcher("/WEB-INF/jsp/check_contact.jsp");
dis.forward(request, response);


	}
}
