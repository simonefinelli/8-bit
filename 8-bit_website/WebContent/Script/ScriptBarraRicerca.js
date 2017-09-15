 $(document).ready(function(){
		
		$('#id_searchText').hide();
		$('#id_findButton').hover(function(){
			$('#id_searchText').show();
		});
		$('#id_inputGroup').mouseleave(function(){
			$('#id_searchText').hide();
			$('input[type=text]#id_searchText').val("");
			});
	})