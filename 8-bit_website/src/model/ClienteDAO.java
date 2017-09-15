package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ClienteDAO {

  public static ClienteBean login(ClienteBean bean) throws SQLException, InstantiationException,
  IllegalAccessException, ClassNotFoundException, NamingException {

    try {
    	
    
    	
      Context initContext = new InitialContext();
      Context envContext = (Context) initContext.lookup("java:comp/env");
      DataSource ds = (DataSource) envContext.lookup("jdbc/8bit");
      Connection conn = ds.getConnection();
      
      

      String nickname = bean.getNickname();
      
      String password = bean.getPassword();

      Statement statement = conn.createStatement();

      String sql = "select * from cliente where nickname='" + nickname + "' AND password='"+ password + "';";

     
      ResultSet rs = statement.executeQuery(sql);

      boolean more = rs.next();
      
      String nome = rs.getString("nickname");
      
      if(nome.equals("admin")) {
    	  
    	  if (!more) { 
    	        System.out.println("Admin non registrato!");
    	        bean.setValid(false);
    	      } else {
    	        String nome1 = rs.getString("nickname");
    	        System.out.println("Welcome " + nome1);
    	        bean.setEmail(rs.getString("email"));
    	        
    	        bean.setValid(true);
    	      }
    	  
      } else {
    	  
    	  if (!more) { 
    	        System.out.println("Utente non registrato!");
    	        bean.setValid(false);
    	      } else {
    	        String nome1 = rs.getString("nickname");
    	        System.out.println("Welcome " + nome1);
    	        bean.setEmail(rs.getString("email"));
    	        bean.setValid(true);
    	      }
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

  
  public static ClienteBean register(ClienteBean bean) throws SQLException, InstantiationException,
     IllegalAccessException, ClassNotFoundException, NamingException {

  try {
       Context initContext = new InitialContext();
       Context envContext = (Context) initContext.lookup("java:comp/env");
       DataSource ds = (DataSource) envContext.lookup("jdbc/8bit");
       Connection conn = ds.getConnection();
  
       String nickname = bean.getNickname();
       String password = bean.getPassword();
       String email = bean.getEmail();
       
       Statement statement = conn.createStatement();
       
       String sql = "insert into cliente values ('" + nickname + "', '" + password + "', '" + email + "');";
     
       int es = statement.executeUpdate(sql);

       if (es < 1) {
         System.out.println("Dati incompleti");
         
         bean.setValid(false);
         
       } else {
         System.out.println("Welcome " + nickname);
         bean.setEmail(email);
         bean.setNickname(nickname);
         bean.setPassword(password);
         bean.setValid(true);
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