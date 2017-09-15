package model;

import java.io.Serializable;
import java.util.ArrayList;

public class Carrello implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ArrayList<GiocoBean> listaCart;
	
	public Carrello(){
		
		listaCart = new ArrayList<GiocoBean>();
	}
	
	public void add(GiocoBean g){
		if(listaCart.contains(g)){
			GiocoBean x=listaCart.get(listaCart.indexOf(g));
			x.setQuantita(x.getQuantita()+g.getQuantita());
		}
		else{
		listaCart.add(g);}
	}
	
	public void remove(GiocoBean g){
		listaCart.remove(g);
	}
	
	public void updateQ(GiocoBean g){
		if(listaCart.contains(g)){
			if(g.getQuantita() <= 0){
				listaCart.remove(g);
			}
			else{
			GiocoBean x=listaCart.get(listaCart.indexOf(g));
			x.setQuantita(g.getQuantita());
			}
		}
		
	}
	
	public double getTotale(){
		double tot=0;
		
		for(GiocoBean g: listaCart){
			if(g.getInSconto().equals("true")){
				tot+=g.getPrezzoScontato()*g.getQuantita();
			}
			else{
				tot+=g.getPrezzo()*g.getQuantita();
			}
		}
		return tot;
	}
	
	public double getSubTotale(){
		double tot=0;
		
		for(GiocoBean g: listaCart){
				tot+=g.getPrezzo()*g.getQuantita();
		}
		return tot;
	}

	public ArrayList<GiocoBean> getListaCart() {
		return listaCart;
	}

	@Override
	public String toString() {
		return "Carrello :\n" + listaCart + "";
	}
	
	

}
