
var Mercato = $(function(){

Mercato.prototype.getTemplate = function(){
	// dentro tmpl si passa il nome del file template senza estenzione
	
	return $.ajax({
		type: 'POST',
		url : "Javascript"+tpl+".tpl",
	})
	
	
}

Mercato.prototype.invioDati = function(){
    
    var Dati = new Object();
    
    Data = {
			controller: '',
			task: '',
			nome : nome,
			cognome: cognome,
			squadra_reale: squadra_reale,
			valore:valore
	};
        
    $(document).ready(function() {
    $("#bottone").click(function(){
    var nome = $("#nome").val();
    var cognome = $("#cognome").val();
    $.ajax({
      type: "POST",
      url: 'index.php?controller=Squadra&task=salva',
      data: Data,
      dataType: "html",
      success: function(msg)
      {
        $("#risultato").html(msg);
      },
      error: function()
      {
        alert("Chiamata fallita, si prega di riprovare...");
      }
    });
  });
});	
}

Mercato.prototype.Acquista = function(){    
        $('#compra').click=function(event){
            var acquisti = [""];
            $('#compra').html(acquisti);
            acquisti.push("Acquistato")
            $('#compra').html(acquisti);
    }
       
}


data = new Date();
ora =data.getHours();
minuti=data.getMinutes();
secondi=data.getSeconds();
giorno = data.getDay();
mese = data.getMonth();
date= data.getDate();
year= data.getFullYear();

if(minuti < 10) minuti="0"+minuti;
if(secondi < 10) secondi="0"+secondi;
if(ora <10) ora="0"+ora;

if(giorno == 0) giorno = "Domenica";
if(giorno == 1) giorno = "Lunedì";
if(giorno == 2) giorno = "Martedì";
if(giorno == 3) giorno = "Mercoledì";
if(giorno == 4) giorno = "Giovedì";
if(giorno == 5) giorno = "Venerdì";
if(giorno == 6) giorno = "Sabato";

if(mese == 0) mese = "Gennaio";
if(mese == 1) mese = "Febbraio";
if(mese == 2) mese = "Marzo";
if(mese == 3) mese = "Aprile";
if(mese == 4) mese = "Maggio";
if(mese == 5) mese = "Giugno";
if(mese == 6) mese = "Luglio";
if(mese == 7) mese = "Agosto";
if(mese == 8) mese = "Settembre";
if(mese == 9) mese = "Ottobre";
if(mese == 10) mese = "Novembre";
if(mese == 11) mese = "Dicembre";

 $("<div><p>"+giorno+" "+date+" "+mese+" "+year+" - ora "+ora+":"+minuti+":"+secondi+"</p></div>");
});