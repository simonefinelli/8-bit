<!DOCTYPE html>
<%@page import="model.ClienteBean"%>
<%@page import="model.Carrello"%>
<%@page import="model.GiocoBean"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<title>8-bit Store</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./Css/store.css">
	<link rel="icon" href="./Images/8-bit.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="Script/ordinaGiochi.js"></script>
<script src="Script/addCarrello.js"></script>
<script src="Script/LoadMoreGames.js"></script>
<script>
	$(document).ready(function(){
		$('.loader').hide();
	})
</script>
<script src="./Script/ScriptBarraRicerca.js"></script>
<style>
body {
	font: 400 15px/1.8 Lato, sans-serif;
	color: white;
}

h3, h4 {
	margin: 10px 0 30px 0;
	letter-spacing: 10px;
	font-size: 20px;
	color: #111;
}

.container1 {
	margin: 90px 7%;
	
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

b, strong {
    font-weight: 700;
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

#id_qnt {
	width: 20%;
}

#snackbar {
	visibility: hidden;
	min-width: 250px;
	margin-left: -125px;
	background-color: #333;
	color: #fff;
	text-align: center;
	border-radius: 2px;
	padding: 16px;
	position: fixed;
	z-index: 1;
	left: 50%;
	bottom: 30px;
	font-size: 17px;
}

#snackbar.show {
	visibility: visible;
	-webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
	animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

@
-webkit-keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
-webkit-keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}

}
@
keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}

.card {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    width: 100%;
    border-radius: 5px;
}

.card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
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

  
  #div_radio{
  	padding-left:13%;
  }
  
  .btn-link:hover{
  	color:#4B4B4B;
  
  text-decoration:none;
  }
  
  .btn-link{
  border:none;
  outline:none;
  background:none;
  cursor:pointer;
  
  padding:0;
  text-decoration:none;
  font-family:inherit;
  font-size:inherit;
}

#myPage{
	
	background-image: url(./Images/pattern10.jpg);
	background-repeat: repeat-y;
	
	
}

#body_interno{

background-image: url(./Images/steamB.png);
background-repeat: no-repeat;
}

.container3{

background-image: url(./Images/steamB2.jpeg);
background-repeat: repeat-x;
color:white;
-webkit-border-radius: 0px 0px 5px 5px;
}

#div_sfoglia{
	
	background-image: url(./Images/steamB3.jpg);
	background-repeat: no-repeat;
	padding:20px;
	color: #c6bfbf;
}

.loader {
  border: 11px solid #E8EAEB;
  border-radius: 50%;
  border-top: 11px solid red;
  width: 90px;
  height: 90px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 1s linear infinite;

}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

#button_load{

	font-size: 50px;
}

#id_a: hover {

	color:#72778C;
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
  		
  	#div_sfoglia {
  		    border-radius: 0px 100px 20px 0px;
  		    width:100%;
  		    margin-left:-4%;
  	}
  	
  	 a {
	    color: #fff;
	    text-decoration: none;
	}
  	
  	#id_a: hover {

	color:#72778C;
	
	
}

@media screen and (max-width: 768px) {
	
	
	#div_sfoglia {
		width:210px;
		margin-bottom:40px;
		border-radius: 10px 10px 10px 10px;
		margin-left:4%;
		margin-right:4%;
	}
}

@media screen and (max-width: 1080px) {
	
	#div_sfoglia {
		
		
		border-radius: 0px 70px 20px 0px;
		
	}
}

@media screen and (max-width: 1000px) {
	
	#div_sfoglia {
		width:120%;
		
		border-radius: 10px 10px 10px 10px;
		
	}
}

@media screen and (max-width: 788px) {
	
	#div_sfoglia {
		width:130%;
		
		border-radius: 10px 10px 10px 10px;
		
	}
}

@media screen and (max-width: 768px) {
	
	#div_sfoglia {
		width:210px;
		margin-bottom:40px;
		border-radius: 10px 10px 10px 10px;
	}
}
  	
	
</style>



</head>

<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">
	

	<!-- Navbar -->
		<%@include file="navbar.jsp"%>

	<div class="container1">
		<div class="jumbotron1">
			<h1 style="text-align: center; font-weight:900;">8-bit STORE</h1>
			<br><br>
			<div class="row">
				<div class="col-sm-2">
				
				<div id="div_sfoglia">
				<p style="font-weight: 800">Sfoglia per</p>
				
				
				
					<form>
					<div id="div_radio">
						<label class="radio"> <input type="radio" name="optradio"
							checked="checked" value="none">Ordine Alfabetico
						</label> <label class="radio"> <input type="radio" name="optradio"
							value="anno">Anno
						</label> <label class="radio"> <input type="radio" name="optradio"
							value="minore5">Prezzo pi&ugrave; basso
						</label> <label class="radio"> <input type="radio" name="optradio"
							value="maggiore5">Prezzo pi&ugrave; alto
						</label>
						</div>
					</form>
					
					</div>
				</div>

				<div id="form_giochi" class="col-sm-10">



					<div id="form_giochi1">

						<%if(session.getAttribute("listaGiochi")!=null){
			  			ArrayList<GiocoBean> lista= (ArrayList<GiocoBean>)session.getAttribute("listaGiochi");
			  			int i=0; 
			  			int p=0;
  						for(i=0;i<lista.size();i++){
  						if(lista.get(i).getInVendita().equals("true")){
  							p=p+1;
  							if(p> 9){
  						%>


						<div id="gioco_<%=p%>" class="col-sm-4" style="display: none;">
							<%}else { %>
							<div id="gioco_<%=p%>" class="col-sm-4">
								<%} %>
								<div class="card">

									<div class="imgOverlay">
										<img src="<%=lista.get(i).getURL()%>" alt="Avatar"
											style="width: 100%">
									</div>

									<form action="DettagliProdotto" method="post">
										<input type="hidden" id="titolo>" name="titolo"
											value="<%=lista.get(i).getTitolo()%>">

										<div class="middle">
											<div class="text1">
												<button type="submit" class="btn-link">Dettagli</button>
											</div>

										</div>
									</form>

									<div class="container3">
										<p>
											<b style="font-size: 21px;"><%=lista.get(i).getTitolo()%></b>
										</p>
										<%if( lista.get(i).getPrezzoScontato() != 0 ) { %>
										<h5 style="float:right; background-image: url(./Images/steamB4.jpg); padding:5px;">
											Sconto:<%=String.format("%.0f", (lista.get(i).getPrezzo() - lista.get(i).getPrezzoScontato())*100/lista.get(i).getPrezzo())%>%
										</h5>
										<%} %>
										<h5>
											Anno:<%=lista.get(i).getAnno()%>
										</h5>
											
										<h5 >
											Prezzo:<%=lista.get(i).getPrezzo()%>&euro;
										</h5>
										
										
									</div>
								</div>
								<br>
								<br>
							</div>



							<%
								}
											} 
							   			}
							%>

						</div>
						
					</div>
					
					<div class="loader" style="float:left; margin-left:54%;"></div>
					<div id="id_div_lm" style="text-align:center; margin-left:16%;">
					
							<a id="id_a"><span  id="button_load" onclick="loadMore()"><span class="glyphicon glyphicon-menu-down"></span>
							</span></a>
						</div> 
				</div>
		</div>
	</div>
	
	
	</div>

	<!-- Footer -->
<%@include file="footer.jsp"%>

</body>
</html>



