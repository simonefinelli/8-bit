<%@page import="java.util.ArrayList"%>
<%@page import="model.GiocoBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="model.ClienteBean"%>
<%
	ClienteBean c = (ClienteBean)session.getAttribute("currentSessionUser");
	if(c == null) {
		response.sendRedirect("logIn_SignIn.jsp");
		return;
	}
	else{
		if(!c.getNickname().equals("admin")){
			response.sendRedirect("logIn_SignIn.jsp");
			return;
		}
	}
%>
<html lang="en">
<head>
  <title>8-bit Admin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="./Css/admin.css">
  <link rel="icon" href="./Images/8-bit.png">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="./Script/FormInserimentoGioco.js"></script>
  
  <script>
  
  $(document).ready(function(){
	  
		$('#id_gioco_copertina').hide();
		$('#id_browsImage').change(function(){
			
			var urlSporca = $("input[name='url_image']").val() ;
			
			var url = urlSporca.replace(/C:\\fakepath\\/i, '');
				
			if(url != ""){
				
				$('#id_gioco_copertina').attr('src', "./Images/Giochi/"+url);
				$('#id_gioco_copertina').show();
			}
		})
	})
  
  </script>
  
  
  
  <script> 
  
  $(document).ready(function(){
	  $('#gioco_img').hide();
	  $('#btn_img').hide();
		$('#select_EG').change(function(){
			
			var url = this.options[this.selectedIndex].getAttribute('id');
			if(url!=""){
			$('#gioco_img').attr('src', url);
			$('#gioco_img').show();
			$('#btn_img').css("margin-top", "17%");
			$('#btn_img').css("margin-right", "7%");
			$('#btn_img').show();
			} else {
				$('#btn_img').hide();
				$('#btn_img').css("margin-top", "0");
				$('#btn_img').css("margin-right", "0");
				$('#gioco_img').hide();
			}
			
		})
		
	})
  
  </script>


<script>
	
$(document).ready(function(){
		
		
		$('#label_Sconto').hide();
		$('#id_prezzo_sconto').hide();
		$('#id_check').change(function(){
			if ($('#id_check').is(':checked')) {
				
				
				$('#label_Sconto').show();
				$('#id_prezzo_sconto').show();
				
				
				
			} else {
				$('#label_Sconto').hide();
				$('#id_prezzo_sconto').hide();
				
			
			}
		})
		

	})
</script>

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
		margin: 90px 12%;
	
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
	  
	  #id_browsImage, #id_browsImage1, #id_browsImage2, #id_browsImage3 { 
	  	padding-bottom: 11%;
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



#id_inserisciG, #id_eliminaG{
	text-decoration: none;
}

#id_h1_admin{
		font-size:3.2em;
	}
	
	#gioco_img{
		width:30%;
	}

@media screen and (max-width: 450px) {
	
	
	.container1 {
		margin: 90px 3%;
	}
	
	
}

@media screen and (max-width: 768px) {
	
	
	#id_h1_admin{
		font-size:2em;
	}
	
}

@media screen and (max-width: 350px) {

	
	#gioco_img{
		width:100%;
	}
	
}


</style>





</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="home2.jsp"><img id="immagine_8bit" src="./Images/8-bit.png" width="200" height="70" /></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      	<li><a href="logout"><span class="glyphicon glyphicon-log-out"></span></a></li>
        
      </ul>
    </div>
  </div>
</nav>

<div class="container1">
  <div class="jumbotron">
    <h1 id="id_h1_admin"style="color: white;">Area Admin!</h1>
    <br><br>
    <div class="container2">
    
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h2 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"id="id_inserisciG">INSERISCI UN GIOCO</a>
        </h2>
      </div>
      <div id="collapse1" class="panel-collapse collapse out">
        <div class="panel-body">
        
        	 <div class="container3">
        	 
        	 
			  <form action="InserimentoGiocoServlet" method="post" onSubmit="return formInserimentoGiocoValidation();">
			  
			  
			  <div class="col-sm-6" >
			  
			    <div class="form-group">
			      <label for="pwd">Titolo:</label>
			      <input type="text" class="form-control" id="titolo_gioco" placeholder="Enter Titolo" name="titolo_gioco">
			    </div>
			    <div class="form-group">
			      <label for="pwd">Prezzo:</label>
			      <input type="text" class="form-control" id="id_prezzo" placeholder="Enter Prezzo" name="prezzo_gioco">
			    </div>
		<div id="id_div">	    
			    <div class="checkbox">
				  <label><input id="id_check" type="checkbox" value="true" name="inSconto_gioco">In Sconto</label>
				</div>
			    
			     <div id="id_class_prezzoS" class="form-group">
			      <label id="label_Sconto" for="pwd">Sconto(%):</label>
			      <input type="text" class="form-control" id="id_prezzo_sconto" placeholder="Enter Prezzo" name="prezzo_gioco_sconto">
			    </div>
		</div>
			    <div class="form-group">
			      <label for="pwd">Anno:</label>
			      <input type="text" class="form-control" id="id_anno" placeholder="Enter Anno" name="anno_gioco">
			    </div>
			    
			     <div class="form-group">
			        <label for="pwd">Console:</label>
			            <select class="form-control" id="console_combo" name="console_combo">
			                <option value="">Scegli la console</option>
			                <option value="SNES">SNES</option>
			                <option value="NINTENDO 64">NINTENDO 64</option>
			                <option value="NINTENDO 64">NES</option>
			                <option value="GameBoy Color">GameBoy Color</option>
			                <option value="Mega Drive">Mega Drive</option>
			                <option value="Arcade">Arcade</option>
			                <option value="Sega Saturn">Sega Saturn</option>
			                <option value="Super Nintendo">Super Nintendo</option>
			                <option value="Dreamcas">Dreamcast</option>
			                <option value="PlayStation">PlayStation</option>
			            </select>
			     </div>
			    
			    
			    <div class="form-group">
			        <label for="pwd">Softwarehouse:</label >
			            <select class="form-control" id="sh_combo" name="sh_combo">
			                <option value="">Scegli la Softwarehouse</option>
			                <option value="Atari">Atari</option>
			                <option value="Capcom">Capcom</option>
			                <option value="Namco">Namco</option>
			                <option value="Nintendo">Nintendo</option>
			                <option value="Sega">Sega</option>
			                <option value="Sony">Sony</option>
			                <option value="Ubisoft">Ubisoft</option>
			                
			            </select>
			     </div>
			     
			     
			     <div class="form-group">
			        <label for="pwd">Categoria:</label >
			            <select class="form-control" id="id_genere" name="genere_gioco">
			                <option value="">Scegli la categoria</option>
			                <option value="Avventura">Avventura</option>
			                <option value="Azione">Azione</option>
			                <option value="Combattimento">Combattimento</option>
			                <option value="Platformer">Platformer</option>
			                <option value="Puzzle">Puzzle</option>
			                <option value="Racing">Racing</option>
			                <option value="RPG">RPG</option>
			                <option value="Shoot em Up">Shoot'em Up</option>
			            </select>
			     </div>
			     
			     <div class="form-group">
				      <label for="comment">Descrizione:</label>
				      <textarea class="form-control" rows="5" id="id_descrizione" name="descrizione_gioco"></textarea>
				    </div>
				    
				    
				    
			     </div>
			     
			     <div class="col-sm-6" >
			     
						     <div class="form-group" id="label_imgIns">
						      <label for="pwd" >Copertina gioco:</label>
						      <input type="file" class="form-control" id="id_browsImage" placeholder="Enter Image" name="url_image">
						      <img id="id_gioco_copertina" src="" style="width: 160px; height:200px; margin-top:2%">
						    </div>
						    
						    <div class="form-group">
						      <label for="pwd">Immagine 1 galleria gioco:</label>
						      <input type="file" class="form-control" id="id_browsImage1" placeholder="Enter Image" name="url_image1">
						    </div>
						    
						    <div class="form-group">
						      <label for="pwd">Immagine 2 galleria gioco:</label>
						      <input type="file" class="form-control" id="id_browsImage2" placeholder="Enter Image" name="url_image2">
						    </div>
						    
						    <div class="form-group">
						      <label for="pwd">Immagine 3 galleria gioco:</label>
						      <input type="file" class="form-control" id="id_browsImage3" placeholder="Enter image" name="url_image3">
						    </div>
						    
						    <div class="form-group">
						      <label for="pwd">Video Gioco:</label>
						      <input type="text" class="form-control" id="id_vGioco" placeholder="Enter Url" name="video_gioco">
						    </div>
						    
				    
				  
			    </div>
			    
			    	<button type="submit" class="btn btn-default" style="margin-top:30px;margin-right:1.8%; float:right;">Inserisci!</button>
			  </form>
			  
		</div>
        	
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h2 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2" id="id_eliminaG">ELIMINA UN GIOCO</a>
        </h2>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">

			<div class="container3">
				<form action="EliminaGioco">
				<div class="form-group">
			        <label for="pwd">Gioco:</label>
			            <select id="select_EG" class="form-control" name="giocoElim_combo">
			                <option value="" id="">Scegli Gioco</option>
			                
			                <%ArrayList<GiocoBean> lista =  (ArrayList<GiocoBean>)session.getAttribute("listaGiochi");
			                for(GiocoBean g :  lista) {
			                	if(g.getInVendita().equals("true")){
			                %>
			                	<option value="<%=g.getTitolo()%>" id="<%=g.getURL()%>"><%=g.getTitolo()%></option>
			                
			                <%} } %>
			                
			            </select>
			     </div>

			     	<div >
			     		<img id="gioco_img" src="/" style="height:45%">
			     		<button class="btn btn-default" id="btn_img" type="submit" style="float:right;">Elimina Gioco</button>
			     	</div>
			     		
				</form>
			</div>
			
		</div>
      </div>
    </div>
    
  </div> 
</div>

					<%
						boolean flag = (boolean) session.getAttribute("controlloAdminInserimento");

						if (session.getAttribute("controlloAdminInserimento") != null) {
							if (!flag) {
					%>
					<div class="alert alert-success">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
						<strong>Gioco inserito correttamente!</strong>
					</div>
					<%
						session.setAttribute("controlloAdminInserimento", true);
							} else {
								
							}
						}
					%>  
					
					<%
						boolean flag2 = (boolean) session.getAttribute("controlloAdminEliminazione");

						if (session.getAttribute("controlloAdminEliminazione") != null) {
							if (!flag2) {
					%>
					<div class="alert alert-success">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
						<strong>Gioco eliminato correttamente!</strong>
					</div>
					<%
						session.setAttribute("controlloAdminEliminazione", true);
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

