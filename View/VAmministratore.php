<?php

/**
 * Classe VAmministratore che recupera i dati dell'amministratore e controlla gli stessi
 * @package View
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class VAmministratore extends View{
    /**
     *  Prende i voti dei giocatori nella view
     * @return boolean
     */
    public function getVoti() {
        unset($_REQUEST['controller']);
        unset($_REQUEST['task']);
        unset($_REQUEST['submit']);
        $voti=array(0=>'');
        if(isset($_REQUEST)){
          foreach($_REQUEST as $key => $value)
            array_push($voti,$value);
          return $voti;
        }
        else
            return false;
        }
    
    
}
?>