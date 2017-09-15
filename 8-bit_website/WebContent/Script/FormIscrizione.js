function formIscrizioneValidation() {
	
	var email = $("input[name='id_email']" ).val();
	var nickname = $("input[name='id_nickname']").val();
	var pws = $("input[name='id_password']").val();
	var rPws = $("input[name='id_repeatPassword']").val();
	var password = null;
	if(email_validation(email)) {
		
		if(nickname_validation(nickname)) {

			if(pws_validation(pws)) {

				if(rPws_validation(rPws)) {

					return true;
				}
			}
		}
	
	}
	return false;
}

function email_validation(email) {
	
	var length = email.length;
	
	if(length == 0 || length > 45){
		
		$('#id_email').css({'background-color' : 'rgba(195, 66, 66, 0.66)'});
		$('#id_email').css({'color' : '#fff'});
		$('#id_email').attr("placeholder", "Inserire l'email");
		$('#id_email').val("");
		return false;
		
	} else if( email.match(/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/)) {     
		$('#id_email').css({'background-color' : ''});
		$('#id_email').css({'color' : '#555'});
		return true;
		
	} else {
		
		
		$('#id_email').css({'background-color' : 'rgba(195, 66, 66, 0.66)'});
		$('#id_email').css({'color' : '#fff'});
		$('#id_email').attr("placeholder", "Email non ben formattata");
		$('#id_email').val("");
		return false;
	}
}

function nickname_validation(nickname) {
	
	var length = nickname.length;
	
	if(length == 0 || length > 20 || length < 5) {
		
		$('#id_nickname').css({'background-color' : 'rgba(195, 66, 66, 0.66)'});
		$('#id_nickname').attr("placeholder", "Il nickname deve essere compreso tra 6 e 20 caratteri ");
		$('#id_nickname').css({'color' : '#fff'});
		$('#id_nickname').val("");
		return false;
		
	} else if(!nickname.match(/^[0-9A-Za-z]+$/)) {
		
		$('#id_nickname').css({'background-color' : 'rgba(195, 66, 66, 0.66)'});
		$('#id_nickname').attr("placeholder", "Il nickname può contenere solo numeri, lettere minuscole e maiuscole ");
		$('#id_nickname').css({'color' : '#fff'});
		$('#id_nickname').val("");
		return false;
		
	} else {
		
		$('#id_nickname').css({'background-color' : ''});
		$('#id_nickname').css({'color' : '#555'});
		return  true;
	}
}

function pws_validation(pws) {
	 
	var length = pws.length;
	
	
	if(length == 0 || length < 6 || length > 20) {
		
		
		$('#id_password').css({'background-color' : 'rgba(195, 66, 66, 0.66)'});
		$('#id_password').attr("placeholder", "La password deve avere dai 6 ai 20 caratteri");
		$('#id_password').css({'color' : '#fff'});
		$('#id_password').val("");
		return false;
		
	} else if(pws.match(/(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/)) {
		
		password = pws;
		$('#id_password').css({'background-color' : ''});
		$('#id_password').css({'color' : '#555'});
		return true;
		
	} else {
		
		
		$('#id_password').css({'background-color' : 'rgba(195, 66, 66, 0.66)'});
		$('#id_password').attr("placeholder", "La password deve avere almeno una lettera maiuscola, una minuscola e un numero");
		$('#id_password').css({'color' : '#fff'});
		$('#id_password').val("");
		return false;
	}
	
}

function rPws_validation(rPws) {
	
	if(password == rPws){
		
		$('#id_repeatPassword').css({'background-color' : ''});
		$('#id_repeatPassword').css({'color' : '#555'});
		return true;
		
	} else {
		$('#id_repeatPassword').css({'background-color' : 'rgba(195, 66, 66, 0.66)'});
		$('#id_repeatPassword').attr("placeholder", "Le password non combaciano");
		$('#id_repeatPassword').css({'color' : '#fff'});
		$('#id_repeatPassword').val("");
		return false;
	}
	
}