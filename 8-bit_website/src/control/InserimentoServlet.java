package control;

import model.*;

import java.util.ArrayList;

import javax.servlet.ServletException; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
import javax.servlet.http.HttpSession;

public class InserimentoServlet extends HttpServlet {
  
  private static final long serialVersionUID = 8831181235830936628L;

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException { 
    try {
      ClienteBean cliente = new ClienteBean(); 
      cliente.setNickname(request.getParameter("id_nickname"));
      cliente.setPassword(request.getParameter("id_password"));
      cliente.setEmail(request.getParameter("id_email"));
      cliente = ClienteDAO.register(cliente); 
      
      
      if (cliente.isValid()) { 
    	  
    	  HttpSession session = request.getSession(true);
	        session.setAttribute("currentSessionUser", cliente);

        
        ArrayList<FatturaBean> lista = FatturaDAO.getItemsFattura(cliente.getNickname());
		session.setAttribute("listaFatture", lista);
		
		
		ArrayList<GiocoBean> listaGiochiLib = GiocoDAO.getGiochiLib(cliente.getNickname());
		session.setAttribute("listaGiochiLib", listaGiochiLib);
		
		 session.setAttribute("flagBenvenuto", true);
		
		session.setMaxInactiveInterval(54000);
        
        response.sendRedirect("areaUtente.jsp"); 
      } 
      else { 
    	  HttpSession session = request.getSession(true);
      	  
    	  session.setAttribute("controlloInserimentoUtente", false);
    	  response.sendRedirect("inserimento.jsp");
    	  
      }
      
    }
    	catch (Throwable theException) { 
    		
      	
    		System.out.println(theException); 
    		} 
    }  

}