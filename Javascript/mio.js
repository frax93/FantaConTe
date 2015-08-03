/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

// var Data= $(function(){		
$(document).ready(function(){
    $("#pippo").click(function(){
        var dati= new Array();
        for(var i=0;i<3;i++){
            dati[i]=$('#prova').html();
            //alert(dati.pop());
           $("pippo").append(" <b>",dati.pop(),"</b>"); 
        }
        
        
        
    });

    $("#btn2").click(function(){
        $("ol").append("<li>Appended item</li>");
    });
});
// fa sparire il compra dopo lacquisto
$(document).ready(function(){
    $("k").click(function(){
        $(this).hide();
    });
});
// $("<div><p>"+giorno+" "+date+" "+mese+" "+year+" - ora "+ora+":"+minuti+":"+secondi+"</p></div>");
// });