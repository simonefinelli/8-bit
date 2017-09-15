package model;

import java.io.Serializable;

public class KeysBean implements Serializable {


	private static final long serialVersionUID = 1L;
	
	private String gioco, key;
	private int  id_fattura;
	private boolean valid;
	
	public String getGioco() {
		return gioco;
	}
	public void setGioco(String gioco) {
		this.gioco = gioco;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public int getId_fattura() {
		return id_fattura;
	}
	public void setId_fattura(int id_fattura) {
		this.id_fattura = id_fattura;
	}
	
	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean valid) {
		this.valid = valid;
	}

}
