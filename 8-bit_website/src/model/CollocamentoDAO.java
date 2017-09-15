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

public class CollocamentoDAO {

	public static CollocamentoBean insertCollocamento(CollocamentoBean bean) throws SQLException, InstantiationException,
    IllegalAccessException, ClassNotFoundException, NamingException {

  try {
	   
	   
	   
	   Context initContext = new InitialContext();
	   Context envContext = (Context) initContext.lookup("java:comp/env");
	   DataSource ds = (DataSource) envContext.lookup("jdbc/8bit");
	   Connection conn = ds.getConnection();
	   
	   
	   String idGioco = bean.getIdGioco();
	   
	   int idFattura = bean.getIdFattura();
	   
	   int pezzi = bean.getPezzi();
	   
	   double prezzoUnitario = bean.getPrezzoUnitario();
	   System.out.println("valore prezzo UNITARIO " + prezzoUnitario);
	   Statement statement = conn.createStatement();
	   
		   //Inserimento fattura
	  String sql = " INSERT INTO collocamento (`id_gioco`, `id_fattura`, `pezzi`, `prezzo_unitario`) VALUES ('" + idGioco + "','" + idFattura + "', '" + pezzi + "', '" + prezzoUnitario + "');";
		                           
		   
		   int es = statement.executeUpdate(sql);
		   
		   if (es < 1) {
			   System.out.println("Dati incompleti");
			   bean.setValid(false);
		   } else {
			   System.out.println("Collocamento inserita correttamente ");
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
	 
	

public static ArrayList<CollocamentoBean> collocamentoGetItems() throws SQLException, InstantiationException,
IllegalAccessException, ClassNotFoundException, NamingException {

	
	ArrayList<CollocamentoBean> lista = new ArrayList<CollocamentoBean>();
	
	try {
   
   
   
   Context initContext = new InitialContext();
   Context envContext = (Context) initContext.lookup("java:comp/env");
   DataSource ds = (DataSource) envContext.lookup("jdbc/8bit");
   Connection conn = ds.getConnection();
   
   String sql = "select * from collocamento ;";
	 
	 Statement statement = conn.createStatement();
	 
	 ResultSet rs = statement.executeQuery(sql);
	 
	 
	 while (rs.next()) {
		 
		 CollocamentoBean coll = new CollocamentoBean();
		 
		 
		 coll.setIdGioco(rs.getString("id_gioco"));
		 coll.setIdFattura(rs.getInt("id_fattura"));
		 coll.setPezzi(rs.getInt("pezzi"));
		 coll.setPrezzoUnitario(rs.getDouble("prezzo_unitario"));
		 
		 lista.add(coll);
		 
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

    return lista;
  }
 


}


