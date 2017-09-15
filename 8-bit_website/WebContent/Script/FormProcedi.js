function formProcediValidation(){
	
	var card = $( 'select[name=tipoCarta] option:selected' ).val();
	var numberCard = $( "input[name='numCard']" ).val();
	
	

				
	if(card_validation(card)) {
					
		if(numberCard_validation(numberCard)) {
			return true;
		}
	}
	
	
	return false;
	
}



function card_validation(card){
	
if( card.length == 0 ){
		
		$('#id_tipoCarta').css({'background-color' : '#F2DEDE'});
	
		return false;
		
	} else {
		
		return true;
	}
}


function numberCard_validation(numberCard){
	
	
	if(!numberCard.match(/^[0-9]{16}$/)) {
		
		$('#id_numCard').css({'background-color' : '#F2DEDE'});
		$('#id_numCard').attr("placeholder", "Inserire 16 valori numerici");
		$('#id_numCard').val(""); 
		
		return false;
		
	} else {
		
		return true;
	}
}


