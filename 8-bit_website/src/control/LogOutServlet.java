package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LogOutServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	 public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
		    try {
		    	
		    	System.out.println("Sto in logOut servlet");
		    		HttpSession session = request.getSession(true);
			        session.invalidate();
			        
			        response.sendRedirect("home2.jsp");
			        
		    } catch (Throwable theException) {
		      System.out.println(theException);
		    }
		  }
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
	}
}
