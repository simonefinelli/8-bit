package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Carrello;
import model.GiocoBean;


@WebServlet("/RimuoviCarrelloServlet")
public class RimuoviCarrelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RimuoviCarrelloServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		GiocoBean g = new GiocoBean();
		g.setTitolo(request.getParameter("gioco"));
		
		Carrello cart = (Carrello)request.getSession().getAttribute("Cart");
		cart.remove(g);
		
		request.getSession().removeAttribute("Cart");
		request.getSession().setAttribute("Cart", cart);
		response.sendRedirect("carrello.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
