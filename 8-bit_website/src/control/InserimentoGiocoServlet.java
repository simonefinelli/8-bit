package control;

import model.*;

import java.text.DecimalFormat;

import javax.servlet.ServletException; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
import javax.servlet.http.HttpSession;

public class InserimentoGiocoServlet extends HttpServlet {
	private static final long serialVersionUID = 8831181235830936628L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException { 
		
		try {
			GiocoBean gioco = new GiocoBean(); 
			
			
			gioco.setTitolo(request.getParameter("titolo_gioco"));
			
			
			gioco.setPrezzo(Double.parseDouble(request.getParameter("prezzo_gioco")));
			
			
			if(request.getParameter("inSconto_gioco") != null){
				
			gioco.setInSconto(request.getParameter("inSconto_gioco"));
			
			System.out.println("Valore inSconto" + request.getParameter("inSconto_gioco"));
			
			if(gioco.getInSconto().equals("true")) {
				
				int perc = Integer.parseInt(request.getParameter("prezzo_gioco_sconto"));
				Double prezzoScont = gioco.getPrezzo()-(gioco.getPrezzo()*perc/100);
				gioco.setPrezzoScontato(Double.parseDouble(new DecimalFormat("#.##").format(prezzoScont)));
				
			} else {
				
				gioco.setInSconto("false");
			}
			
			} else { 
				
				gioco.setInSconto("false");
				
			}
			
			
			
			gioco.setAnno(request.getParameter("anno_gioco"));
			
			
			gioco.setConsole(request.getParameter("console_combo"));
			
			
			gioco.setSoftwarehouse(request.getParameter("sh_combo"));
			
			gioco.setGenere(request.getParameter("genere_gioco"));
			
			String immagine = request.getParameter("url_image");
			gioco.setURL(immagine);
			
			String immagine1 = request.getParameter("url_image1");
			gioco.setURL1(immagine1);
			
			String immagine2 = request.getParameter("url_image2");
			gioco.setURL2(immagine2);
			
			String immagine3 = request.getParameter("url_image3");
			gioco.setURL3(immagine3);
			
			String video = request.getParameter("video_gioco");
			gioco.setURLVideo(video);
			
			
			gioco.setDescrizione(request.getParameter("descrizione_gioco"));
			

			gioco = GiocoDAO.register(gioco); 
			
		
			if (gioco.isValid()) { 
				HttpSession session = request.getSession(true); 
				session.setAttribute("currentSessiongioco", gioco);   
		    	  session.setAttribute("controlloAdminInserimento", false);
		    	  
				response.sendRedirect("admin.jsp"); 
				
			} else { 
				

				gioco = GiocoDAO.updateGame(gioco); 
				
			
				if (gioco.isValid()) { 
					HttpSession session = request.getSession(true); 
					session.setAttribute("currentSessiongioco", gioco);   
			    	  session.setAttribute("controlloAdminInserimento", false);
			    	  
			    	  response.sendRedirect("admin.jsp");
			    	  
				} else {
				
	
					response.sendRedirect("admin.jsp");
				}
				
			}
			
		}
			catch (Throwable theException) { System.out.println(theException); } 
		}	

}
