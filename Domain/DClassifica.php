<?php
/**
 * Description of Classifica
 * @package Domain
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class DClassifica {
    private $posizione;
    private $utente;
    private $punteggio;
    
    public function __construct(DUtente $utente) {
        $this->set_utente($utente);
        $this->set_punteggio(0);
    }
    
    public function get_posizione(){
        return $this->posizione;
    }
    
    public function get_utente(){
        return $this->utente;
    }
    public function get_punteggio(){
        return $this->punteggio;
    }
    public function set_utente(DUtente $_utente){
        $this->utente=$_utente;
    }
    public function set_punteggio($_punteggio){
        $this->punteggio=$_punteggio;
    }
    public function getAsArray(){
        $this->utente=serialize($this->utente);
    	$result=array();
    	foreach($this as $key => $value) {
    		if (!is_array($value) && !is_object($value)) 
    			$result[$key]= $value;
    	}
    	return $result;

    }
    
}
?>