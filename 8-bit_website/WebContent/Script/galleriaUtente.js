$(document).ready(function(){
	
	$('#id_lista').hide();
		$('#id_griglia').show();
	
  		$('input[type=radio][name="radioGalleria"]').change(function(){
  			var x = this.value;
  			
  			if(x == "quadri"){
  				
  				$('#id_lista').hide();
  				$('#id_griglia').show();
  				
  				
  			} else {
  				
  				$('#id_lista').show();
  				$('#id_griglia').hide();
  				
  				
  			}
  			
  		})
  	})