$(document).ready(function(){
	alert("ok");
  		$.ajax({  		
  			type:"get",
  			url:"getGiochi",
  			success:function(result){
  				alert(""+ok);

  			}
  		})
  	})