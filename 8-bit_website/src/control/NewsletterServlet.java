package control;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.NewsletterBean;
import model.NewsletterDAO;


@WebServlet("/newsletter")
public class NewsletterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public NewsletterServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
		String email = request.getParameter("email_news");
		
		NewsletterBean bean = new NewsletterBean();
		
		bean.setEmail(email);

		NewsletterDAO.insertEmail(bean);
			
		if(bean.isValid()){
			 HttpSession session = request.getSession(true);
			 session.setAttribute("flagNewEmail", true);
			response.sendRedirect("newsletter.jsp"); 
			
			
		} else {
			 HttpSession session = request.getSession(true);
			 session.setAttribute("flagNotNewEmail", true);
			response.sendRedirect("newsletter.jsp"); 
		}
			
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
