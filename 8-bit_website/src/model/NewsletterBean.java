package model;

import java.io.Serializable;

public class NewsletterBean implements Serializable {

	
	private static final long serialVersionUID = 1L;
	
	private String email;
	private boolean valid;
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "NewsletterBean [email=" + email + "]";
	}

	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean valid) {
		this.valid = valid;
	}
	
	

}
