package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Carrello;
import model.GiocoBean;


@WebServlet("/AggiornaCarrelloServlet")
public class AggiornaCarrelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AggiornaCarrelloServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Sto in AggiornaCarrelloServlet!");
		
		String titolo= request.getParameter("gioco");
		int qnt = Integer.parseInt(request.getParameter("qnt"));
		
		GiocoBean g = new GiocoBean();
		g.setTitolo(titolo);
		g.setQuantita(qnt);
		
		Carrello cart = (Carrello)request.getSession().getAttribute("Cart");
		cart.updateQ(g);
		
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
