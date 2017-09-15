<!DOCTYPE html>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="model.GiocoBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Carrello"%>
<%@page import="model.ClienteBean"%>

<html lang="en">
<head>

<title>8-bit Carrello</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./Css/carrello.css">
	<link rel="icon" href="./Images/8-bit.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="Script/aggiornaQuantita.js"></script>
<script src="./Script/ScriptBarraRicerca.js"></script>
<script src="./Script/FormProcedi.js"></script>

<style>
body {
	font: 400 15px/1.8 Lato, sans-serif;
	color: #777;
}

h3, h4 {
	margin: 10px 0 30px 0;
	letter-spacing: 10px;
	font-size: 20px;
	color: #111;
}

.container1 {
	margin: 90px 10%;
	
}

.person {
	border: 10px solid transparent;
	margin-bottom: 25px;
	width: 80%;
	height: 80%;
	opacity: 0.7;
}

.person:hover {
	border-color: #f1f1f1;
}

.carousel-inner img {
	width: 100%; /* Set width to 100% */
	margin: auto;
}

.carousel-caption h3 {
	color: #fff !important;
}

@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
		/* Hide the carousel text when the screen is less than 600 pixels wide */
	}
}

.bg-1 {
	background: #2d2d30;
	color: #bdbdbd;
}

.bg-1 h3 {
	color: #fff;
}

.bg-1 p {
	font-style: italic;
}

.list-group-item:first-child {
	border-top-right-radius: 0;
	border-top-left-radius: 0;
}

.list-group-item:last-child {
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail p {
	margin-top: 15px;
	color: #555;
}

.btn {
	padding: 10px 20px;
	background-color: #333;
	color: #f1f1f1;
	border-radius: 0;
	transition: .2s;
}

.btn:hover, .btn:focus {
	border: 1px solid #333;
	background-color: #fff;
	color: #000;
}

.modal-header, h4, .close {
	background-color: #333;
	color: #fff !important;
	text-align: center;
	font-size: 30px;
}

.modal-header, .modal-body {
	padding: 40px 50px;
}

.nav-tabs li a {
	color: #777;
}

.navbar {
	font-family: Montserrat, sans-serif;
	margin-bottom: 0;
	background-color: #2d2d30;
	border: 0;
	font-size: 11px !important;
	letter-spacing: 4px;
	opacity: 0.9;
}

.navbar li a, .navbar .navbar-brand {
	color: #d5d5d5 !important;
}

.navbar-nav li a:hover {
	color: #fff !important;
}

.navbar-nav li.active a {
	color: #fff !important;
	background-color: #29292c !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
}

.open .dropdown-toggle {
	color: #fff;
	background-color: #555 !important;
}

.dropdown-menu li a {
	color: #000 !important;
}

.dropdown-menu li a:hover {
	background-color: grey !important;
}

footer {
	background-color: #2d2d30;
	color: #f5f5f5;
	padding: 32px;
}

footer a {
	color: #f5f5f5;
}

footer a:hover {
	color: #777;
	text-decoration: none;
}

.form-control {
	border-radius: 0;
}

textarea {
	resize: none;
}

#btn_procedi{
	float: left;
}

.jumbotron{
	background-image: url(./Images/steamB.pn);
	background-repeat: no-repeat;
	background-position: center top;
	background-color:;
	border-radius: 10px 10px 10px 10px;
	padding-left:10%;
	padding-right:10%;
}

#myPage{
	
	background-image: url(./Images/pattern10.jpg);
	background-repeat: repeat-y;
	
	
}


#id_searchText{
  		
  		height: 28px;
		margin-top: 1%;
		width: 150px;
  		
  		
  		}
  		#id_findButton{
  		
  			height: 28px;
			padding-top: 4px;
			width: 41px;
			padding-left: 12px;
			margin-top: 2px;


  		}
 label{
 	float: left;
 }
 @media screen and (max-width: 910px) {
	
	
	.container1{
		margin: 90px 5%;
	}
}

@media screen and (max-width: 768px) {
	
	
	.container1{
		margin: 90px 2%;
	}
	
	#id_btn_ok{
		margin-top:30px;
	}
	
	#id_btn_store_ok{
		margin-top:30px;
	}
	
	#id_h2_carrello{
		margin-bottom:40px;
	}
}

 
 

</style>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">

	<!-- Navbar -->
		<%@include file="navbar.jsp"%>
	
	<%if(((Carrello)session.getAttribute("Cart")).getListaCart().size()==0){ %>
		
		<div style="margin-top: 19%; margin-bottom: 13%;text-align:center;">
			<h1 style="color:#f5f0f0">Carrello Vuoto</h1>
		</div>
	
	<% } else { %>
	
	
	
	<div class="container1">
		<div class="jumbotron">
		
		<h2 id="id_h2_carrello">Carrello</h2>
		
    <div class="row">
        
        <div class="table-responsive"> 
            <table class="table table-hover">
                <thead >
                    <tr>
                        <th>Prodotto</th>
                        <th class="text-center">Quantit&agrave;</th>
                        <th class="text-center">Prezzo</th>
                        <th class="text-center">Prezzo Scontato</th>
                        <th class="text-center">Totale</th>
                        <th></th>
                        
                    </tr>
                </thead>
                <tbody  >
                
                <%Carrello cart = (Carrello)session.getAttribute("Cart");
                ArrayList<GiocoBean> lista = cart.getListaCart();
                System.out.println("Carrello nel carrello" + cart);
                for(GiocoBean g : lista){
                	
                %>
             
                    <tr>
                        <td class="col-sm-12 ">
	                        <div class="media">
	                            <a > <img class="media-object" src="<%= g.getURL().trim() %>" style="width: 120px; height: 150px;"> </a>
	                            <br>
	                            <div class="media-body">
	                            
	                                <h2 class="media-heading"><a ><%= g.getTitolo() %></a></h2>
	         
	                            </div>
	                        </div>
                        </td>
                        
                        <td class="col-sm-3 text-center" style="text-align: center">
                        <input type="number" name="qnt" id="<%=g.getTitolo()%>" class="quantita" min="1" value="<%= g.getQuantita() %>" style="width:70px;">
                        </td>
                        
                        <% String x = "____";
                         String totale; 
                        if(g.getInSconto().equals("true")){
                        	x=""+String.format("%.2f",g.getPrezzoScontato());
                        	totale=String.format("%.2f", g.getPrezzoScontato()*g.getQuantita());
                        %>
                        <td class="col-sm-12 text-center"><strong>&euro; <del><%= g.getPrezzo() %></del></strong></td>
                        <%
                        }
                        else {
                        	totale=String.format("%.2f", g.getPrezzo()*g.getQuantita());
                        %>
                        	<td class="col-sm-3 text-center"><strong>&euro; <%= g.getPrezzo() %></strong></td>
                       	<%} %>
                        <td class="col-sm-3 text-center"><strong>&euro; <%=x%></strong></td>
                        <td class="col-sm-3 text-center" id="id_totale<%=g.getTitolo().substring(0,4)%>"><strong>&euro; <%= totale %></strong></td>
                        
                        <td class="col-sm-5">
                        
                        <form action="RimuoviCarrelloServlet" method="post">
                        
	                        <input type="hidden" name="gioco" value="<%=g.getTitolo()%>"/>
	                        <button type="submit" class="btn btn-danger">
	                            <span class="glyphicon glyphicon-remove"></span> Remove
	                        </button>
                       </form>
                       
                        </td>

                    </tr>
                   
                   <%} %>
       
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Sub-totale</h5></td>
                        <td class="text-right"><h5 id="id_sub"><strong><%= String.format("%.2f", cart.getSubTotale())%> &euro;</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td></td>
                        <td><h5>Totale sconto</h5></td>
                        <td id="id_totS" class="text-right"><h5 id="id_totS"><strong><%= String.format("%.2f", cart.getSubTotale() - cart.getTotale())%> &euro;</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td></td>
                        <td><h3  style="float: left;inline-size:  -moz-max-content;">Tot. &euro;</h3></td>
                        <%System.out.println("Sto nella jsp e stampo totale fattura " + String.format("%.2f", cart.getTotale())); %>
                        <td  class="text-right"><h3 id="id_tot"><strong><%= String.format("%.2f", cart.getTotale())%></strong></h3></td>
                    </tr>
                     
                </tbody>
            </table>
			</div><!-- fine table responsive --> 
                     
                     <button id="id_btn_ok" type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal"
                        style="float:right; margin-left:20px;">
                            Acquista! <span class="glyphicon glyphicon-play"></span>
                        </button>
                     
                     
                        <button id="id_btn_store_ok" type="button" class="btn btn-default" onclick="location.href='store.jsp'"
                        style="float:right;">
                            <span class="glyphicon glyphicon-shopping-cart"> </span> Continue Shopping
                        </button>
                       
                        
                        
                      
        </div>
    


		</div>
	</div>
	
	
	
	<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Riepilogo Ordine</h4>
        </div>
        
        <div class="modal-body">
					  
			<%ArrayList<GiocoBean> listaG = ((Carrello)session.getAttribute("Cart")).getListaCart(); %>
				
				<div class="row">
					<%for(GiocoBean g : listaG) {%>	  
					<div class="col-sm-4">
					        <img src="<%=g.getURL()%>" width="100" height="100" /><div><%=g.getTitolo()%></div>
					        
					        </div>
					<%} %>
				</div> 
					
        </div>
        <br>
        <div class="modal-footer" id="id_modal">
        	
          <form action="InserisciFattura" method="post" onSubmit="return formProcediValidation();">
          	
          	
          	<input type="hidden" name="totale_per_fattura1" value="<%=String.format("%.2f", cart.getTotale())%>"/>
          	
          	<%ClienteBean c1 = (ClienteBean) session.getAttribute("currentSessionUser"); 
          	
          	String user1=null;
          	if(c1!=null){
          		user1 = c1.getNickname();}
          	%>
          	<input type="hidden" name="nick_per_fattura" value="<%=user1%>"/>
          	
          	 <div class="form-group">
			        <label for="tipoCarta">Carta di credito:</label >
			            <select class="form-control" id="id_tipoCarta" name="tipoCarta">
			                <option value="">Scegli la carta</option>
			                <option value="Postepay">Postepay</option>
			                <option value="Visa">Visa</option>
			                <option value="Prepagate Paypal">Prepagate Paypal</option>
			                <option value="Mastercard">Mastercard</option>
			                <option value="American Express">American Express</option>
			                
			            </select>
			     </div>
			     
			      <div class="form-group">
			      <label for="numCard">Numero Carta:</label>
			      <input type="text" class="form-control" id="id_numCard" placeholder="Enter Card Number" name="numCard">
			    </div>
          
          	<div ><button type="submit" id="btn_procedi" class="btn btn-default">Procedi</button></div>
          </form>
          
          
        </div>
        
      </div>
      
    </div>
  </div>

<%} %>

<!-- Footer -->
<%@include file="footer.jsp"%>

<%
	ClienteBean clienteC = (ClienteBean)session.getAttribute("currentSessionUser");
	if(clienteC == null) {
	
	}
	else{
		if(clienteC.getNickname().equals("admin")){
			response.sendRedirect("admin.jsp");
			return;
		}
	}
%>

</body>
</html>