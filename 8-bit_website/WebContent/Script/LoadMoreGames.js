function loadMore(){

	$('#button_load').hide();
	$('.loader').show();
	setTimeout(function(){
		var i;
		if($('#gioco_10').css("display") == "none"){
			i=10;
		} else {
			i=18;
		}
		var j;
		for(j=i; j<i+9; j++ ){
			$('#gioco_'+ j).css("display", "");
		}
		$('.loader').hide();

		if($('#gioco_'+ j).css("display") != "none"){

			$('#button_load').hide();
		}
		else{
			$('#button_load').show(); }

	}, 1200);




}