<!DOCTYPE html>
<%@page import="model.Carrello"%>
<%@page import="model.ClienteBean"%>
<html lang="en">
<head>

  <title>Benvenuti su 8-bit</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="./Css/home2.css">
  <link rel="icon" href="./Images/8-bit.png">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="./Script/getGiochi.js"></script>
  <script src="./Script/getGiochiCollocamento.js"></script>
  <script src="./Script/ScriptBarraRicerca.js"></script>
  <%System.out.println("Lista giochi in home "+ session.getAttribute("listaGiochi")); %>
  <%session.setAttribute("controlloLogIn", true);
  session.setAttribute("controlloAdminInserimento", true);
  session.setAttribute("controlloAdminEliminazione", true);
  session.setAttribute("controlloInserimentoUtente", true);
  session.setAttribute("flagNewEmail", false);
  session.setAttribute("flagNotNewEmail", false);%>
  
  <style>
 		
  		
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

	#id_paragrafo{
	
		color: white;
	text-align: justify;
		font-size:1.2em;
		
	}
	
	
  </style>
  
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<!-- Navbar -->
		<%@include file="navbar.jsp"%>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="./Images/ml1.jpg" alt="gioco1">
        <div class="carousel-caption">
          <h3>Metal Slug</h3>
          <p class="p_slider">Combatti al fianco di impavidi eroi!</p>
        </div>      
      </div>

      <div class="item">
        <img src="./Images/smsb1.jpg" alt="gioco2">
        <div class="carousel-caption">
          <h3>Super Smash Bros</h3>
          <p class="p_slider">Lanciati nella lotta!</p>
        </div>      
      </div>
    
      <div class="item">
        <img src="./Images/rmart.jpg" alt="gioco3">
        <div class="carousel-caption">
          <h3>Rayman</h3>
          <p class="p_slider">Cambia le sorti del mondo!</p>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>



<!-- Container (The Band Section) -->
<div id="band" class="container text-center">
  <h3 style="font-weight: 900">IL RETROGAMING</h3>
  <p id="id_paragrafo"> Il termine retrogaming è un neologismo inglese che indica la passione per i videogiochi del passato.

		In genere i retrogamers hanno accesso a videogiochi di una precedente generazione grazie all'utilizzo delle console originali, ma spesso ricorrono a particolari emulatori, visto che nella maggior parte dei casi i titoli da loro giocati non sono più rintracciabili sul mercato.

		Tra le console maggiormente utilizzate da questi collezionisti ci sono: Atari 2600, Intellivision, Colecovision, Nintendo Entertainment System (NES), Sega Master System e Sega Mega Drive.
				
		Gli albori: gli anni quaranta e cinquanta[modifica | modifica wikitesto] 1947: Il primo gioco elettronico[modifica | modifica wikitesto]
				
		Il 1947 è l'anno in cui è stato progettato il primo gioco destinato ad essere giocato su di un tubo catodico (CRT), ideato da Thomas T. Goldsmith Jr. e Estle Ray Mann. La richiesta all'ufficio brevetti americano venne depositata in data 25 gennaio 1947, e ufficializzata il 14 dicembre 1948 con il nome di Cathode-ray tube amusement device, con il numero 2 455 992.[1] Nonostante la data di registrazione riporti l'anno 1947, è del tutto probabile che il gioco sia stato ideato durante il 1946.

		Il sistema (all'epoca non esisteva ancora il concetto di hardware e software) utilizzava otto valvole termoelettroniche (quattro triodi 6Q5 e quattro tetrodi 6V6) e rappresentava, ispirandosi agli schermi radar usati durante la seconda guerra mondiale, il lancio di un missile verso un bersaglio. A quel tempo la grafica non poteva essere disegnata elettronicamente sullo schermo, così i progettisti decisero di applicare delle etichette stampate su pellicola trasparente nei punti in cui si trovavano i bersagli da colpire; un espediente simile sarà utilizzato anche con il Magnavox Odyssey, per simulare i colori negli schermi in bianco e nero.<br> In un periodo limitato di tempo il giocatore, ruotando delle manopole che permettevano di regolare la traiettoria e la velocità di un punto, avrebbe dovuto spostare quest'ultimo su di un aereo, e premere un pulsante: nel caso le coordinate corrispondessero a quelle predeterminate, il tubo avrebbe simulato una esplosione.

		A causa degli elevati costi di produzione, il sistema non venne mai messo in commercio, e non andò mai oltre la fase di prototipo.
			 	
		1952.
				
		Nel 1952 all'Università di Cambridge, A.S. Douglas sviluppò OXO, una versione grafica del gioco del tris, per dimostrare una sua tesi sull'interazione uomo-macchina.<br> OXO è stato giocato su di un computer EDSAC, che utilizzava un tubo catodico (CRT) come schermo. Attualmente è possibile giocare a OXO tramite un emulatore per sistema EDSAC.

		1958: Tennis for Two.
				
		Nel 1958 William Higinbotham creò un gioco chiamato Tennis for Two per intrattenere i visitatori del Brookhaven National Laboratory di New York (un laboratorio di ricerca nucleare)[3].<br> Diversamente da Pong e dai suoi vari cloni, Tennis for Two, visualizzato su di un oscilloscopio, mostrava un campo da tennis visto lateralmente.<br> Il gioco poteva essere giocato da due persone tramite due plance formate da una manopola per regolare la traiettoria, ed un pulsante per lanciare la palla. Il lancio, per avere successo, doveva scavalcare la rete e la traiettoria della palla era influenzata da un algoritmo che simulava la forza di gravità.<br> Tennis for Two rimase in mostra al Brookhaven National Laboratory per due anni, fino al 1959, anno in cui venne rimosso.<br>

		Gli anni sessanta.
				
		Molti dei primi videogiochi giravano sui mainframe delle università degli Stati Uniti, ed erano sviluppati da studenti che li programmavano durante il tempo libero.<br> Tuttavia, la scarsa disponibilità dei primi computer ha significato per questi giochi l'inesorabile caduta nel dimenticatoio.<br></p>
  <br>
  
</div>

<!-- Footer -->
<%@include file="footer.jsp"%>

</body>
</html>