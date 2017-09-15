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


import model.CollocamentoBean;
import model.CollocamentoDAO;



@WebServlet("/GetItemsCollocamento")
public class GetItemsCollocamentoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public GetItemsCollocamentoServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Sto in getGiochiServlet...");

		ArrayList<CollocamentoBean> lista;
		
		try {
			
			
			lista = CollocamentoDAO.collocamentoGetItems();
			
			
			HttpSession session = request.getSession();
			session.setAttribute("listaGiochiCollocamento", lista);

			

			
			response.sendRedirect("home2.jsp");
			
			
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException
				| NamingException e) {
			
			e.printStackTrace();
		}

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
