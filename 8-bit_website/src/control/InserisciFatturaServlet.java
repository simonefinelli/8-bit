package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Carrello;
import model.CollocamentoBean;
import model.CollocamentoDAO;
import model.FatturaBean;
import model.FatturaDAO;
import model.GiocoBean;
import model.GiocoDAO;
import model.KeysBean;
import model.KeysDAO;



@WebServlet("/InserisciFattura")
public class InserisciFatturaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public InserisciFatturaServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
		
			FatturaBean fatt = new FatturaBean(); 
			CollocamentoBean coll = new CollocamentoBean();
			KeysBean keysBean = new KeysBean();
			
			Calendar cal = Calendar.getInstance();
			cal.getTime().toString();
			fatt.setDataAcquisto(cal.getTime().toString());
			
			
			fatt.setTotaleFattura(Double.parseDouble(request.getParameter("totale_per_fattura1")));
			
			String nick = request.getParameter("nick_per_fattura");
			String carta = request.getParameter("tipoCarta");
			String numCarta = request.getParameter("numCard");
			
			if(nick.equals("null")){
				
				
				response.sendRedirect("logIn_SignIn.jsp");
				
			} else {
				
				
				
				fatt.setNickname(nick);
				fatt.setCarta(carta);
				fatt.setNumCarta(numCarta);
				
				fatt = FatturaDAO.insertFattura(fatt); 
				
				if (fatt.isValid()) { 
				
				HttpSession session = request.getSession();
				Carrello cart = (Carrello)session.getAttribute("Cart");
				ArrayList<GiocoBean> cartList = cart.getListaCart();
				
				for(GiocoBean c : cartList) {
					
					
					coll.setIdFattura(fatt.getIdFattura());
					coll.setIdGioco(c.getTitolo());
					coll.setPezzi(c.getQuantita());
					
					if(c.getInSconto().equals("true")){
						
						coll.setPrezzoUnitario(c.getPrezzoScontato());
					}else{
						coll.setPrezzoUnitario(c.getPrezzo());
					}
					
					CollocamentoDAO.insertCollocamento(coll);
					
					ArrayList<CollocamentoBean> listaCollocamento = CollocamentoDAO.collocamentoGetItems();
					
					
					session.setAttribute("listaGiochiCollocamento", listaCollocamento);
					
					keysBean.setGioco(c.getTitolo());
					keysBean.setId_fattura(fatt.getIdFattura());
					
					for(int j=1; j<=c.getQuantita();j++){KeysDAO.insertKey(keysBean);}
				}
		
					
					session.setAttribute("Cart", new Carrello());
					
			        
					ArrayList<FatturaBean> lista = FatturaDAO.getItemsFattura(nick);
					session.setAttribute("listaFatture", lista);
					
					
					ArrayList<GiocoBean> listaGiochiLib = GiocoDAO.getGiochiLib(nick);
					session.setAttribute("listaGiochiLib", listaGiochiLib);
					
					
					response.sendRedirect("areaUtente.jsp"); 
				} 
				
				else {
					
					response.sendRedirect("areaUtente.jsp");
					System.out.println("Acquisto non andato a buon fine!");
				}
				
			}

		
		}catch (Throwable theException) { System.out.println(theException); } 
			
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
