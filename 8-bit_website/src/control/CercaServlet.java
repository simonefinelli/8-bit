package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.GiocoBean;

/**
 * Servlet implementation class CercaServlet
 */
@WebServlet("/Cerca")
public class CercaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CercaServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		GiocoBean g = new GiocoBean(); 
		
		String titolo = request.getParameter("name_searchText");
		
		HttpSession session = request.getSession(true); 
		ArrayList<GiocoBean> lista = (ArrayList<GiocoBean>)session.getAttribute("listaGiochi");;
		
		g.setTitolo(titolo.trim());
		
		System.out.println("il titolo è" + lista);
		
		if(lista.contains(g)){
			
			System.out.println("sto nell 'if");
			g= lista.get(lista.indexOf(g));
			
			if(g.getInVendita().equals("true")){
				
				request.setAttribute("GiocoDettagli",g);
				RequestDispatcher dis = getServletContext().getRequestDispatcher("/dettagliProdotto.jsp");
				dis.forward(request, response);
				
			} else {
				System.out.println("sto nell else");
				RequestDispatcher dis = getServletContext().getRequestDispatcher("/store.jsp");
				dis.forward(request, response);
			}
			
			
			
		} else {
			System.out.println("sto nell else ultimo");
			RequestDispatcher dis = getServletContext().getRequestDispatcher("/store.jsp");
			dis.forward(request, response);
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
