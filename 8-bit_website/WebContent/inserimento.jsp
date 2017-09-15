<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>8-bit Sign Up</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="./Css/inserimentoUtente.css">
  <link rel="icon" href="./Images/8-bit.png">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="Script/FormIscrizione.js"></script>
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
	  @media (max-width: 600px) {
	    .carousel-caption {
	      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
	    }
	  }
	  .bg-1 {
	      background: #2d2d30;
	      color: #bdbdbd;
	  }
	  .bg-1 h3 {color: #fff;}
	  .bg-1 p {font-style: italic;}
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

	.jumbotron{
		background-image: url(./Images/steamB.png);
		background-repeat: no-repeat;
		background-position: center top;
		background-color:#1B2838;
		border-radius: 10px 10px 10px 10px;
		padding-left:10%;
		padding-right:10%;
	}
	
	@media screen and (max-width: 550px) {
	
	
		  .container1 {
			margin: 90px 10%;	
			}

	}
	
	@media screen and (max-width: 400px) {
	
	
		  .container1 {
			margin: 90px 5%;	
			}
	}
	
	</style>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<!-- Navbar -->
		<%@include file="navbar.jsp"%>

<div class="container1">
  <div class="jumbotron">
    <h2 style="color:white">Entra nel mondo del retrogaming!</h2>      
    <p style="color:#f5f0f0">Iscriviti compilando i campi seguenti</p>
    
    <div class="container2">
  
  
  <form action="InserimentoServlet" method="post" onSubmit="return formIscrizioneValidation();">
    <div class="form-group">
      <label for="email" style="color:#f5f0f0">Email:</label>
      <input type="text" class="form-control" id="id_email" placeholder="Enter email" name="id_email">
    </div>
    <div class="form-group">
      <label for="pwd" style="color:#f5f0f0"> Nickname:</label>
      <input type="text" class="form-control" id="id_nickname" placeholder="Enter nickname" name="id_nickname">
    </div>
    <div class="form-group">
      <label for="pwd" style="color:#f5f0f0">Password:</label>
      <input type="password" class="form-control" id="id_password" placeholder="Enter password" name="id_password">
    </div>
    <div class="form-group">
      <label for="pwd" style="color:#f5f0f0">Ripeti Password:</label>
      <input type="password" class="form-control" id="id_repeatPassword" placeholder="Enter password" name="id_repeatPassword">
    </div>
    <br>
    <button type="submit" class="btn btn-default">Iscriviti!</button>
  </form>
  
  </div>
  <br>
  
  <%
						boolean flag = (boolean) session.getAttribute("controlloInserimentoUtente");

						if (session.getAttribute("controlloInserimentoUtente") != null) {
							if (!flag) {
					%>
					<div class="alert alert-danger alert-dismissable">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
						<strong>Nickname o e-mail già esistente!</strong>
					</div>
					<%
						session.setAttribute("controlloInserimentoUtente", true);
							} else {
								
							}
						}
					%>
</div>
</div>


<!-- Footer -->
<%@include file="footer.jsp"%>


</body>
</html>

