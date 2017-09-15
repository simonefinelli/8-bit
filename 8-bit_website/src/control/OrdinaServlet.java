package control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.GiocoBean;
import model.GiocoDAO;

@WebServlet("/OrdinaServlet")
public class OrdinaServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public OrdinaServlet() {

		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//try {

			@SuppressWarnings("unchecked")
			ArrayList<GiocoBean> lista= (ArrayList<GiocoBean>) request.getSession().getAttribute("listaGiochi");

			if(request.getParameter("anno")!=null){
				
				Collections.sort(lista, new Comparator<GiocoBean>() {
			        @Override
			        public int compare(GiocoBean GiocoBean2, GiocoBean GiocoBean1)
			        {

			            return  GiocoBean2.getAnno().compareTo(GiocoBean1.getAnno());
			        }
			    });
				//lista = GiocoDAO.getItemsByYear();

			}

			else if(request.getParameter("minore5")!=null){

				Collections.sort(lista, new Comparator<GiocoBean>() {
			        @Override
			        public int compare(GiocoBean GiocoBean2, GiocoBean GiocoBean1)
			        {
			        	String inSconto2 = GiocoBean2.getInSconto();
			        	String inSconto1 = GiocoBean1.getInSconto();
			        	
			        	if(inSconto2.equals("true")) {
			        		
			        		if(inSconto1.equals("true")){
			        			
			        			return  (""+GiocoBean2.getPrezzoScontato()).compareTo(""+GiocoBean1.getPrezzoScontato());
			        			
			        		} else {
			        			
			        			return  (""+GiocoBean2.getPrezzoScontato()).compareTo(""+GiocoBean1.getPrezzo());
			        		}
			        		
			        	} else if(inSconto1.equals("true")) {
			        	
			        			return  (""+GiocoBean2.getPrezzo()).compareTo(""+GiocoBean1.getPrezzoScontato());
			        			
			        	} else {

			        		return  (""+GiocoBean2.getPrezzo()).compareTo(""+GiocoBean1.getPrezzo());}

			            
			        }
			    });
				//lista = GiocoDAO.getItemsByYear();

			}

			else if(request.getParameter("maggiore5")!=null){

				Collections.sort(lista, new Comparator<GiocoBean>() {
					
			        @Override
			        public int compare(GiocoBean GiocoBean2, GiocoBean GiocoBean1)
			        {
			        	String inSconto2 = GiocoBean2.getInSconto();
			        	String inSconto1 = GiocoBean1.getInSconto();
			        	
			        	if(inSconto2.equals("true")) {
			        		
			        		if(inSconto1.equals("true")){
			        			
			        			return  (""+GiocoBean1.getPrezzoScontato()).compareTo(""+GiocoBean2.getPrezzoScontato());
			        			
			        		} else {
			        			
			        			return  (""+GiocoBean1.getPrezzo()).compareTo(""+GiocoBean2.getPrezzoScontato());
			        		}
			        		
			        	} else if(inSconto1.equals("true")) {
			        		
			        		
			        			
			        			return  (""+GiocoBean1.getPrezzoScontato()).compareTo(""+GiocoBean2.getPrezzo());
			        			
			        	} else {

			        		return  (""+GiocoBean1.getPrezzo()).compareTo(""+GiocoBean2.getPrezzo());}
			        }
			    });
				//lista = GiocoDAO.getItemsByYear();

			}
			else {

				Collections.sort(lista, new Comparator<GiocoBean>() {
			        @Override
			        public int compare(GiocoBean GiocoBean2, GiocoBean GiocoBean1)
			        {

			            return  GiocoBean2.getTitolo().compareTo(GiocoBean1.getTitolo());
			        }
			    });
				//lista = GiocoDAO.getItems();

			}

			HttpSession session = request.getSession();
			session.removeAttribute("listaGiochi");
			session.setAttribute("listaGiochi", lista);
			response.sendRedirect("store.jsp");
			

		/*} catch (InstantiationException e) {

			e.printStackTrace();

		} catch (IllegalAccessException e) {

			e.printStackTrace();

		} catch (ClassNotFoundException e) {

			e.printStackTrace();

		} catch (SQLException e) {

			e.printStackTrace();

		} catch (NamingException e) {

			e.printStackTrace();

		}*/


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);

	}

}
