<!DOCTYPE html>
<%@page import="model.ClienteBean"%>
<%@page import="model.Carrello"%>
<%@page import="model.GiocoBean"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
<head>

<title>8-bit Dettagli Prodotto</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./Css/dettagliProdotto.css">
	<link rel="icon" href="./Images/8-bit.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="Script/ordinaGiochi.js"></script>
<script src="Script/addCarrello.js"></script>
<script src="./Script/ScriptBarraRicerca.js"></script>
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
#button_acquistaTop, #button_acquista5 {
	float: right;
}

#descrizioneGioco {
	margin-top: 5%;
}

.container2 {
	margin-top: 5%;
}

#colonna1 {
	width: 100px;
}

#colonna2 {
	width: 100%;
}

body {
  font-family: Verdana, sans-serif;
  margin: 0;
}

* {
  box-sizing: border-box;
}

.row > .column {
  padding: 0 8px;
}

.row:after {
  content: "";
  display: table;
  clear: both;
}

.column {
  float: left;
  width: 25%;
}



/* Modal Content */
.modal-content {
  position: relative;
  background-color: #fefefe;
  margin: auto;
  padding: 0;
  width: 90%;
  max-width: 1200px;
}

/* The Close Button */
.close {
  color: white;
  position: absolute;
  top: 10px;
  right: 25px;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #999;
  text-decoration: none;
  cursor: pointer;
}

.mySlides {
  display: none;
  margin-bottom: 4%;
  height:258px;
  width:100%;
  
}

.mySlides img {
	
	height:258px;
}

.cursor {
  cursor: pointer
}

/* Next & previous buttons */
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
  
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
  margin-right:15px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
  text-decoration:none;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

img {
  margin-bottom: 2px;
}

.caption-container {
  text-align: center;
  background-color: black;
  padding: 2px 16px;
  color: white;
}

.demo {
  opacity: 0.6;
}

.active,
.demo:hover {
  opacity: 1;
}

img.hover-shadow {
  transition: 0.3s
}

.hover-shadow:hover {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)
}


.jumbotron{
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)

	
}

.btn btn-default disabled {

	float: right;
}

#div_slider{

	background-image:url(./Images/steamB.png);
	box-shadow: 0 6px 10px 0 rgba(0, 0, 0, 0.4), 0 8px 22px 0 rgba(0, 0, 0, 0.30);
	
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


#div_immagine_copertina{

	margin-bottom: 10%;
	
	
}

#sfondo-slider{
		background-color: #050F18;
	background-image: url(./Images/pattern10.jpg);
	
	margin-top: 4%;
}

#id_col-sm-8 {
    margin-top: -3%;
    margin-bottom: -3%;
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

#myPage{
	
	background-image: url(./Images/pattern10.jpg);
	background-repeat: repeat-y;
	
	
}

#immagine_CopertinaGioco{
	height: 300px;
}

@media screen and (max-width: 380px) {
	
	
	#div_immagine_copertina {
		width:100%;
		
		padding:5%;
		
		
	}

	td{
		font-size: 0.82em;
	}
	
	
}

@media screen and (max-width: 351px) {
	
	
	.container1{
		margin: 90px 3%;
	}
	
	
}

@media screen and (max-width: 1000px) {
	
	
	#caption{
		font-size: 1em;
	}
	
}

@media screen and (max-width: 1200px) {
	
	.container1 {
	
		margin-left:10%;
		margin-right:10%;
	}

}

@media screen and (max-width: 900px) {
	
	.container1 {
	
		margin-left:7%;
		margin-right:7%;
	}

}

@media screen and (max-width:  768px) {
	
	#immagine_CopertinaGioco{
			height: 100%;
	}

}

</style>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">
	
	

	<!-- Navbar -->
		<%@include file="navbar.jsp"%>


	<div class="container1">
		<div class="jumbotron">
			<div id="jumbotron_interno">
			<div>
				<h2 style="color:white;">Dettagli Prodotto</h2>
				<button type="button" id="button_acquistaTop"
					class="btn btn-default"
					onclick="location.href='#descrizioneGioco';">
					<span class="glyphicon glyphicon-arrow-right"></span><span
						class="glyphicon glyphicon-shopping-cart"></span>
				</button>
				<br> <br> <br>

				<%
					GiocoBean gDettagli = (GiocoBean) request.getAttribute("GiocoDettagli");
				%>

				<div class="row">

					<div class="col-sm-12" id="sfondo-slider">
					
						<div class="col-sm-4">
						
						
							<br>
							<div id="div_immagine_copertina">
								<img id="immagine_CopertinaGioco" src="<%=gDettagli.getURL()%>" alt="avatar"
									style="width: 100%">
							</div>
	
	
						</div>
	
						<div id="id_col-sm-8" class="col-sm-8">


						<div >
							<div id="div_slider" >

								<div  class="mySlides">
									<div class="numbertext">1 / 4</div>
									<img src="<%=gDettagli.getURL1()%>" style="width: 100%;">
								</div>

								<div class="mySlides">
									<div class="numbertext">2 / 4</div>
									<img src="<%=gDettagli.getURL2()%>" style="width: 100%">
								</div>

								<div class="mySlides">
									<div class="numbertext">3 / 4</div>
									<img src="<%=gDettagli.getURL3()%>" style="width: 100%">
								</div>

								
								<%if(gDettagli.getURLVideo().equals("./Images/Giochi/default.png")) {%>
									
									<div class="mySlides">
										<div class="numbertext">4 / 4</div>
										<img src="<%=gDettagli.getURLVideo()%>" style="width: 100%">
									</div>
								
								<%} else { String path = "https://www.youtube.com/embed/"; %>
								
								<div class="mySlides">
									<div class="numbertext">4 / 4</div>
									<iframe width="100%" height="258px"
									
										<%  path = path.trim() + gDettagli.getURLVideo().trim(); %>
										
										src="<%=path%>" 
										frameborder="0" allowfullscreen></iframe>
								</div>
								
								<%} %>
								
								<a class="prev" onclick="plusSlides(-1)" >&#10094;</a> 
								<a class="next" onclick="plusSlides(1)" >&#10095;</a>

								<div class="caption-container">
									<p id="caption"></p>
								</div>


								<div class="column">
									<img class="demo cursor" src="<%=gDettagli.getURL1()%>"
										style="width: 100%" onclick="currentSlide(1)"
										alt="Entra nel mondo di <%=gDettagli.getTitolo()%>">
								</div>
								<div class="column">
									<img class="demo cursor" src="<%=gDettagli.getURL2()%>"
										style="width: 100%" onclick="currentSlide(2)"
										alt="Foto1">
								</div>
								<div class="column">
									<img class="demo cursor" src="<%=gDettagli.getURL3()%>"
										style="width: 100%" onclick="currentSlide(3)"
										alt="Fotot2">
								</div>
								<div class="column">
									<img class="demo cursor" src="./Images/YT.jpg"
										style="width: 100%" onclick="currentSlide(4)"
										alt="Trailer">
								</div>
							</div>

						</div>


					</div>

					</div>

					

					<div class="col-sm-12">

						<div id="descrizioneGioco">

							<a href="#demo" class="btn btn-info" data-toggle="collapse"
								id="toggle_descrizione">Descrizione</a>

							<div id="demo" class="collapse" style="color:white; margin-top:10px; text-align:justify;">
								<%=gDettagli.getDescrizione()%>
								...<a href="https://it.wikipedia.org/wiki/Pagina_principale">continua su wikipedia!</a>
							</div>

						</div>


						<div class="container2">
							<h2 id="segnaPosto" style="color:white"><%=gDettagli.getTitolo()%></h2>

							<table class="table table-striped">
								<thead>
									<tr>
										<th id="colonna1"></th>
										<th id="colonna2">
										
									</tr>
								</thead>
								<tbody>
									<tr style="color:black">
										<td class="td_classTable">Titolo:</td>
										<td id="id"><%=gDettagli.getTitolo()%></td>

									</tr>
									<tr style="color:white">
										<td class="td_classTable">Prezzo:</td>
										<td>&euro; <%=String.format("%.2f",gDettagli.getPrezzo())%></td>

									</tr>
									<tr style="color:black">
										<td class="td_classTable">Prezzo Scontato:</td>
										<%if(gDettagli.getPrezzoScontato() == 0.0) {%>
										
											<td>___</td>
											
										<%} else {%>
											
											<td>&euro; <%=String.format("%.2f", gDettagli.getPrezzoScontato())%></td>
											
										<%} %>
									</tr>
									<tr style="color:white">
										<td class="td_classTable">Anno:</td>
										<td><%=gDettagli.getAnno()%></td>

									</tr>
									<tr style="color:black">
										<td class="td_classTable">Genere:</td>
										<td><%=gDettagli.getGenere()%></td>

									</tr>
									<tr style="color:white">
										<td class="td_classTable">Console:</td>
										<td><%=gDettagli.getConsole()%></td>

									</tr>
									<tr style="color:black">
										<td class="td_classTable">SoftwareHouse:</td>
										<td><%=gDettagli.getSoftwarehouse()%></td>

									</tr>
									<tr style="color:white">
										<td class="td_classTable">Lingua:</td>
										<td>Inglese</td>

									</tr>
								</tbody>
							</table>
						</div>


						<div id="dettagli_gioco" class=div_infoGioco>

							<form action="CarrelloServlet" method="post">
								<input type="hidden" id="titolo" name="titolo"
									value="<%=gDettagli.getTitolo()%>">


								<div id="id_qnt">
									<p>
										<span style="color:white">Quantit&agrave;</span> <input type="number" id="input_qnt" name="qnt"
											class="form-control bfh-number" min="1" value="1" required style="color:black; font-weight:500; width:80px;">
									</p>
									<br>
								</div>

								<% if (c != null && c.getNickname().equals("admin")) { %>
								
								<button type="button" class="btn btn-default disabled"><span class="glyphicon glyphicon-arrow-right"></span><span
										class="glyphicon glyphicon-shopping-cart"></span></button>
								
								<%} else { %>
									<button type="submit" id="button_acquista5"
										class="btn btn-default" >
										<span class="glyphicon glyphicon-arrow-right"></span><span
											class="glyphicon glyphicon-shopping-cart"></span>
									</button>
								<%} %>
								
							</form>

						</div>

					</div>

				</div><!-- fine row -->
				<br>

			</div>
		</div>
		</div>
	</div>


	<!-- Footer -->
<%@include file="footer.jsp"%>


	

	<script>
		var slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
			showSlides(slideIndex += n);
		}

		function currentSlide(n) {
			showSlides(slideIndex = n);
		}

		function showSlides(n) {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("demo");
			var captionText = document.getElementById("caption");
			if (n > slides.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = slides.length
			}
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			captionText.innerHTML = dots[slideIndex - 1].alt;
		}
	</script>


</body>
</html>





