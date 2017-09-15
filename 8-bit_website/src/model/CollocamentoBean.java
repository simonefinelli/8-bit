package model;

import java.io.Serializable;

public class CollocamentoBean implements Serializable {

	
	private static final long serialVersionUID = 1L;
	
	private String idGioco;
	private int idFattura, pezzi;
	private double prezzoUnitario;
	private boolean valid;
	
	
	public String getIdGioco() {
		return idGioco;
	}
	public void setIdGioco(String idGioco) {
		this.idGioco = idGioco;
	}
	public int getIdFattura() {
		return idFattura;
	}
	public void setIdFattura(int idFattura) {
		this.idFattura = idFattura;
	}
	public int getPezzi() {
		return pezzi;
	}
	public void setPezzi(int pezzi) {
		this.pezzi = pezzi;
	}

	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean valid) {
		this.valid = valid;
	}
	
	@Override
	public String toString() {
		return "CollocamentoBean [idGioco=" + idGioco + ", idFattura=" + idFattura + ", pezzi=" + pezzi + "]";
	}
	public double getPrezzoUnitario() {
		return prezzoUnitario;
	}
	public void setPrezzoUnitario(double prezzoUnitario) {
		this.prezzoUnitario = prezzoUnitario;
	}
}
