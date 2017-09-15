$(document).ready(function(){
  		$('.quantita').change(function(){
  			var x = this.value;
  			var gioco = this.getAttribute("id")
  			var giocoSub = gioco.substring(0, 4);

  			$.ajax({
  	  			type:"get",
  	  			url:"AggiornaCarrelloServlet?gioco="+gioco+"&qnt="+x,
  	  			success:function(result){
  	  				
  	  				$('#id_tot').load(" #id_tot");
  	  				$('#id_totS').load(" #id_totS");
  	  				$('#id_sub').load(" #id_sub");
  	  				$('#id_modal').load(" #id_modal");
  	  				$('#id_totale'+giocoSub).load(" #id_totale"+giocoSub);
  	  			}
  	  		})
  			
  		})
  	})