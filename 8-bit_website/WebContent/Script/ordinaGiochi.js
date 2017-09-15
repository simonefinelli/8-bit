$(document).ready(function(){
  		$('input[type=radio][name="optradio"]').change(function(){
  			var x = this.value;
  			$.ajax({
  	  			type:"get",
  	  			url:"OrdinaServlet?"+ x +"=0",
  	  			success:function(result){
  	  			    var url="OrdinaServlet?"+ x +"=0";
  	  				$('#form_giochi1').load(" #form_giochi1");
  	  			
  	  			$('#button_load').show();
  	  			}
  	  		})
  			
  		})
  	})