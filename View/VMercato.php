<?php
/**
 * Classe VMercato che recupera i dati dell'amministratore e controlla gli stessi
 * @package View
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class VMercato extends View { 
   /**
    * Prende gli id dei giocatori nella view
    * @return boolean
    */
     public function getDati(){
        unset($_REQUEST['task']);
        unset($_REQUEST['controller']);
        unset($_REQUEST['submit']);
        $dati=array();
        if(isset($_REQUEST)){
          foreach($_REQUEST as $key => $value)
            array_push($dati,$value);
          return $dati;
         
        }
        else
            return false;
    }
        
}

?>