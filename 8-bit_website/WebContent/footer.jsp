<!-- Footer -->
<footer class="text-center">

  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  
   <div class="container-fluid">
        
            <!--First column-->
            <div class="col-md-4">
                <h5 class="title1">Contatti</h5>
                <br>
                <p>alfrex@mail.com<br>giacomix@mail.com</p>
                
            </div>
            <!--/.First column-->

            <!--Second column-->
            <div class="col-md-4">
            <h5 class="title1">Follow Us</h5>
            <br>
			<a href="https://www.facebook.com/"><img src="./Images/iconF.png" alt="gioco1" width="50" height="50" hspace="20"> </a>
			             
			<a href="https://www.twitter.com/"><img src="./Images/iconT.png" alt="gioco1" width="50" height="50" hspace="20"> </a>
			        
			<a href="https://www.youtube.com/"><img src="./Images/iconY.png" alt="gioco1" width="50" height="50" hspace="20"> </a>        
			</div>
            <!--/.Second column-->
            
            
            
            <!--Third column-->
            <div class="col-md-4">
                <h5 class="title1">Newsletter</h5><br>
                <p>Mantieni aggiornato iscrivendoti alla nostra </p>
                <a href="newsletter.jsp"><span class="glyphicon glyphicon-chevron-right"></span> Newsletter <span class="glyphicon glyphicon-chevron-left"></span></a>
                
            </div>
            <!--/.Third column-->
        
    </div>
    <!--/.Footer Links-->

    <!--Copyright-->
    <div class="footer-copyright">
        <div class="container-fluid">
        	<br>
           <p>Made By <a href="Alfredo_Homepage.html" target="_blank">Alfrex</a>, <a href="Giacomo_Home.html" target="_blank">Giacomix</a>, <a href="Simone_home.html" target="_blank">Simox</a></p>
           <p>DISCLAIMER: THIS WEBSITE IS JUST FOR DIDACTICAL PURPOSE!</p> 

        </div>
    </div>
    <!--/.Copyright-->
  
</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>
