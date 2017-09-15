<%@page import="model.CollocamentoBean"%>
<%@page import="model.GiocoBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.FatturaBean"%>
<%@page import="model.Carrello"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.ClienteBean"%>
<%@page import="model.ClienteBean"%>
<%
	ClienteBean c = (ClienteBean)session.getAttribute("currentSessionUser");
	if(c == null) {
		response.sendRedirect("logIn_SignIn.jsp");
		return;
	}
	else{
		
		if(c.getNickname().equals("admin")){
			response.sendRedirect("logIn_SignIn.jsp");
			return;
		}
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>8-bit Area Utente</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="./Css/areaUtente.css">
	<link rel="icon" href="./Images/8-bit.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="./Script/ScriptBarraRicerca.js"></script>
<script src="Script/galleriaUtente.js"></script>


<%ArrayList<FatturaBean> listaF = (ArrayList<FatturaBean>)session.getAttribute("listaFatture"); %>
<%ArrayList<GiocoBean> listaGiochiLib = (ArrayList<GiocoBean>)session.getAttribute("listaGiochiLib"); %>
<%ArrayList<GiocoBean> lista = (ArrayList<GiocoBean>)session.getAttribute("listaGiochi");%>
<%ArrayList<CollocamentoBean> listaCollocamento = (ArrayList<CollocamentoBean>)session.getAttribute("listaGiochiCollocamento");%>

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
	margin: 90px 15%;
	
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

html {
	box-sizing: border-box;
}

*, *:before, *:after {
	box-sizing: inherit;
}

.column {
	float: left;
	width: 33.3%;
	margin-bottom: 16px;
	padding: 0 8px;
}

@media ( max-width : 650px) {
	.column {
		width: 100%;
		display: block;
	}
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	width: 100%;
	border-radius: 5px;
}

.card:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

img {
	border-radius: 5px 5px 0 0;
}

.container3 {
	padding: 2px 16px;
}

.image {
	opacity: 1;
	display: block;
	width: 100%;
	height: auto;
	transition: .5s ease;
	backface-visibility: hidden;
}

.container2 {
	padding: 0 16px;
}

.container2::after, .row::after {
	content: "";
	clear: both;
	display: table;
}

.middle {
	transition: .5s ease;
	opacity: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%)
}

.card:hover .image {
	opacity: 0.3;
}

.card:hover .middle {
	opacity: 1;
}

.text1 {
	background-color: white;
	font-size: 18px;
	padding: 10px 10px;
	border-radius: 30%;
}

.container3 {
	background-image: url(./Images/steamB2.jpeg);
	background-repeat: repeat-x;
	color: white;
	-webkit-border-radius: 0px 0px 5px 5px;
}

.btn-link:hover {
	color: #4B4B4B;
	text-decoration: none;
}

.btn-link {
	border: none;
	outline: none;
	background: none;
	cursor: pointer;
	padding: 0;
	text-decoration: none;
	font-family: inherit;
	font-size: inherit;
}

.title {
	color: grey;
}

.button {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
}

.button:hover {
	background-color: #555;
}

.buttonload {
	background-color: #4CAF50; /* Green background */
	border: none; /* Remove borders */
	color: white; /* White text */
	padding: 12px 24px; /* Some padding */
	font-size: 16px; /* Set a font-size */
	width: 50%;
	margin-top: 2px;
}

/* Add a right margin to each icon */
.fa {
	margin-left: -12px;
	margin-right: 8px;
}

#div_key {
	overflow-y: scroll;
	height: 45px;
}

#myPage{
	
	background-image: url(./Images/pattern10.jpg);
	background-repeat: repeat-y;
	
	
}

.jumbotron{
	background-image: url(./Images/steamB.png);
	background-repeat: no-repeat;
	background-position: center top;
	background-color:#1B2838;
	border-radius: 10px 10px 10px 10px;
	padding-left:10%;
	padding-right:10%;
}


#myProgress {
	width: 100%;
}

.myBar {
	width: 0%;
	height: 30px;
	text-align: center;
	line-height: 30px;
	color: white;
	background-image: url(./Images/steamB4.jpg);
}

#id_searchText {
	height: 28px;
	margin-top: 1%;
	width: 150px;
}

#id_findButton {
	height: 28px;
	padding-top: 4px;
	width: 41px;
	padding-left: 12px;
	margin-top: 2px;
}

.jumbotron1{

	background-color: white;
	margin: 10px 0px 10px 0px;
	padding: 10px;
	border-radius: 10px 10px 10px 10px;

}

#id_lista_downl{
	margin-top:10%;
	text-align:center;
}

#id_data_ta {
	text-align: center;
}

@media screen and (max-width: 768px) {
	
	.container1 {
	margin: 90px 10%;
	
	
		}
	.class_scritte{
		font-size:1.7em;
	}
	
}

@media screen and (max-width: 615px) {
	

	.container1 {
	margin: 90px 5%;
	
		}
		
		.class_scritte{
		font-size:1.4em;
	}
	
}

@media screen and (max-width: 400px) {
	

	.container1 {
	margin: 90px 2%;
	
		}
		.class_scritte{
		font-size:1.2em;
	}
}

@media screen and (max-width: 768px) {
	
	#id_data_ta{
		text-align: left;
	}	
	
}

</style>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">

	<!-- Navbar -->
	<jsp:include page="navbar.jsp" />



	<div class="container1">
		<div id="jumbotron" class="jumbotron">


			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#home">Area
						Utente</a></li>
				<li><a data-toggle="tab" href="#menu1">Libreria Giochi</a></li>
				<li><a data-toggle="tab" href="#menu2">Dettagli Ordini</a></li>

			</ul>

			<div class="tab-content">
				<div id="home" class="tab-pane fade in active">
	
					<div style="text-align:center;">
					
					<%
						boolean flag = (boolean) session.getAttribute("flagBenvenuto");

						if (session.getAttribute("flagBenvenuto") != null) {
							if (flag) {
					%>
					<h2 class="class_scritte" style="color:white;">
						Benvenuto
						<% ClienteBean currentUser = (ClienteBean) (session.getAttribute("currentSessionUser"));%>
						<%= currentUser.getNickname()%>
						nella tua area utente!
					</h2>
					<br>
					<%
						session.setAttribute("flagBenvenuto", false);
							} else {
								
							}
						}
					%>
	
					</div>
					<h2 style="color:white" class="class_scritte">
						Dai uno sguardo al <a href="blog.jsp">gioco della settimana</a>
						. . .
					</h2>
					<h2 style="color:white" class="class_scritte">
						Oppure iniza visitando lo <a href="store.jsp">store</a>!
					</h2>
					<br> <br>

					<h2 style="color:#f5f0f0" class="class_scritte">Consigliati per TE</h2>
					<hr style="margin-right:60%">
					<br>

					<div class="row">
					
						<%ArrayList<GiocoBean> listaGiochi = (ArrayList<GiocoBean>)session.getAttribute("listaGiochi"); %>
					      
					<%
					int i;
					int size = lista.size();
					int max=3;
					int l=0;
					
					for(i=0; i < max; )  { l = i;%>	  
							
							
							
							<%if(lista.get(l).getInVendita().equals("true")){ %>
							 <div class="col-sm-4">
						  
							  	<div class="card">
							  	
							  		<div class="imgOverlay" ><img src="<%=lista.get(l).getURL()%>" alt="Avatar" style="width:100%"></div>
								  
								  <form action="DettagliProdotto" method="post">
									  	<input type="hidden" id="titolo>" name="titolo" value="<%=lista.get(l).getTitolo()%>">
									  
									  <div class="middle">
									    <div class="text1"><button type="submit" class="btn-link">Dettagli</button></div>
									   
									  </div>
								  </form> 
								  
								  <div class="container3">
								    <p><b><%=lista.get(l).getTitolo()%></b></p> 
								    <%if( lista.get(i).getPrezzoScontato() != 0 ) { %>
										<h5 style="float:right; background-image: url(./Images/steamB4.jpg); padding:5px;">
											Sconto:<%=String.format("%.0f", (lista.get(i).getPrezzo() - lista.get(i).getPrezzoScontato())*100/lista.get(i).getPrezzo())%>%
										</h5>
										<%} %>
								    <h5>Anno:<%=lista.get(l).getAnno()%></h5>
								    <h5>Prezzo:<%=lista.get(l).getPrezzo()%>&euro;</h5> 
								  </div>
								</div>
								<br><br>
						  </div>					
						<% i++;}else{ i=i+1; max=max+1; } %>


					<%} %>
					
					
					</div>
			</div>
				
				
			<div id="menu1" class="tab-pane fade">

					<h2 style="color: #f5f0f0;">Inizia la tua avventura!</h2>
					<div style="text-align: right; color:white">
						Galleria: <label class="radio-inline"> <input type="radio"
							name="radioGalleria" value="quadri" checked="checked">Griglia
						</label> <label class="radio-inline"> <input type="radio"
							name="radioGalleria" value="lista">Lista
						</label>
					</div>
					<hr style="margin-left:60%">
					<br>
					
					<div id="id_lista">
						
						<%
						
						if(listaGiochiLib !=null) {
						
						
						if(listaGiochiLib.size() == 0) {%>
						
						<br>
						<h2 style="color:white">Non possiedi ancora giochi</h2>

						<%} else { %>
							
							<% int h=0;
								for(GiocoBean g : lista) {
									if(listaGiochiLib.contains(g)){ %>
										
										<div class="row" style="background-color: rgb(0,0,0,0.2); padding-top: 10px; padding-bottom: 10px;">
											
											<div class="col-sm-4">
												<img src="<%=g.getURL()%>" alt="gioco" height="300px" style="width: 100%;">
											</div>
											
											<div class="col-sm-4"> 
												
												<b style="color: #f5f0f0; font-size:1.2em"><%=g.getTitolo()%></b> <br>
												<p style="font-size: 20px; color: #f5f0f0;">Product Keys</p>
												<div id="demo<%=h%>" class="collapse1">
													<div id="div_key" class="div_key" style="width: 90%; height:200px;color:#f5f0f0;letter-spacing: 2px;">
														<%
															int k = listaGiochiLib.indexOf(g);
															GiocoBean giocoB = listaGiochiLib.get(k);
															for (String key:giocoB.getKeys()) { %>

																<tt>><%=key%></tt>
																
																
															<% }%>
													</div>
												</div>
													
											</div>
											
											<div class="col-sm-4" id="id_lista_downl">
											
												<br>
												<div class="myProgress" id="myProgress">
													<div id="myBar<%=h%>" class="myBar">
													</div>
												</div>
												
												<div>

													<button onclick="move(<%=h %>)" class="buttonload" id="id_btn_download<%=h%>" style="background-image: url(./Images/steamB2.jpeg);width:150px;color:#f5f0f0; font-weight:500;">
														Download</button>

												</div>
												
											</div>
											
										
										</div>
										<br>
									<%h++; } %>
									
								<%} %>
						<% } %>
						
						
					</div>
					
					
					
					
					
					<div id="id_griglia">
					
						<%if(listaGiochiLib.size() == 0) {%>
						<br>
						<h2 style="color:white">Non possiedi ancora giochi</h2>

						<%} else { %>
							
							<div class="row">
							
								<% int h1=100; int q=1;
								for(GiocoBean g : lista) {
									if(listaGiochiLib.contains(g)){ %>	
									
									<div class="column" id="card_giogo<%=q%>">
										<div class="card" >
											<img src="<%=g.getURL()%>" alt="gioco" height="300px" style="width: 100%;">
											<div class="container2" style="background-image: url(./Images/steamB2.jpeg); background-repeat: round;">
												<b style="color: #f5f0f0; font-size:1.2em"><%=g.getTitolo() %></b>
												<p style="font-size: 20px; color: #f5f0f0;">Product Keys</p>
												<div id="demo<%=h1%>" class="collapse1">
													<div id="div_key" class="div_key" style="color:#f5f0f0">
														<%
														int k = listaGiochiLib.indexOf(g); 
														GiocoBean giocoB = listaGiochiLib.get(k); %>
														<% for(String key:giocoB.getKeys()) { %>
															<tt>><%=key %></tt>
														<%} %>
														</div>
														<br>
														<div class="myProgress" id="myProgress">
															<div id="myBar<%=h1%>" class="myBar">
															</div>
														</div>
														
														<p>
															<button onclick="move(<%=h1 %>)" class="buttonload" id="id_btn_download<%=h1%>" style="background-image: url(./Images/steamB2.jpeg);width:150px; color:#f5f0f0; font-weight:500;">
																Download</button>

														</p>
														
													
												</div>
											</div>
										</div>
									</div>
									
									<%h1++; q++;} %>
								<%} %>							
							</div>	
	
						<%} %>
					
					<%} %>
					</div>

				</div>	
				

					<div id="menu2" class="tab-pane fade">
					<h2 style="color:white;">Fatture</h2>
					<hr style="margin-right:60%">
					
					
					<div class="jumbotron12">
									 <div class="row" style="color:#f5f0f0;">
									  <div class="col-sm-1" style="font-weight:800;">N.
									  
									  </div>
									  <div id="id_data_ta" class="col-sm-4"style="font-weight:800;">Data
									  
									  </div>
									  <div class="col-sm-2"style="font-weight:800; ">Totale
									  
									  </div>
									  <div class="col-sm-5"style="font-weight:800; ">Dettagli
									  </div>
									</div> 
					</div>
					
					<%
						if(listaF!=null){
							int cnt=0;
							for(FatturaBean f : listaF){ %>
					
								<div class="jumbotron1" style="background-color:white">
									 <div class="row">
									  <div class="col-sm-1">
									  	<%=f.getIdFattura() %>
									  </div>
									  <div class="col-sm-4">
									  	<%=f.getDataAcquisto() %>
									  </div>
									  <div class="col-sm-2">
									  	&euro; <%=String.format("%.2f",f.getTotaleFattura())%>
									  </div>
									  <div class="col-sm-5">
									  	
											<a href="#demo1<%=cnt%>" data-toggle="collapse">Dettagli</a>
											  <div id="demo1<%=cnt%>" class="collapse">
											    
											    <table class="table table-striped">
												    <thead>
												      <tr>
												        <th>Titolo</th>
												        <th>Pezzi</th>
												        <th>Prezzo</th>
												      </tr>
												    </thead>
												    
												<tbody>
											    <%
											    
											    
											    if(listaCollocamento != null){
											    for(CollocamentoBean col : listaCollocamento) { 
											    	
											    	if(f.getIdFattura() == col.getIdFattura()){ %>
											    		
											    		<tr>
													        <td><%=col.getIdGioco() %></td>
													        <td><%=col.getPezzi() %></td>
													        <td>&euro; <%=String.format("%.2f",col.getPrezzoUnitario())%></td>
												      	</tr>
												      
											    		 
											    	<% } %>
											    	
											    <%} %>
											    <%} %>
											    </tbody>
												  </table>
												  <b>PAGATO CON </b><br>
												<%= f.getCarta() %>&ensp; <span style="float:right;">num. <%= f.getNumCarta() %></span>
											  </div>
									  </div>
									</div> 
								</div>
							<% cnt++; } %>
						<% } %>
	
				</div>


			</div>
		</div>
	</div>


	<!-- Footer -->
<%@include file="footer.jsp"%>

<script>
function move(h) {
  var elem = document.getElementById("myBar"+h);  
  
  var width = 0;
  var id = setInterval(frame, 75);
  
  
  document.getElementById("id_btn_download"+h).onclick = function()
  {
	  document.getElementById("id_btn_download"+h).disabled = true; 
  }
  
  function frame() {
    if (width >= 100) {
      clearInterval(id);
    } else {
      width++; 
      elem.style.width = width + '%'; 
      elem.innerHTML = width * 1  + '%';
    }
  }
 
}
</script>



</body>




</html>






