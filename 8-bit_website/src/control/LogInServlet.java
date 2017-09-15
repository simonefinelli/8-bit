package control;


import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.*;

public class LogInServlet extends HttpServlet {
  private static final long serialVersionUID = 4065176428905113249L;

  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
    try {
    	
    	
      ClienteBean user = new ClienteBean();
      user.setNickname(request.getParameter("nickname"));
      user.setPassword(request.getParameter("psw"));
      user = ClienteDAO.login(user);

      if (user.isValid()) {
    	  
    	if(user.getNickname().equals("admin"))
    	{
    		
    		HttpSession session = request.getSession(true);
	        session.setAttribute("currentSessionUser", user);
	       
	        session.setMaxInactiveInterval(54000);
	        response.sendRedirect("admin.jsp");
    		
    	} else {
    		
	        HttpSession session = request.getSession(true);
	        session.setAttribute("currentSessionUser", user);
	        
	        
			ArrayList<FatturaBean> lista = FatturaDAO.getItemsFattura(user.getNickname());
			session.setAttribute("listaFatture", lista);
			
			
			ArrayList<GiocoBean> listaGiochiLib = GiocoDAO.getGiochiLib(user.getNickname());
			session.setAttribute("listaGiochiLib", listaGiochiLib);
			
			session.setAttribute("flagBenvenuto", true);
			
			session.setMaxInactiveInterval(54000);
	        response.sendRedirect("areaUtente.jsp");
    	}
    	
      } else {
    	 
    	  HttpSession session = request.getSession(true);
    	  
    	  session.setAttribute("controlloLogIn", false);
    	  
    	  response.sendRedirect("logIn_SignIn.jsp");
      
      }
      
    } catch (Throwable theException) {
      System.out.println(theException);
    }
  }

}