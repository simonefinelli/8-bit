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

public class GiocoDAO {

	public static GiocoBean register(GiocoBean bean) throws SQLException, InstantiationException,
     IllegalAccessException, ClassNotFoundException, NamingException {

   try {
	   
	   
	   
	   Context initContext = new InitialContext();
	   Context envContext = (Context) initContext.lookup("java:comp/env");
	   DataSource ds = (DataSource) envContext.lookup("jdbc/8bit");
	   Connection conn = ds.getConnection();
	   
	   
	   String titolo = bean.getTitolo();
	   double prezzo = bean.getPrezzo();
	   String anno = bean.getAnno();
	   String console = bean.getConsole();
	   String softwarehouse = bean.getSoftwarehouse();
	   String immagineURL = bean.getURL();
	   
	   String immagineURL1 = bean.getURL1();
	   
	   String immagineURL2 = bean.getURL2();
	   
	   String immagineURL3 = bean.getURL3();
	   
	   String videoURL = bean.getURLVideo();
	   
	   String descrizione = bean.getDescrizione();
	   
	   String inSconto = bean.getInSconto();
	   
	   String genere = bean.getGenere();
	   
	   if(immagineURL.equals("")){
		   
		   immagineURL = "./Images/Giochi/default.png";
		   
	   } else {
		   
		   immagineURL = "./Images/Giochi/"+immagineURL;
	   }
	   
	   if(immagineURL1.equals("")){
		   
		   immagineURL1 = "./Images/Giochi/default.png";
		   
	   } else {
		   
		   immagineURL1 = "./Images/Giochi/"+immagineURL1;
	   }
	   
	   if(immagineURL2.equals("")){
		   
		   immagineURL2 = "./Images/Giochi/default.png";
		   
	   } else {
		   
		   immagineURL2 = "./Images/Giochi/"+immagineURL2;
	   }
	   
	   if(immagineURL3.equals("")){
		   
		   immagineURL3 = "./Images/Giochi/default.png";
		   
	   } else {
		   
		   immagineURL3 = "./Images/Giochi/"+immagineURL3;
	   }
	   
	   if(videoURL.equals("")){
		   
		   videoURL = "./Images/Giochi/default.png";
		   
	   } else {
		   
		   
	   }
	  
	   
	   Statement statement = conn.createStatement();
	   
	   if(inSconto.equals("false")) {
		   
		   //Inserimento Gioco senza sconto
		   String sql = "insert into gioco values ('" + titolo + "', '" + prezzo + "', '"
			          + descrizione + "', '" + anno + "', '" + console + "', '" + softwarehouse + "', '" + immagineURL + "', '"
			          + inSconto + "', '" + 0 + "','" +genere+ "','" +immagineURL1+ "','" +immagineURL2+ "','" +immagineURL3+ "','" +videoURL+ "','" +"true"+ "');";
		   
		   int es = statement.executeUpdate(sql);
		   if (es < 1) {
			   System.out.println("Dati incompleti");
			   bean.setValid(false);
		   } else {
			   System.out.println("Gioco inserito correttamente " + titolo);
			   bean.setValid(true);
		   }  
	   } else {
		   //Inserimento gioco con sconto
		   
		   double prezzoScontato = bean.getPrezzoScontato();
		   
		   String sql = "insert into gioco values ('" + titolo + "', '" + prezzo + "', '"
			          + descrizione + "', '" + anno + "', '" + console + "', '" + softwarehouse + "', '" + immagineURL + "', '"
			          + inSconto + "', '" + prezzoScontato + "','" +genere+ "','" +immagineURL1+ "','" +immagineURL2+ "','" +immagineURL3+ "','" +videoURL+ "','" +"true"+ "');";
		   
		   
		   int es = statement.executeUpdate(sql);
		   
		   if (es < 1) {
			   System.out.println("Dati incompleti");
			   bean.setValid(false);
		   } else {
			   System.out.println("Gioco inserito correttamente " + titolo);
			   bean.setValid(true);}
	  
	   	} 
	   
	   
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
	 
	 
	 public static ArrayList<GiocoBean> getThreeItem() throws SQLException, InstantiationException,
     IllegalAccessException, ClassNotFoundException, NamingException {
		 
ArrayList<GiocoBean> listaGiochi = new ArrayList<GiocoBean>();
		 
		 try {
			 System.out.println("Sto in getItems");
			 Context initContext = new InitialContext();
			 Context envContext = (Context) initContext.lookup("java:comp/env");
			 DataSource ds = (DataSource) envContext.lookup("jdbc/8bit");
			 Connection conn = ds.getConnection();
			 
			 String sql = "select * from gioco ;";
			 
			 Statement statement = conn.createStatement();
			 
			 ResultSet rs = statement.executeQuery(sql);
			 
			 int i=0;
			 while (rs.next() && i<=3) {
				 
				 GiocoBean gioco = new GiocoBean();
				 
				 
				 gioco.setTitolo(rs.getString("titolo_gioco"));
				 gioco.setPrezzo(rs.getDouble("prezzo_gioco"));
				 gioco.setAnno(rs.getString("anno_gioco"));
				 gioco.setConsole(rs.getString("console"));
				 gioco.setSoftwarehouse(rs.getString("softwarehouse"));
				 gioco.setPrezzoScontato(rs.getDouble("prezzo_scont_gioco"));
				 gioco.setURL(rs.getString("url"));
				 gioco.setDescrizione(rs.getString("descrizione_gioco"));
				 gioco.setInSconto(rs.getString("in_sconto"));
				 gioco.setGenere(rs.getString("genere"));
				 gioco.setURL1(rs.getString("url1"));
				 gioco.setURL2(rs.getString("url2"));
				 gioco.setURL3(rs.getString("url3"));
				 gioco.setURLVideo(rs.getString("urlvideo"));
				 gioco.setInVendita(rs.getString("in_vendita"));
				 listaGiochi.add(gioco);
				 
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
		 return listaGiochi;
	 }
	 
	 public static ArrayList<GiocoBean> getItems() throws SQLException, InstantiationException,
     IllegalAccessException, ClassNotFoundException, NamingException {
	 
		 	ArrayList<GiocoBean> listaGiochi = new ArrayList<GiocoBean>();
		 
		 try {
			 
			 Context initContext = new InitialContext();
			 Context envContext = (Context) initContext.lookup("java:comp/env");
			 DataSource ds = (DataSource) envContext.lookup("jdbc/8bit");
			 Connection conn = ds.getConnection();
			 
			 String sql = "select * from gioco ;";
			 
			 Statement statement = conn.createStatement();
			 
			 ResultSet rs = statement.executeQuery(sql);
			 
			 
			 while (rs.next()) {
				 
				 GiocoBean gioco = new GiocoBean();
				 
				 
				 gioco.setTitolo(rs.getString("titolo_gioco"));
				 gioco.setPrezzo(rs.getDouble("prezzo_gioco"));
				 gioco.setAnno(rs.getString("anno_gioco"));
				 gioco.setConsole(rs.getString("console"));
				 gioco.setSoftwarehouse(rs.getString("softwarehouse"));
				 gioco.setPrezzoScontato(rs.getDouble("prezzo_scont_gioco"));
				 gioco.setURL(rs.getString("url"));
				 gioco.setDescrizione(rs.getString("descrizione_gioco"));
				 gioco.setInSconto(rs.getString("in_sconto"));
				 gioco.setGenere(rs.getString("genere"));
				 gioco.setURL1(rs.getString("url1"));
				 gioco.setURL2(rs.getString("url2"));
				 gioco.setURL3(rs.getString("url3"));
				 gioco.setURLVideo(rs.getString("urlvideo"));
				 gioco.setInVendita(rs.getString("in_vendita"));
				 listaGiochi.add(gioco);
				 
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
		 
		 return listaGiochi;
	 }
	 
	 
	 public static ArrayList<GiocoBean> getGiochiLib(String user) throws SQLException, InstantiationException,
	    IllegalAccessException, ClassNotFoundException, NamingException {
			
		 ArrayList<GiocoBean> listaGiochi = new ArrayList<GiocoBean>();
			try {
				   
				   Context initContext = new InitialContext();
				   Context envContext = (Context) initContext.lookup("java:comp/env");
				   DataSource ds = (DataSource) envContext.lookup("jdbc/8bit");
				   Connection conn = ds.getConnection();

				   Statement statement = conn.createStatement();
				   
				   
					   //Inserimento fattura
				   
					   String sql= "SELECT collocamento.id_gioco, sum(collocamento.pezzi) as pezzi FROM fattura INNER JOIN collocamento ON fattura.id_fattura = collocamento.id_fattura && fattura.nickname='"+user+"'group by collocamento.id_gioco;";                          
					   
					   ResultSet rs = statement.executeQuery(sql);
						 
						
						 while (rs.next()) {
							 
							 GiocoBean gioco = new GiocoBean();
							 
							 
							 gioco.setTitolo(rs.getString("id_gioco"));
							 System.out.println("Quantita in DAO " +  rs.getInt("pezzi"));
							 gioco.setQuantita(rs.getInt("pezzi"));
							 
							 listaGiochi.add(gioco);
							 
						 }
						 String sql1 ="SELECT 8bit.`keys`.`key`, 8bit.`keys`.gioco FROM 8bit.`keys` INNER JOIN fattura ON fattura.id_fattura = 8bit.`keys`.fattura && fattura.nickname='"+user+"';";
						 rs = statement.executeQuery(sql1);
				         System.out.println(listaGiochi);
				         while(rs.next()){
				        	 GiocoBean x=new GiocoBean();
				        	 x.setTitolo(rs.getString("gioco"));
				        	 String key=rs.getString(1);
				        	 System.out.println(key);
				        	 listaGiochi.get(listaGiochi.indexOf(x)).add(key);
				        	 
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

				    return listaGiochi;
				  
		}
	 
	 public static void eliminaGioco(String nomeG) throws SQLException, InstantiationException,
	    IllegalAccessException, ClassNotFoundException, NamingException {
			
		 
			try {
				   
				   Context initContext = new InitialContext();
				   Context envContext = (Context) initContext.lookup("java:comp/env");
				   DataSource ds = (DataSource) envContext.lookup("jdbc/8bit");
				   Connection conn = ds.getConnection();

				   Statement statement = conn.createStatement();
				   
				   
					   //Inserimento fattura
				   
					   String sql= "UPDATE `8bit`.`gioco` SET `in_vendita`='false' WHERE `titolo_gioco`='"+ nomeG +"';";                          
					   
					   statement.executeUpdate(sql);
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

				    
				  
		}
	 
	 
	 
	 
	 
	 public static GiocoBean updateGame(GiocoBean bean) throws SQLException, InstantiationException,
     IllegalAccessException, ClassNotFoundException, NamingException {

   try {
	   
	   
	   
	   Context initContext = new InitialContext();
	   Context envContext = (Context) initContext.lookup("java:comp/env");
	   DataSource ds = (DataSource) envContext.lookup("jdbc/8bit");
	   Connection conn = ds.getConnection();
	   
	   
	   String titolo = bean.getTitolo();
	   double prezzo = bean.getPrezzo();
	   String anno = bean.getAnno();
	   String console = bean.getConsole();
	   String softwarehouse = bean.getSoftwarehouse();
	   String immagineURL = bean.getURL();
	   
	   String immagineURL1 = bean.getURL1();
	   
	   String immagineURL2 = bean.getURL2();
	   
	   String immagineURL3 = bean.getURL3();
	   
	   String videoURL = bean.getURLVideo();
	   
	   String descrizione = bean.getDescrizione();
	   
	   String inSconto = bean.getInSconto();
	   
	   String genere = bean.getGenere();
	   
	   if(immagineURL.equals("")){
		   
		   immagineURL = "./Images/Giochi/default.png";
		   
	   } else {
		   
		   immagineURL = "./Images/Giochi/"+immagineURL;
	   }
	   
	   if(immagineURL1.equals("")){
		   
		   immagineURL1 = "./Images/Giochi/default.png";
		   
	   } else {
		   
		   immagineURL1 = "./Images/Giochi/"+immagineURL1;
	   }
	   
	   if(immagineURL2.equals("")){
		   
		   immagineURL2 = "./Images/Giochi/default.png";
		   
	   } else {
		   
		   immagineURL2 = "./Images/Giochi/"+immagineURL2;
	   }
	   
	   if(immagineURL3.equals("")){
		   
		   immagineURL3 = "./Images/Giochi/default.png";
		   
	   } else {
		   
		   immagineURL3 = "./Images/Giochi/"+immagineURL3;
	   }
	   
	   if(videoURL.equals("")){
		   
		   videoURL = "./Images/Giochi/default.png";
		   
	   } else {
		   
		   
	   }
	  
	   
	   Statement statement = conn.createStatement();
	   
	   if(inSconto.equals("false")) {
		   
		   //Inserimento Gioco senza sconto
		   
		   
		   String sql="UPDATE `8bit`.`gioco` SET `prezzo_gioco`='"+ prezzo +"', `descrizione_gioco`='"+ descrizione +"', `anno_gioco`='"+anno+"', `console`='"+console+"', `softwarehouse`='"+softwarehouse+"', `url`='"+immagineURL+"', `in_sconto`='"+inSconto+"', `prezzo_scont_gioco`='"+ 0 +"', `genere`='"+genere+"', `url1`='"+immagineURL1+"', `url2`='"+immagineURL2+"', `url3`='"+immagineURL3+"', `urlvideo`='"+videoURL+"', `in_vendita`='"+"true"+"' WHERE `titolo_gioco`='"+titolo+"';";
		   
		   		   
		   int es = statement.executeUpdate(sql);
		   if (es < 1) {
			   System.out.println("Dati incompleti");
			   bean.setValid(false);
		   } else {
			   System.out.println("Gioco inserito correttamente " + titolo);
			   bean.setValid(true);
		   }  
	   } else {
		   //Inserimento gioco con sconto
		   
		   double prezzoScontato = bean.getPrezzoScontato();
		   
		   String sql="UPDATE `8bit`.`gioco` SET `prezzo_gioco`='"+ prezzo +"', `descrizione_gioco`='"+ descrizione +"', `anno_gioco`='"+anno+"', `console`='"+console+"', `softwarehouse`='"+softwarehouse+"', `url`='"+immagineURL+"', `in_sconto`='"+inSconto+"', `prezzo_scont_gioco`='"+ prezzoScontato +"', `genere`='"+genere+"', `url1`='"+immagineURL1+"', `url2`='"+immagineURL2+"', `url3`='"+immagineURL3+"', `urlvideo`='"+videoURL+"', `in_vendita`='"+"true"+"' WHERE `titolo_gioco`='"+titolo+"';";
		    
		   
		   int es = statement.executeUpdate(sql);
		   
		   if (es < 1) {
			   System.out.println("Dati incompleti");
			   bean.setValid(false);
		   } else {
			   System.out.println("Gioco inserito correttamente " + titolo);
			   bean.setValid(true);}
	  
	   	} 
	   
	   
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











