<?php
/**
 * Description of formazione
 * @package Domain
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class DFormazione{
    /*
     * @param modulo
     */
    private $modulo;
    private $titolari;
    private $panchina;
    private $team;
    private $countdif;
    private $countcen;
    private $countatt;
    private static $giocatori;
    public function __construct(Squadra $squadra){
        $this->setmodulo('3-4-3');
        $this->setteam($squadra);
        $this->countdif=0;
        $this->countcen=0;
        $this->countatt=0;
    } 
    private function getmodulo(){
        return $this->modulo;
    }
    public function gettitolari(){
        return $this->titolari;
    }
    public function getpanchina(){
        return $this->panchina;
    }
    public function getfantasy(){
        return $this->fantasypunteggio;
    }
    public function setmodulo($mod){
        $this->modulo=$mod;
    }
    public function setteam(Squadra $_squadra){
        $this->team=$_squadra;
        $this->giocatori=$_squadra->getgiocatori();
    }
    private function settitolari(){
        $this->titolari=array('POR'=>array(),'DIF'=>array(),'CEN'=>array(),'ATT'=>array());    
    }
    private function setpanchina(){
        $this->panchina=array();
    }
    public function impostatitolari($_giocatore,$_modulo){
        $this->settitolari();
        list($difensori, $centrocampisti, $attaccanti)=explode("-",$_modulo);
        if($_giocatore->getruolo()=='POR'){
            array_push($this->titolari['POR'],$_giocatore);
            unset($this->giocat['POR'][array_search($gioc, $this->giocat)]);
        }
        else if($_giocatore->getruolo()=='DIF'&&$this->countdif<$difensori){
                array_push($this->titolari['DIF'],$_giocatore);
                $this->countdif++;
                unset($this->giocat['DIF'][array_search($gioc, $this->giocat)]);
             }
             else if($_giocatore->getruolo()=='CEN'&&$this->countcen<$centrocampisti){
                        array_push($this->titolari['CEN'],$_giocatore);
                        $this->countcen++;
                        unset($this->giocat['CEN'][array_search($gioc, $this->giocat)]);
                  }
                  else if($_giocatore->getruolo()=='ATT'&&$this->countatt<$attacanti){
                            array_push($this->titolari['ATT'],$_giocatore);
                            $this->countatt++;
                            unset($this->giocat['ATT'][array_search($gioc, $this->giocat)]);
                        }
                        else 
                            return "Impossibile impostare formazione";
    }
    
    public function impostapanchinari(){ 
        //in teoria bisogna guardare se esiste l'array titolare
        if(count($this->titolari)==11){
            $this->panchina=$this->giocatori;
            $this->giocatori=array();
        }
        else return "non sono stati schierati tutti i titolari!!";
    }
    public function reset(){
        $this->settitolari();
        $this->setpanchina();
    }
    
}
?>