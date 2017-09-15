package model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class KeysDAO {

	public static KeysBean insertKey(KeysBean bean) throws SQLException, InstantiationException,
     IllegalAccessException, ClassNotFoundException, NamingException {

   try {

	   Context initContext = new InitialContext();
	   Context envContext = (Context) initContext.lookup("java:comp/env");
	   DataSource ds = (DataSource) envContext.lookup("jdbc/8bit");
	   Connection conn = ds.getConnection();
	   Statement statement = conn.createStatement();
	   
	   String gioco = bean.getGioco();
	   int fattura = bean.getId_fattura();
	   
	   /* Stringa Random */
	   String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		int count=15;
		StringBuilder builder = new StringBuilder();
		while (count-- != 0) {
		int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());
		builder.append(ALPHA_NUMERIC_STRING.charAt(character));
		}
		String codiceRandom = builder.toString();
	
	
	   String sql ="INSERT INTO `8bit`.`keys` (`gioco`, `fattura`, `key`) VALUES ('"+gioco+"', '"+fattura+"', '"+codiceRandom+"');";
	   
		   
		   
		   int es = statement.executeUpdate(sql);
		   
		   if (es < 1) {
			   System.out.println("Dati incompleti");
			   bean.setValid(false);
		   } else {
			   System.out.println("key inserita correttamente " + codiceRandom);
			   bean.setValid(true);}
	  
		   
		   conn.close();
	   	
	   
	} catch (SQLException se) {
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

