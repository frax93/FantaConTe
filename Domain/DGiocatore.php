<?php
/**
 * Classe DGiocatore che descrive il Giocatore
 * @package Domain
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class DGiocatore{
    /**
     *
     * @var int $id rappresenta l'id di un giocatore 
     */
    private $id;
    /**
     *
     * @var string $nome rappresenta il nome di un giocatore 
     */
    private $nome;
    /**
     *
     * @var string $cognome rappresenta il cognome di un giocatore 
     */
    private $cognome;
    /**
     *
     * @var string $ruolo rappresenta il ruolo di un giocatore 
     */
    private $ruolo;
    /**
     *
     * @var string $squadra_reale rappresenta la vera squadra (di serie A)  di appartenenza di un giocatore 
     */
    private $squadra_reale;
    /**
     *
     * @var int $valore rappresenta il valore in crediti di un giocatore 
     */
    private $valore; 
    /**
     *
     * @var int $voto rappresenta il voto di un giocatore dopo una partita
     */
    private $voto;
    /**
     * Costruttore di Giocatore
     * @param type $_id
     * @param type $_nome
     * @param type $_cognome
     * @param type $_ruolo
     * @param type $_squadra_reale
     * @param type $_valore
     * @param type $_voto
     */
    public function __construct($_id,$_nome,$_cognome,$_ruolo,$_squadra_reale,$_valore,$_voto){
        $this->setid($_id);
        $this->setnome($_nome);
        $this->setcognome($_cognome);
        $this->setruolo($_ruolo);
        $this->setsquadra_re($_squadra_reale);
        $this->setvalore($_valore);
        $this->setvoto($_voto);
    } 
    /**
     * Funzione che restituisce l'id di un giocatore
     * @return int rappresenta l'id di un giocatore
     */
    public function getid(){
	return $this->id;
    }
    /**
     * Funzione che restituisce il nome di un giocatore
     * @return string rappresenta il nome di un giocatore
     */
    public function getnome(){
	return $this->nome;
    }
    /**
     * Funzione che restituisce il cognome di un giocatore
     * @return string rappresenta il cognome di un giocatore
     */
    public function getcognome(){
	return $this->cognome;
    }
    /**
     * Funzione che restituisce il ruolo di un giocatore
     * @return string rappresenta il ruolo di un giocatore
     */
    public function getruolo(){
	return $this->ruolo;
    }
    /**
     * Funzione che restituisce la squadra reale di serie A di un giocatore
     * @return string rappresenta la squadra reale di serie A di un giocatore
     */
    public function getsquadra_re(){
	return $this->squadra_reale;
    }
    /**
     * Funzione che restituisce il valore di un giocatore
     * @return int rappresenta il valore di un giocatore
     */
    public function getvalore(){
	return $this->valore;
    }
    /**
     * Funzione che restituisce il voto di un giocatore
     * @return int rappresenta il voto di un giocatore
     */
    public function getvoto(){
	return $this->voto;
    }
    /**
     * Setta $_id come id relativo ad un giocatore
     * @param int $_id
     */
    public function setid($_id){
        $this->id=$_id;
    }
    /**
     * Setta $_nome come nome relativo ad un giocatore
     * @param string $_nome
     */
    public function setnome($_nome){
	$this->nome=$_nome;
    }
    /**
     * Setta $_cognome come cognome relativo ad un giocatore
     * @param string $_cognome
     */
    public function setcognome($_cognome){
	$this->cognome=$_cognome;
    }
    /**
     * Setta $ruolo come ruolo relativo ad un giocatore
     * @param string $ruolo
     */
    public function setruolo($ruolo){
	$this->ruolo=$ruolo;
    }
    /**
     * Setta $squadra come la squadra reale di serie A relativa ad un giocatore
     * @param string $squadra
     */
    public function setsquadra_re($squadra){
	$this->squadra_reale=$squadra;
    }
    /**
     * Setta $costo come costo relativo ad un giocatore
     * @param int $costo
     */
    public function setvalore($costo){
	if(!(isset($this->valore)))
        $this->valore=$costo;
    }
    /**
     * Setta $vot come voto relativo ad un giocatore
     * @param int $vot
     */
    public function setvoto($vot){
	if(!(isset($this->voto))) 
           $this->voto=$vot;
    }
    /**
     * Funzione che restituisce l'array dato dalla trasformazione dell'oggetto Giocatore
     * @return array Trasforma l'oggetto in un array
     */
     public function getAsArray(){
    	$result=array();

    	foreach($this as $key => $value) {
    		if (!is_array($value) && !is_object($value)) {

    			$result[$key]= $value;
    		}

    	}

    	return $result;

    }
}

?>