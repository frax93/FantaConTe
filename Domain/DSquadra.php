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
    public function Aggiungi_Portiere(DGiocatore $gioc){
        if($this->Cpor<3){
            if($gioc->getruolo()!='POR')
                print("Ruolo errato!!!");
            else
                array_push($this->giocatori['POR'],$gioc);
                $this->Cpor++;
        }
        else
		    print("Porta Piena!");
    }
    public function Aggiungi_Difensore(DGiocatore $gioc){
        if($this->Cdif<8){
            if($gioc->getruolo()!='DIF')
                print("Ruolo errato!!!");
            else
                array_push($this->giocatori['DIF'],$gioc);
            $this->Cdif++;
        }
        else
		    print("Difesa Piena!");
        }
  public function Aggiungi_Centrocampista(DGiocatore $gioc){
      if($this->Ccen<8){
          if($gioc->getruolo()!='CEN')
              print("Ruolo errato!!!");
          else
              array_push($this->giocatori['CEN'],$gioc);
          $this->Ccen++;
      }
      else
          print("Centrocampo Pieno!");
        }
  public function Aggiungi_Attaccante(DGiocatore $gioc){
      if($this->Catt<6){
          if($gioc->getruolo()!='ATT')
              print("Ruolo errato!!!");
          else
              array_push($this->giocatori['ATT'],$gioc);
          $this->Catt++;
      }
      else
          print("Attacco Pieno!");
        }
    public function Rimuovi_Portiere(DGiocatore $gioc){
	if($gioc->getruolo()=='POR'&&in_array($gioc, $this->giocatori)){
            if($this->Cpor!=0)
             unset($this->giocatori['POR'][array_search($gioc, $this->giocatori)]);
            else
                return "Porta vuota";
        }
         else 
            return "giocatore non trovato";
        
    }
   public function Rimuovi_Difensore(Giocatore $gioc){
	if($gioc->getruolo()=='DIF'&&in_array($gioc, $this->giocatori)){
            if($this->Cdif!=0)
                unset($this->giocatori['DIF'][array_search($gioc, $this->giocatori)]);
            else
              return "Difesa vuota";
        }
         else 
            return "giocatore non trovato";
}
   public function Rimuovi_Centrocampista(Giocatore $gioc){
	if($gioc->getruolo()=='CEN'&&in_array($gioc, $this->giocatori)){
            if($this->Ccen!=0)
              unset($this->giocatori['CEN'][array_search($gioc, $this->giocatori)]);
            else 
                return "Centrocampo vuoto";
        }
         else 
            return "giocatore non trovato";
}
   public function Rimuovi_Attaccante(Giocatore $gioc){
	if($gioc->getruolo()=='ATT'&&in_array($gioc, $this->giocatori)){
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
    public function Aggiungi(DGiocatore $giocatore){
        switch($giocatore->getruolo()){
               case 'DIF':
                   $this->Aggiungi_Difensore($giocatore);
               case 'CEN':
                   $this->Aggiungi_Centrocampista($giocatore);
               case 'ATT': 
                   $this->Aggiungi_Attaccante($giocatore);
               case 'POR':
                   $this->Aggiungi_Portiere($giocatore);
         
       }
   }
   
    public function getAsArray(){
        $this->giocatori=  serialize($this->giocatori);
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