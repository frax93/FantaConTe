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
    private $partite_giocate;
    private $vittorie;
    private $pareggi;
    private $sconfitte;
    private $percentuale_vittoria;
    
    public function __construct(DUtente $utente) {
        $this->set_utente($utente);
        $this->set_punteggio(0);
        $this->set_partitegiocate(0);
        $this->set_vittorie(0);
        $this->set_pareggi(0);
        $this->set_sconfitte(0);
        $this->set_percentualevittoria();
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
    public function get_partitegiocate(){
        return $this->partite_giocate;
    }
    public function get_vittorie(){
        return $this->vittorie;
    }
    public function get_pareggi(){
        return $this->pareggi;
    }
    public function get_sconfitte(){
        return $this->sconfitte;
    }
    public function get_percentualevittoria(){
        return $this->percentuale_vittoria;
    }
    public function set_utente($_utente){
        $this->utente=$_utente;
    }
    public function set_punteggio($_punteggio){
        $this->punteggio=$_punteggio;
    }
    public function set_partitegiocate($_partitegiocate){
        $this->partite_giocate=$partgio;
    }
    public function set_vittorie($_vittorie){
        $this->vittorie=$_vittorie;
    }
    public function set_pareggi($_pareggi){
        $this->pareggi=$_pareggi;
    }
    public function set_sconfitte($sconf){
        $this->sconfitte=$sconf;
    }
    public function set_percentualevittoria(){
        $this->percentuale_vittoria=($this->vittorie/$this->partite_giocate)*100;
    }
}
?>