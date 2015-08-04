<?php
/**
 * Description of formazione
 * @package Domain
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class DFormazione{
    
    private $modulo;
    private $titolari;
    private $panchina;
    private $squadra;
    private $countdif;
    private $countcen;
    private $countatt;
    public function __construct(DSquadra $squadra,$_modulo){
        $this->setmodulo($_modulo);
        $this->setteam($squadra);
        $this->countdif=0;
        $this->countcen=0;
        $this->countatt=0;
    } 
    private function getmodulo(){
        return $this->modulo;
    }
    public function gettitolari(){
        $titolari=base64_encode(serialize($this->titolari));
        return $titolari;
    }
    public function getpanchina(){
        $panchina=base64_encode(serialize($this->panchina));
        return $panchina;
    }
    public function setmodulo($_modulo){
        if(isset($_modulo))
           $this->modulo=$_modulo;
        else
           $this->modulo='3-4-3';
    }
    public function setteam(DSquadra $_squadra){
        $this->squadra=$_squadra;
    }
    private function settitolari(){
        $this->titolari=array('POR'=>array(),'DIF'=>array(),'CEN'=>array(),'ATT'=>array());    
    }
    private function setpanchina(){
        $this->panchina=array();
    }
    private function controlla(DGiocatore $_giocatore,$id){
         if($_giocatore->getid()==$id){
                      if($_giocatore->getruolo()=='POR')
                          $ruolo='POR';
                      else if($_giocatore->getruolo()=='DIF')
                           $ruolo='DIF';
                           else if($_giocatore->getruolo()=='CEN')
                                 $ruolo='CEN';
                                else 
                                    $ruolo='ATT';
        }
        else 
            $ruolo="Non Corrisponde ID";
        return $ruolo;
    
   }
    public function impostatitolari($giocatori){
        $this->settitolari();
        list($difensori, $centrocampisti, $attaccanti)=explode("-",$this->modulo);
        $giocatori_squadra=$this->squadra->getgiocatori();
        foreach($giocatori_squadra as $key => $_giocatore1){
            foreach ($_giocatore1 as $key1 => $_giocatore){
               foreach ($giocatori as $key2 => $id){
                       $ruolo=$this->controlla($_giocatore,$id);
                       if($ruolo!="Non Corrisponde ID"){
                          array_push($this->titolari[$ruolo],$_giocatore);
                          unset($giocatori_squadra[$ruolo][array_search($_giocatore, $giocatori_squadra)]);
                       }
              }
            }
        }
        $this->impostapanchinari($giocatori_squadra);
        print_r($this->panchina);
    }
    
    private function impostapanchinari($giocatori_squadra){ 
        if(count($this->titolari)==11&&isset($this->titolari)){
            $this->panchina=$giocatori_squadra;
            print_r($this->panchina);
        }
        else return "non sono stati schierati tutti i titolari!!";
    }
    public function reset(){
        $this->settitolari();
        $this->setpanchina();
    }
    public function getAsArray(){
        $this->squadra=serialize($this->squadra);
    	$result=array();
    	foreach($this as $key => $value) {
    		if (!is_array($value) && !is_object($value)) {

    			$result[$key]= $value;
    		}

    	}

    	return $result;

    }
    
    public function get_titolari(){
        return $this->titolari;
    }
    public function get_panchina(){
        return $this->panchina;
    }
}
?>