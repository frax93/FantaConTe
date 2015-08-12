/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

    
//è il javascript per controllare la selezione dei giocatori NON FUNZIONA
//bisogna fare una funzione che calcola la somma dei prezzi dei giocatori selezionati in mercato
$(document).ready(function() {
	$('crediti');
        
	$('#password_1').keyup(function () { 
	if ( $(this).val()==$('#password').val() && errori[4] ) {
		$("#password_1,#password").css("border", "2px solid green");
		errori[4]=false;
	}
	else{
		$(this).css("border", "3px solid red");
		errori[4]=true;
	}
	});

	
	$('#premi').checked(function (event) {
		if ( crediti>0 ) {
			
                        
		}
	});
	

   
  }
)
