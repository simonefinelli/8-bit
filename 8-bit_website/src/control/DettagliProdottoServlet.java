package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GiocoBean;


@WebServlet("/DettagliProdotto")
public class DettagliProdottoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DettagliProdottoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String titolo = request.getParameter("titolo");
			
			GiocoBean g = new GiocoBean();
			g.setTitolo(titolo);
			
			
			
				@SuppressWarnings("unchecked")
				ArrayList<GiocoBean> listaGiochi = (ArrayList<GiocoBean>) request.getSession().getAttribute("listaGiochi");
				
				g= listaGiochi.get(listaGiochi.indexOf(g));
				
				request.setAttribute("GiocoDettagli",g);
				RequestDispatcher dis = getServletContext().getRequestDispatcher("/dettagliProdotto.jsp");
				dis.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
