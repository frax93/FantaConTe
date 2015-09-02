<?php
/**
 * Description of giocatore
 * @package Domain
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class DGiocatore{
    private $id;
    private $nome;
    private $cognome;
    private $ruolo;
    private $squadra_reale;
    private $valore; 
    private $voto;
    public function __construct($_id,$_nome,$_cognome,$_ruolo,$_squadra_reale,$_valore,$_voto){
        $this->setid($_id);
        $this->setnome($_nome);
        $this->setcognome($_cognome);
        $this->setruolo($_ruolo);
        $this->setsquadra_re($_squadra_reale);
        $this->setvalore($_valore);
        $this->setvoto($_voto);
    } 
    public function getid(){
	return $this->id;
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
    
    public function setid($_id){
        $this->id=$_id;
    }

    public function setnome($_nome){
	$this->nome=$_nome;
    }

    public function setcognome($_cognome){
	$this->cognome=$_cognome;
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
	if(!(isset($this->voto))) 
           $this->voto=$vot;
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