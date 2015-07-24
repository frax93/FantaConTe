<?php
/**
 * Description of Squadra
 * @package Domain
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class DSquadra {
    private $nome;
    private static $Cpor;
    private static $Cdif;
    private static $Ccen;
    private static $Catt;
    private $giocatori=array('POR'=>array(),
                             'DIF'=>array(),
                             'CEN'=>array(),
                             'ATT'=>array());
    public function __construct($nom) {
        $this->setnome($nom);
        $this->Cpor=0;
        $this->Cdif=0;
        $this->Ccen=0;
        $this->Catt=0;
    }
     public function getgiocatori(){
       return $this->giocatori;
   }
    public function getnome(){
        return $this->nome;
    }
    public function Aggiungi_Portiere(Giocatore $gioc){
        if($this->Cpor<3){
            if($gioc->ruolo!='POR')
                print("Ruolo errato!!!");
            else
                array_push($giocatori['POR'],$gioc);
                $this->Cpor++;
        }
        else
		    print("Porta Piena!");
    }
    public function Aggiungi_Difensore(Giocatore $gioc){
        if($this->Cdif<8){
            if($gioc->ruolo!='DIF')
                print("Ruolo errato!!!");
            else
                array_push($this->giocatori['DIF'],$gioc);
            $this->Cdif++;
        }
        else
		    print("Difesa Piena!");
        }
  public function Aggiungi_Centrocampista(Giocatore $gioc){
      if($this->Ccen<8){
          if($gioc->ruolo!='CEN')
              print("Ruolo errato!!!");
          else
              array_push($this->giocatori['CEN'],$gioc);
          $this->Ccen++;
      }
      else
          print("Centrocampo Pieno!");
        }
  public function Aggiungi_Attacante(Giocatore $gioc){
      if($this->Catt<6){
          if($gioc->ruolo!='ATT')
              print("Ruolo errato!!!");
          else
              array_push($this->giocatori['ATT'],$gioc);
          $this->Catt++;
      }
      else
          print("Attacco Pieno!");
        }
    public function Rimuovi_Portiere(Giocatore $gioc){
	if($gioc->ruolo=='POR'&&in_array($gioc, $this->giocatori)){
            if($this->Cpor!=0)
             unset($this->giocatori['POR'][array_search($gioc, $this->giocatori)]);
            else
                return "Porta vuota";
        }
         else 
            return "giocatore non trovato";
        
    }
   public function Rimuovi_Difensore(Giocatore $gioc){
	if($gioc->ruolo=='DIF'&&in_array($gioc, $this->giocatori)){
            if($this->Cdif!=0)
                unset($this->giocatori['DIF'][array_search($gioc, $this->giocatori)]);
            else
              return "Difesa vuota";
        }
         else 
            return "giocatore non trovato";
}
   public function Rimuovi_Centrocampista(Giocatore $gioc){
	if($gioc->ruolo=='CEN'&&in_array($gioc, $this->giocatori)){
            if($this->Ccen!=0)
              unset($this->giocatori['CEN'][array_search($gioc, $this->giocatori)]);
            else 
                return "Centrocampo vuoto";
        }
         else 
            return "giocatore non trovato";
}
   public function Rimuovi_Attaccante(Giocatore $gioc){
	if($gioc->ruolo=='ATT'&&in_array($gioc, $this->giocatori)){
            if($this->Catt!=0)
              unset($this->giocatori['ATT'][array_search($gioc, $this->giocatori)]);
            else 
                return "Attacco vuoto";
        }
         else 
            return "giocatore non trovato";
   }
   public function setnome($nome_squadra){
       $this->nome=$nome_squadra;
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