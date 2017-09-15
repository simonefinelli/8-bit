function formInserimentoGiocoValidation(){
	
	
	var titolo = $( "input[name='titolo_gioco']" ).val();
	var prezzo = $( "input[name='prezzo_gioco']" ).val();
	var prezzoS = $( "input[name='prezzo_gioco_sconto']" ).val();
	var anno = $( "input[name='anno_gioco']" ).val();
	var console = $( 'select[name=console_combo] option:selected' ).val();
	var sh = $( 'select[name=sh_combo] option:selected' ).val();
	var genere = $( "select[name='genere_gioco']" ).val();
	var copertina = $("input[name='url_image']").val();
	var descrizione = $("textarea[name='descrizione_gioco']").val();
	var prezzoBase = null;
	
	if(titolo_validation(titolo,1,45)) {
		
		if(prezzo_validation(prezzo)) {
			
			if(prezzoScontato_validation(prezzoS)) {
				
				if(anno_validation(anno)) {
					
					if(console_validation(console)) {
						
						if(sh_validation(sh)) {
							
							if(genere_validation(genere)) {
								
								if(copertina_validation(copertina)) {
								
									if(descrizione_validation(descrizione)) {
										
										return true;
									}
									
								}
								
							}
							
						}
						
					}
					
				}
				
			}			
			
		}
		
	}
	return false;
	
}

function titolo_validation(titolo,mx,my)
{
	var uid_len = titolo.length;
	if (uid_len == 0 || uid_len >= my || uid_len < mx)
	{
		$('#titolo_gioco').css({'background-color' : '#F2DEDE'});
		$('#titolo_gioco').attr("placeholder", "Il titolo deve avere lunghezza tra 1 e 45 caratteri");
		$('#id_inserisciG').focus();
		$('#titolo_gioco').val("");
		return false;
	}
	return true;
}

function prezzo_validation(prezzo) {
	
	
	if(prezzo.match(/^[+-]?\d+(\.\d+)?$/))
	{
		prezzoBase = prezzo;
		return true;
			
		
	} else {
		$('#id_prezzo').css({'background-color' : '#F2DEDE'});
		$('#id_prezzo').attr("placeholder", "Inserire solo valori numerici");
		$('#id_prezzo').focus();
		$('#id_prezzo').val(""); 
		
		return false;
	}
	
}

function prezzoScontato_validation(prezzoS) {
	
	if ($('#id_check').is(':checked')) {

		if(prezzoS.match(/^[0-9]{2}$/)) {
			
		
//			//if(prezzoS < prezzoBase){
//
//				return true;
//				
//			} else 
//			{
//				
//				$('#id_prezzo_sconto').css({'background-color' : '#F2DEDE'});
//				$('#id_prezzo_sconto').attr("placeholder", "Il prezzo scontato deve essere MINORE del prezzo di partenza");
//				$('#id_prezzo').focus();
//				$('#id_prezzo_sconto').val(""); 
//				return false;
//			}

			return true;

		} else {
			
			$('#id_prezzo_sconto').css({'background-color' : '#F2DEDE'});
			$('#id_prezzo_sconto').attr("placeholder", "Inserire solo valori numerici tra 1-99");
			$('#id_prezzo_sconto').focus();
			$('#id_prezzo_sconto').val(""); 

			return false;
		}
		
	} else {
		
		return true;
	}
}

function anno_validation(anno){
	
	
	if(!anno.match(/^[0-9]{4}$/)) {
		
		$('#id_anno').css({'background-color' : '#F2DEDE'});
		$('#id_anno').attr("placeholder", "Inserire 4 valori numerici");
		$('#id_anno').focus();
		$('#id_anno').val(""); 
		
		return false;
		
	} else if(anno >= 1975 && anno <= 2002){
		
		return true; 
	} else {
		
		$('#id_anno').css({'background-color' : '#F2DEDE'});
		$('#id_anno').attr("placeholder", "La data deve essere compresa tra 1975 e il 2002");
		$('#id_anno').focus();
		$('#id_anno').val(""); 
	}
}

function console_validation(console){
	
	if( console.length == 0 ){
		
		$('#console_combo').css({'background-color' : '#F2DEDE'});
		$('#console_combo').focus();
		return false;
	} else {
		return true;
	}
}

function sh_validation(sh){
	
if( sh.length == 0 ){
		
		$('#sh_combo').css({'background-color' : '#F2DEDE'});
		$('#sh_combo').focus();
		return false;
		
	} else {
		return true;
	}
}

function genere_validation(genere){
	
	if( genere.length == 0 ) {
		
		$('#id_genere').css({'background-color' : '#F2DEDE'});
		$('#id_genere').focus();
		return false;
		
	} else {
		
		return true;
	}
}

function copertina_validation(copertina){
	
	if(copertina.length == 0){
		
		$('#id_browsImage').css({'background-color' : '#F2DEDE'});
		$('#id_browsImage').focus();
		return false;
		
	} else {
		
		return true;
	}
}

function descrizione_validation(descrizione) {
	
	if(descrizione.length == 0 || copertina.length > 5000){
		
		$('#id_descrizione').css({'background-color' : '#F2DEDE'});
		return false;
	} else {
		return true;
	}
}
