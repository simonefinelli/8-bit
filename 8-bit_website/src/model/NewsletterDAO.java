package model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class NewsletterDAO {

	public static NewsletterBean insertEmail(NewsletterBean bean) throws SQLException, InstantiationException,
    IllegalAccessException, ClassNotFoundException, NamingException {
		
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/8bit");
			Connection conn = ds.getConnection();
			   
			String email = bean.getEmail();
			
			Statement statement = conn.createStatement();
			
			String sql ="INSERT INTO newsletter (`email_news`) VALUES ('"+ email +"');";
			
			int es = statement.executeUpdate(sql);
			
			 if (es < 1) {
				 
				   bean.setValid(false);
				   System.out.println("Dati incompleti");
				   
			   } else {
				   
				   bean.setValid(true);
				   System.out.println("Newsletter inserita correttamente " + email);
			   } 
			 
			 conn.close();
			 
		}  catch (SQLException se) {
			
		      System.out.println("SQL Exception:");
		      while (se != null) {
		        System.out.println("State  : " + se.getSQLState());
		        System.out.println("Message: " + se.getMessage());
		        System.out.println("Error  : " + se.getErrorCode());

		        se = se.getNextException();
		      }
		    } catch (Exception e) {
		      e.printStackTrace(System.out);
		    }
		return bean;
	} 
}
