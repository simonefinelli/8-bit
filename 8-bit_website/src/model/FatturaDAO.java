package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class FatturaDAO {

	public static FatturaBean insertFattura(FatturaBean bean) throws SQLException, InstantiationException,
     IllegalAccessException, ClassNotFoundException, NamingException {

   try {
	   
	  
	   
	   Context initContext = new InitialContext();
	   Context envContext = (Context) initContext.lookup("java:comp/env");
	   DataSource ds = (DataSource) envContext.lookup("jdbc/8bit");
	   Connection conn = ds.getConnection();
	   
	   
	   String dataAcquisto = bean.getDataAcquisto();
	   
	   double totale = bean.getTotaleFattura();
	   
	   String cliente = bean.getNickname().trim();
	   
	   String carta = bean.getCarta();
	   
	   String numCarta = bean.getNumCarta();
	   
	   Statement statement = conn.createStatement();
	   
		   //Inserimento fattura
	   
		   String sql= "INSERT INTO fattura (`data_acquisto`, `tot_fattura`, `nickname`, `carta`, `numero_carta`) VALUES ('" + dataAcquisto + "', '" + totale + "', '" + cliente + "', '" + carta + "', '" + numCarta + "');";                          
		   int es = statement.executeUpdate(sql);
		   
		   if (es < 1) {
			   System.out.println("Dati incompleti");
			   bean.setValid(false);
		   } else {
			   System.out.println("Fattura inserita correttamente ");
			   bean.setValid(true);}
	  
	   		
		   //Recupero l'id della fattura
		   String sql1 = "select * from fattura where nickname='"+ cliente +"';";
			 
			 Statement statement1 = conn.createStatement();
			 
			 ResultSet rs1 = statement1.executeQuery(sql1);
			 
			 int ultimoID = 0;
			 
			 while (rs1.next()) {
				 
				 ultimoID = rs1.getInt("id_fattura");
				 
			 }
			 bean.setIdFattura(ultimoID);
			 
			 rs1.close();
		   
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
	 
	 
	
	 
	 public static ArrayList<FatturaBean> getItemsFattura(String cliente) throws SQLException, InstantiationException,
     IllegalAccessException, ClassNotFoundException, NamingException {
	 
		 	ArrayList<FatturaBean> listaFatture = new ArrayList<FatturaBean>();
		 	
		 	
		 
		 try {
			 
			 
			 
			 Context initContext = new InitialContext();
			 
			 Context envContext = (Context) initContext.lookup("java:comp/env");
			 
			 DataSource ds = (DataSource) envContext.lookup("jdbc/8bit");
			 
			 Connection conn = ds.getConnection();
			
			 
			 
			 String sql = "select * from fattura where nickname='"+ cliente +"';";
			 
			 
			 Statement statement = conn.createStatement();
			 
			 ResultSet rs = statement.executeQuery(sql);
			 
			 
			 while (rs.next()) {
				 
				 FatturaBean fatt = new FatturaBean();
				 
				 
				 fatt.setIdFattura(rs.getInt("id_fattura"));
				 fatt.setDataAcquisto(rs.getString("data_acquisto"));
				 fatt.setTotaleFattura(rs.getDouble("tot_fattura"));
				 fatt.setCarta(rs.getString("carta"));
				 fatt.setNumCarta(rs.getString("numero_carta"));
				 
				 listaFatture.add(fatt);
				 
			 }
			 
			 rs.close();
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
		 
		 System.out.println("Ritorno la lista delle fatture ");
		 return listaFatture;
	 }
	 
}

