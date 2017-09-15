package model;

import java.io.Serializable;

public class Acquisto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String key;
	private GiocoBean g;
	
	public Acquisto(GiocoBean g, String key) {
		this.g = g;
		this.setKey(key);
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public GiocoBean getG() {
		return g;
	}

	public void setG(GiocoBean g) {
		this.g = g;
	}	

}
