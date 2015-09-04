/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {
   
    var errori=new Array();
    var pieno=0;
    $('#username').blur(function () { 
	if (!$(this).val().match(/^[a-zA-Z0-9]{2,30}$/)) {
		$(this).css("border", "3px solid red");
		errori[0]=true;
	}
	else{
		$(this).css("border", "2px solid green");
		errori[0]=false;
                pieno++;
	}
	});
    
    
    $('#nome').blur(function () { 
	if (!$(this).val().match(/^[a-zA-z' ]{2,30}$/)) {
		$(this).css("border", "3px solid red");
		errori[1]=true;
	}
	else{
		$(this).css("border", "2px solid green");
		errori[1]=false;
                pieno++;
	}
	});
          
    $('#cognome').blur(function () { 
	if (!$(this).val().match(/^[a-zA-z' ]{2,30}$/)) {
		$(this).css("border", "3px solid red");
		errori[2]=true;
	}
	else{
		$(this).css("border", "2px solid green");
		errori[2]=false;
                pieno++;
	}
	});
    
    $('#password').blur(function () { 
	if (!$(this).val().match(/^[[a-zA-z0-9#!%\^&;\*\$:\{\}=\-_`~\(\)]{6,20}$/)) {
		$(this).css("border", "3px solid red");
		errori[3]=true;
	}
	else{
		$(this).css("border", "");
		errori[3]=false;
                pieno++;
	}
	});
	
	$('#password_1').keyup(function () { 
	if ( $(this).val()==$('#password').val() && errori[4] ) {
		$("#password_1,#password").css("border", "2px solid green");
		errori[4]=false;
                pieno++;
	}
	else{
		$(this).css("border", "3px solid red");
		errori[4]=true;
	}
	});

    
$('#email').blur(function () {
      var dati=new Array();
      dati['0']=$(this).val();

    $.ajax({
       type: "POST",
       url: "index.php?controller=Registrazione&task=Controllaemail&email="+dati['0'],
       success: function(data) {
           if(navigator.userAgent.indexOf("Win") != -1){
            if (data['4']==1) {
             $('#email').css("border","3px solid red");
    	     errori[5]=true;
           }
           else {
             $('#email').css("border", "2px solid green");
             errori[5]=false;
             pieno++;
           }
        }
       else if(navigator.userAgent.indexOf("Mac") != -1){
          if (data['2']==1) {
             $('#email').css("border","3px solid red");
    	     errori[5]=true;
           }
           else {
             $('#email').css("border", "2px solid green");
             errori[5]=false;
             pieno++;
           }
        }
        }
})
});
	$('#nome_squadra').blur(function () { 
	if ($(this).val()=="") {
		$(this).css("border", "3px solid red");
		errori[6]=true;
	}
	else{
		$(this).css("border", "2px solid green");
		errori[6]=false;
                pieno++;
	}
	});
	
	
	
	$('#submit_1').click(function (event) {
		if ( errori.indexOf(true)>=0 || pieno<7  ){ 
			var testoerrore="";
                                if (pieno<7)
					testoerrore +="- Ci sono dei campi vuoti  \n ";
				if (errori[0])
					testoerrore +="- Il campo username contiene caratteri non validi  \n ";
				if (errori[1])
					testoerrore += "- Il campo nome puo contenere da 2 a 20 caratteri testuali \n";
				if (errori[2])
					testoerrore +="- Il campo cognome puo contenere da 2 a 20 caratteri testuali \n";
				if (errori[3])
					testoerrore +="- Il campo password può contenere da 6 a 20 caratteri alfanumerici e speciali \n";	
				if (errori[4])
					testoerrore +="- Le password non corrispondono \n";
				if (errori[5])
					testoerrore +="- Hai inserito una email già registrata! \n";
                                if (errori[6])
					testoerrore +="- Il campo nome squadra puo contenere da 2 a 20 caratteri testuali \n";
                        $("#errore").append(testoerrore);
			return false;
		}
	});
	

   
  }
)
