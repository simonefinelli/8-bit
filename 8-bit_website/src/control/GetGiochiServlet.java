package control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Carrello;
import model.GiocoBean;
import model.GiocoDAO;


@WebServlet("/getGiochi")
public class GetGiochiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public GetGiochiServlet() {
		super();

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			
			System.out.println("Sto in getGiochiServlet...");

			ArrayList<GiocoBean> lista = GiocoDAO.getItems();

			HttpSession session = request.getSession();
			session.setAttribute("listaGiochi", lista);

			if(session.getAttribute("Cart")==null){
				Carrello cart = new Carrello();
				session.setAttribute("Cart", cart);
				System.out.println("In getGiochiServlet" + cart);
			}

			
			response.sendRedirect("home2.jsp");


		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
