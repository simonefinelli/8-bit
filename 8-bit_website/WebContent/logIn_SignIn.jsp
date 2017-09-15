<%@page import="model.Carrello"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% ClienteBean c = (ClienteBean)session.getAttribute("currentSessionUser");

if(c!=null){
	if(c.getNickname().equals("admin")){
		response.sendRedirect("admin.jsp");
		return;
	}
	if(!c.getNickname().equals("admin")){
		response.sendRedirect("areaUtente.jsp");
		return;
	}
}
%>

<%@page import="model.ClienteBean"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>8-bit LogIn/SignUp</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./Css/logIn_SignIn.css">
	<link rel="icon" href="./Images/8-bit.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="./Script/ScriptImage.js"></script>
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
	width:44px;
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

form {
	border: 0px solid #f1f1f1;
}


input[type=text], input[type=password] {
	width: 100%;
	padding: 10px 15px;
	margin: 4px 0;
	margin-bottom: 5px;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 16px;
	margin-top: 30px;
	border: none;
	cursor: pointer;
	width: 30%;
	align: center;
}

button:hover {
	opacity: 0.8;
}

#id_checkbox {
	margin-top: 30px;
}

}
span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}

#Immagine1 {
	
	margin-left: 95px;
	margin-top: 30px;
}

#Immagine2 {
	display: block;
	margin-left: 30%;
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
	padding-left:5%;
	padding-right:5%;
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

#ImmagineIscriviti {
	
	float:right;
	width: 30%;
}

@media screen and (max-width: 1100px) {
	

	#Immagine2 {
	display: block;
	margin-left: 28%;
	}
	
}

@media screen and (max-width: 380px) {
	
	
	.container1 {
	margin: 90px 5%;
	
}
	
}


</style>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">

	<!-- Navbar -->
	<jsp:include page="navbar.jsp" />

	<div class="container1">
		<div class="jumbotron">

			<div class="row">
				<div class="col-sm-6">

					<h2 style="color:white">Log In</h2>
					<br>
					<form action="LogInServlet">


						<div class="container2">
						
							<label><b style="color:#f5f0f0">Nickname</b></label> <input type="text"
								placeholder="Enter Nickname" name="nickname" id="input_nickname" required> <label><b style="color:#f5f0f0">Password</b></label>
								
							<input type="password" placeholder="Enter Password" name="psw" id="pass_login" required>

							<button type="submit" class="btn btn-default" style="width:120px">Entra!</button>
							<br> <input type="checkbox" checked="checked"
								id="id_checkbox"> Remember me
						</div>

					</form>

					<%
						boolean flag = (boolean) session.getAttribute("controlloLogIn");

						if (session.getAttribute("controlloLogIn") != null) {
							if (!flag) {
					%>
					<div class="alert alert-danger alert-dismissable">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
						<strong>Nickname</strong> o <strong>Password</strong> errati!
					</div>
					<%
						session.setAttribute("controlloLogIn", true);
							} else {
								
							}
						}
					%>

				</div>
				<div class="col-sm-6">

					<h2 style="color:white">Non hai un account?...</h2> 
					<div style="text-align:center;">
					<p style="color:#f5f0f0; font-weight:300">Inizia a far parte del Retrogaming World</p>
					<img src="./Images/iscriviti.png" width="130px" height="100px" id="ImmagineIscriviti">
					</div>
					
					<div class="container2">

						<br>
						
							<div style="text-align: center;">
								<a href="inserimento.jsp"> 
								
								<img onmouseover="OnMoveImage()" onmouseout="OutMoveImage()" src="./Images/cube.png"
									width="50px" height="50px" id="Immagine1">
								
							</a>
							
						</div>
						
						<br> <br>

						<div class="blk" id="img_2">
							<img src="./Images/sm.png" width="100px" height="100px" id="Immagine2">
						</div>

					</div>


				</div>


			</div>
		</div>
	</div>

	<!-- Footer -->
<%@include file="footer.jsp"%>



</body>
</html>

