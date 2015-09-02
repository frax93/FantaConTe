/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(window).ready(function() {  
        var crediti=$('#crediti').html();
        if(crediti<0){
           crediti=250-crediti;
           alert("Hai speso "+crediti+" crediti");
           $(location).attr('href','http://localhost/FantaConTe/index.php?controller=Squadra&task=modifica');
        }    
});
