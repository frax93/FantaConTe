<?php
/**
 * Classe VClassifica che recupera i dati dell'amministratore e controlla gli stessi
 * @package View
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class VClassifica extends View{
   /**
     * Processa il template relativo alla classifica
     * @return mixed
     */
    public function processaClassifica() {
         $this->fetch('classifica.tpl');
    }
}

?>

