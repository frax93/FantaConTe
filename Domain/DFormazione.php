<?php
/**
 * Classe DFormazione che descrive la Formazione
 * @package Domain
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class DFormazione{
    /**
     * @var string $modulo identifica il modulo della formazione 
     */
    private $modulo;
    /**
     *
     * @var array $titolari è l'array degli id dei titolari
     */
    private $titolari;
    /**
     *
     * @var DSquadra $squadra è la squadra di un utente
     */
    private $squadra;
    /**
     *
     * @var int $fpunteggio è la somma dei voti di una formazione
     */
    private $fpunteggio;
    /**
     * @var int $countpor è il contatore relativo ai portieri
     */
    private $countpor;
    /**
     * @var int $countdif è il contatore relativo ai difensori
     */
    private $countdif;
    /**
     * @var int $count è il contatore relativo ai centrocampisti
     */
    private $countcen;
    /**
     * @var int $count è il contatore relativo agli attaccanti
     */
    private $countatt;
    /**
     * Costruttore di Formazione
     * @param DSquadra $squadra
     * @param string $_modulo
     */
    public function __construct(DSquadra $squadra,$_modulo){
        $this->setmodulo($_modulo);
        $this->setteam($squadra);
        $this->fpunteggio=0;
        $this->countpor=0;
        $this->countdif=0;
        $this->countcen=0;
        $this->countatt=0;
    } 
    /**
     * Funzione che restituisce il puntaggio di una formazione
     * @return int rappresenta il punteggio di una formazione
     */
    public function getpunteggio(){
        return $this->fpunteggio;
    }
    /**
     * Funzione che restituisce il modulo di una formazione
     * @return string rappresenta il modulo di una formazione
     */
    public function getmodulo(){
        return $this->modulo;
    }
    /**
     * Funzione che restituisce l'array dei titolari di una formazione
     * @return array rappresenta l'array dei titolari
     */
    public function gettitolari(){
        return $this->titolari;
    }
    /**
     * Setta $_modulo come modulo della formazione
     * @param string $_modulo
     */
    public function setmodulo($_modulo){
        if(isset($_modulo))
           $this->modulo=$_modulo;
        else
           $this->modulo='3-4-3';
    }
    /**
     * Setta $_squadra come squadra relativa ad una formazione
     * @param DSquadra $_squadra
     */
    public function setteam(DSquadra $_squadra){
        $this->squadra=$_squadra;
    }
    /**
     * Setta l'array che conterra' i titolari della formazione
     */
    private function settitolari(){
        $this->titolari=array('POR'=>array(),'DIF'=>array(),'CEN'=>array(),'ATT'=>array());    
    }
    /**
     * Controlla il ruolo dei giocatori e i contatori dei giocatori, affinchè la formazione sia conforme al modulo inserito
     * @param DGiocatore $_giocatore
     * @param int $id
     * @return string
     */
    private function controlla(DGiocatore $_giocatore,$id){
        list($difensori, $centrocampisti, $attaccanti)=explode("-",$this->modulo);
         if($_giocatore->getid()==$id){
                      if($_giocatore->getruolo()=='POR'&&$this->countpor==0){
                      $ruolo='POR';
                      $this->countpor++;
                      }
                      else if($_giocatore->getruolo()=='DIF'&&$this->countdif<$difensori){
                           $ruolo='DIF';
                           $this->countdif++; 
                      }
                           else if($_giocatore->getruolo()=='CEN'&&$this->countcen<$centrocampisti){
                                 $ruolo='CEN';
                                 $this->countcen++;
                           }
                                else if($_giocatore->getruolo()=='ATT'&&$this->countatt<$attaccanti){
                                    $ruolo='ATT';
                                    $this->countatt++;
                                }
                                    else 
                                       $ruolo="Non Corrisponde ID e/o formazione piena";
        }
        else 
            $ruolo="Non Corrisponde ID e/o formazione piena";
        return $ruolo;
    
   }
   /**
    * Imposta i titolari relativi ad una formazione
    * @param array $giocatori
    */
    public function impostatitolari(array $giocatori){
        $this->settitolari();
        $giocatori_squadra=$this->squadra->getgiocatori();
        foreach($giocatori_squadra as $key => $_giocatore1){
            foreach ($_giocatore1 as $key1 => $_giocatore){
               foreach ($giocatori as $key2 => $id){
                       $ruolo=$this->controlla($_giocatore,$id);
                          if($ruolo!="Non Corrisponde ID e/o formazione piena"){ 
                             $this->fpunteggio=$this->fpunteggio+$_giocatore->getVoto();
                             array_push($this->titolari[$ruolo],$_giocatore);
                             unset($giocatori_squadra[$ruolo][array_search($_giocatore, $giocatori_squadra)]);
                          }
                       
                       }
              }
            }
        }
    /**
     * Funzione che restituisce l'array dato dalla trasformazione dell'oggetto Formazione
     * @return array Trasforma l'oggetto in un array
     */
    public function getAsArray(){
    	$result=$result1=array();
    	foreach($this as $key => $value) {
    		if (!is_array($value) && !is_object($value)) 
    			$result[$key]= $value;
                else if($value==$this->titolari){
                     foreach ($this->titolari as $key1 => $value1) 
                         foreach($value1 as $key2 => $giocatore){
                             array_push($result1,$giocatore->getid());
                             
                         }
                     $result[$key]=$result1;  
                     
                }
    	}
    	return $result;

    }
}
?>