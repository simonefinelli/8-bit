<!DOCTYPE html>
<%@page import="model.ClienteBean"%>
<%@page import="model.Carrello"%>
<html lang="en">
<head>

<title>8-bit News</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./Css/news.css">
	<link rel="icon" href="./Images/8-bit.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

body {
	font-family: Verdana, sans-serif;
	margin: 0;
}

* {
	box-sizing: border-box;
}

.row>.column {
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

/* The Modal (background) */
.modal {
	display: none;
	position: fixed;
	z-index: 1;
	padding-top: 100px;
	left: 0;
	margin-top: 0%;
	padding-top: 9%;
	padding-bottom:40%;
	width: 100%;
	height: 90%;
	overflow: auto;
	background-color: rgba(20, 20, 20, 0.9);
	
}

/* Modal Content */
.modal-content {
	position: relative;
	background-color: #000000;
	margin: auto;
	padding: 0;
	width: 30%;
	max-width: 600px;
	filter: alpha(opacity=10); 
}

/* The Close Button */
.close {
	color: white;
	position: absolute;
	top: 15%;
	right: 4%;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #999;
	text-decoration: none;
	cursor: pointer;
}

.mySlides {
	display: none;
}

.cursor {
	cursor: pointer
}

/* Next & previous buttons */
.prev, .next {
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
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
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
	margin-bottom: -4px;
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

.active, .demo:hover {
	opacity: 1;
}

img.hover-shadow {
	transition: 0.3s
}

.hover-shadow:hover {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19)
}


.jumbotron{
	background-image: url(./Images/steamB.png);
	background-repeat: no-repeat;
	background-position: center top;
	background-color:#1B2838;
	border-radius: 10px 10px 10px 10px;
}

.jumbotron{
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)

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

#id_titolo_GS {

	text-align:center;
	color:#fff;
	font-size:3em;
}

#id_GS {
	
	text-align:center;
	color:#c6bdbd;
	font-size: 50px; font-size:2.5em;
	margin-bottom:-20px;
}

#id_parg_GS {
	
	color:white;
	text-align:justify;
	
}

#myPage{
	
	background-image: url(./Images/pattern10.jpg);
	background-repeat: repeat-y;
	
	
}

.container2{
	padding-left:10%;
	padding-right:10%;
	padding-top:80px;
	padding-bottom:5%;
}


@media screen and (max-width: 1000px) {
	
	
	#id_titolo_GS {

		font-size:2.4em;
	}

	#id_GS {
	
		font-size: 50px; font-size:1.9em;
		
	}
	
	.container1{
		margin: 90px 10%;
	}
}

@media screen and (max-width: 768px) {
	
	
	#id_titolo_GS {

		font-size:2.2em;
	}

	#id_GS {
	
		font-size: 50px; font-size:1.8em;
		
	}
	
	
}


@media screen and (max-width: 500px) {
	
	
		#id_titolo_GS {

		font-size:1.9em;
	}

	#id_GS {
	
		font-size: 50px; font-size:1.6em;
		
	}
	
}

@media screen and (max-width: 400px) {
	
	
		#id_titolo_GS {

		font-size:1.9em;
	}

	#id_GS {
	
		font-size: 50px; font-size:1.6em;
		
	}
	
	.container1{
		margin: 90px 3%;
	}
	
}



</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

	
		<!-- Navbar -->
		<%@include file="navbar.jsp"%>
	
	<div class="container1">
		<div id="id_jumbo"  class="jumbotron">
		
			
			<h1 id="id_titolo_GS">Gioco della settimana!</h1>
			<br>
			<h2 id="id_GS"> Super Metroid</h2>
			

			<div class="container2">

				<div class="row">

					<div class="col-sm-4">

						<img id="img_samusAran" src="./Images/sa2.jpg" alt="sa2.jpg" width="100%"
							height="100%" onclick="openModal();currentSlide(1)"
							class="hover-shadow cursor">

					</div>



					<div id="myModal" class="modal">
						<span class="close cursor" onclick="closeModal()">&times;</span>
						<div class="modal-content" style="width:550px">

							<div class="mySlides">
								<div class="numbertext">1 / 4</div>
								<img src="./Images/sa4.jpg" style="width: 100%">
							</div>

							<div class="mySlides">
								<div class="numbertext">2 / 4</div>
								<img src="./Images/sa3.png" style="width: 100%">
							</div>

							<div class="mySlides">
								<div class="numbertext">3 / 4</div>
								<img src="./Images/sa5.jpg" style="width: 100%">
							</div>

							<div class="mySlides">
								<div class="numbertext">4 / 4</div>
								<img src="./Images/m2.jpg" style="width: 100%">
							</div>

							<a class="prev" onclick="plusSlides(-1)" style="text-decoration: none;">&#10094;</a> 
							<a class="next" onclick="plusSlides(1)" style="text-decoration: none;">&#10095;</a>

							<div class="caption-container">
								<p id="caption"></p>
							</div>


							<div class="column">
								<img class="demo cursor" src="./Images/sa4.jpg"
									style="width: 100%" onclick="currentSlide(1)"
									alt="Vesti i panni della fantastica Samus!">
							</div>
							<div class="column">
								<img class="demo cursor" src="./Images/sa3.png"
									style="width: 100%" onclick="currentSlide(2)"
									alt="Affronta avversari invincibili...">
							</div>
							<div class="column">
								<img class="demo cursor" src="./Images/sa5.jpg"
									style="width: 100%" onclick="currentSlide(3)"
									alt="...sfida i boss più temuti...">
							</div>
							<div class="column">
								<img class="demo cursor" src="./Images/m2.jpg"
									style="width: 100%" onclick="currentSlide(4)"
									alt="...raggiungi la Gloria!">
							</div>
						</div>
					</div>

				
				<div id="id_parg_GS" class="col-sm-8">Lorem ipsum dolor sit amet, consectetur
					adipiscing elit. Sed mattis tortor augue, et malesuada orci
					efficitur nec. Vivamus sodales orci eget leo aliquam elementum.
					Maecenas tempus hendrerit enim, a pretium est congue et. Donec nec
					blandit tellus. Quisque dictum lacinia rutrum. Maecenas egestas
					elementum convallis. Donec quis dictum neque, eget tristique
					mauris. Nam aliquet elementum malesuada. Donec fringilla lorem
					libero, et scelerisque massa pharetra in. Vestibulum neque quam,
					facilisis non mauris ut, ultricies tincidunt ex. Ut ligula quam,
					gravida non interdum vitae, pellentesque nec odio. Quisque in
					volutpat purus, at tristique arcu. Vestibulum dignissim magna sed
					erat accumsan, hendrerit blandit libero facilisis. Nunc blandit
					lectus sit amet quam sodales, et tincidunt elit fringilla. Donec at
					lobortis tellus. Praesent iaculis ligula malesuada iaculis
					consequat. Curabitur quis sem at velit sagittis lacinia nec nec
					nisi. Quisque aliquet dolor sit amet faucibus vulputate. Sed ornare
					tellus leo, eu vehicula ex ullamcorper vitae. Ut vel leo lacus.
					Nulla dictum dolor a felis sagittis fringilla. Vestibulum sit amet
					ornare quam, vitae convallis dolor. Curabitur purus leo, tempus a
					varius nec, fringilla vel massa.
					
					</div>
					</div>
			</div>
		</div>
	</div>
	

	<!-- Footer -->
<%@include file="footer.jsp"%>

	<script>
	
		function openModal() {
		  document.getElementById('myModal').style.display = "block";
		}
		
		function closeModal() {
		  document.getElementById('myModal').style.display = "none";
		}
		
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
		  if (n > slides.length) {slideIndex = 1}
		  if (n < 1) {slideIndex = slides.length}
		  for (i = 0; i < slides.length; i++) {
		      slides[i].style.display = "none";
		  }
		  for (i = 0; i < dots.length; i++) {
		      dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";
		  dots[slideIndex-1].className += " active";
		  captionText.innerHTML = dots[slideIndex-1].alt;
		}
	</script>

</body>
</html>