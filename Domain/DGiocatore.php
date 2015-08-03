<?php
/**
 * Description of giocatore
 * @package Domain
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class DGiocatore{
    private $nome;
    private $cognome;
    private $ruolo;
    private $squadra_reale;
    private $valore; 
    private $voto;
    private $giocato;
    public function __construct($_nome,$_cognome,$_ruolo,$_squadra_reale,$_valore, $_voto,$_giocato){
        $this->setnome($_nome);
        $this->setcognome($_cognome);
        $this->setruolo($_ruolo);
        $this->setsquadra_re($_squadra_reale);
        $this->setvalore($_valore);
        $this->setvoto($_voto);
    } 
    
    public function getnome(){
	return $this->nome;
    }

    public function getcognome(){
	return $this->cognome;
    }

    public function getruolo(){
	return $this->ruolo;
    }

    public function getsquadra_re(){
	return $this->squadra_reale;
    }

    public function getvalore(){
	return $this->valore;
    }

    public function getvoto(){
	return $this->voto;
    }

    public function getgiocato(){
	return $this->giocato;
    }
    
    public function setnome($nom){
	$this->nome=$nom;
    }

    public function setcognome($cog){
	$this->cognome=$cog;
    }

    public function setruolo($ruolo){
	$this->ruolo=$ruolo;
    }

    public function setsquadra_re($squadra){
	$this->squadra_reale=$squadra;
    }
    
    public function setvalore($costo){
	if(!(isset($this->valore)))
        $this->valore=$costo;
    }

    public function setvoto($vot){
	if(!(isset($this->valore)))
           $this->voto=$vot;
    }

    public function setgiocato($gioca){
	$this->giocato=$gioca;
    }
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