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

import model.Carrello;
import model.GiocoBean;
import model.GiocoDAO;

/**
 * Servlet implementation class CarrelloServlet
 */
@WebServlet("/CarrelloServlet")
public class CarrelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    public CarrelloServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Sto in CarrelloServlet");
		
		Carrello cart=(Carrello) request.getSession().getAttribute("Cart");
		
		String titolo = request.getParameter("titolo");
		int qnt = Integer.parseInt(request.getParameter("qnt"));
		
		
		
		GiocoBean g = new GiocoBean();
		g.setTitolo(titolo);
		
		try {
			ArrayList<GiocoBean> listaGiochi = GiocoDAO.getItems();
			g= listaGiochi.get(listaGiochi.indexOf(g));
			g.setQuantita(qnt);
			cart.add(g);
			
			request.getSession().removeAttribute("Cart");
			request.getSession().setAttribute("Cart",cart);
			
			response.sendRedirect("carrello.jsp");
			
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
		catch(java.lang.ArrayIndexOutOfBoundsException e){
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
