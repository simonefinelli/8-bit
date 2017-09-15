package model;

import java.io.Serializable;

public class FatturaBean implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String dataAcquisto, nickname,carta, numCarta;
	double totaleFattura;
	int idFattura;
	
	
	public int getIdFattura() {
		return idFattura;
	}
	public void setIdFattura(int idFattura) {
		this.idFattura = idFattura;
	}

	private boolean valid;
	
	public String getDataAcquisto() {
		return dataAcquisto;
	}
	public void setDataAcquisto(String dataAcquisto) {
		this.dataAcquisto = dataAcquisto;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public double getTotaleFattura() {
		return totaleFattura;
	}
	public void setTotaleFattura(double totaleFattura) {
		this.totaleFattura = totaleFattura;
	}
	
	
	
	@Override
	public String toString() {
		return "FatturaBean [dataAcquisto=" + dataAcquisto + ", nickname=" + nickname + ", totaleFattura="
				+ totaleFattura + ", idFattura=" + idFattura + ", valid=" + valid + "]";
	}
	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean valid) {
		this.valid = valid;
	}
	public String getCarta() {
		return carta;
	}
	public void setCarta(String carta) {
		this.carta = carta;
	}
	public String getNumCarta() {
		return numCarta;
	}
	public void setNumCarta(String numCarta) {
		this.numCarta = numCarta;
	}

}
