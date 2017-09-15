package model;

import java.io.Serializable;
import java.util.ArrayList;

public class GiocoBean implements Serializable {
	
	
	private static final long serialVersionUID = 1L;
	
	private String titolo, anno, console, softwarehouse, URL, URL1, URL2, URL3, URLVideo, descrizione, inSconto, genere, inVendita;
	private ArrayList<String> keys=new ArrayList<String>();
	
	public ArrayList<String> getKeys() {
		return keys;
	}

	public void add(String str){
		keys.add(str);
	}
	public void setKeys(ArrayList<String> keys) {
		this.keys = keys;
	}

	public String getURL2() {
		return URL2;
	}

	public void setURL2(String uRL2) {
		URL2 = uRL2;
	}

	public String getURL3() {
		return URL3;
	}

	public void setURL3(String uRL3) {
		URL3 = uRL3;
	}

	public String getURLVideo() {
		return URLVideo;
	}

	public void setURLVideo(String uRLVideo) {
		URLVideo = uRLVideo;
	}

	private double prezzo, prezzoScontato;
	private int quantita;
	
	 private boolean valid;

	
	public String getTitolo() {
		return titolo;
	}
	
	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}
	
	public String getAnno() {
		return anno;
	}
	
	public void setAnno(String anno) {
		this.anno = anno;
	}
	
	public String getConsole() {
		return console;
	}
	
	public void setConsole(String console) {
		this.console = console;
	}
	
	public String getSoftwarehouse() {
		return softwarehouse;
	}
	
	public void setSoftwarehouse(String softwarehouse) {
		this.softwarehouse = softwarehouse;
	}
	
	public String getURL() {
		return URL;
	}
	
	public void setURL(String url) {
		URL = url;
	}
	public String getDescrizione() {
		return descrizione;
	}
	
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	
	public double getPrezzo() {
		return prezzo;
	}
	
	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}
	
	public double getPrezzoScontato() {
		return prezzoScontato;
	}
	
	public void setPrezzoScontato(double prezzoScontato) {
		this.prezzoScontato = prezzoScontato;
	}

	public String getInSconto() {
		return inSconto;
	}

	public void setInSconto(String inSconto) {
		this.inSconto = inSconto;
	}

	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean valid) {
		this.valid = valid;
	}
	

	public int getQuantita() {
		return quantita;
	}

	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		GiocoBean other = (GiocoBean) obj;
		if (titolo == null) {
			if (other.titolo != null)
				return false;
		} else if (!titolo.equals(other.titolo))
			return false;
		return true;
	}

	public String getGenere() {
		return genere;
	}

	public void setGenere(String genere) {
		this.genere = genere;
	}

	@Override
	public String toString() {
		return "GiocoBean [titolo=" + titolo + ", anno=" + anno + ", prezzo=" + prezzo + "]";
	}

	public String getURL1() {
		return URL1;
	}

	public void setURL1(String uRL1) {
		URL1 = uRL1;
	}

	public String getInVendita() {
		return inVendita;
	}

	public void setInVendita(String inVendita) {
		this.inVendita = inVendita;
	}
	
	
	
	
}
