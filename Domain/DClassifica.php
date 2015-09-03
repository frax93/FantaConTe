<?php
/**
 * Classe DClassifica che descrive la Classifica
 * @package Domain
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class DClassifica {
    /**
     *
     * @var DUtente $utente e' un utente registrato
     */
    private $utente;
    /**
     *
     * @var int $punteggio Numero intero che rappresenta il punteggio relativo alla formazione di un utente 
     */
    private $punteggio;
    /**
     * Costruttore di Classifica
     * @param DUtente $utente
     */
    public function __construct(DUtente $utente) {
        $this->set_utente($utente);
        $this->set_punteggio(0);
    }
    /**
     * Funzione che restituisce gli utenti della classifica 
     * @return DUtente  è un utente della classifica
     */
    public function get_utente(){
        return $this->utente;
    }
    /**
     * Funzione che restituisce i punteggi della classifica
     * @return int numero che indica il punteggio 
     */
    public function get_punteggio(){
        return $this->punteggio;
    }
    /**
     * Setta $_utente come nuovo utente della classifica
     * @param DUtente $_utente
     */
    public function set_utente(DUtente $_utente){
        $this->utente=$_utente;
    }
    /**
     * Setta $_punteggio come punteggio nella classifica
     * @param int $_punteggio
     */
    public function set_punteggio($_punteggio){
        $this->punteggio=$_punteggio;
    }
    /**
     * Funzione che restituisce l'array dato dalla trasformazione dell'oggetto Classifica
     * @return array Trasforma l'oggetto in un array
     */
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