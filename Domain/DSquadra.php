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
    private $Cpor;
    private $Cdif;
    private $Ccen;
    private $Catt;
    private $creditires;
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
        $this->set_crediti(250);
    }
     public function getgiocatori(){
       return $this->giocatori;
   }
    public function getnome(){
        return $this->nome;
    }
      public function get_crediti(){
        return $this->creditires;
    }
    public function Aggiungi_Portiere(DGiocatore $gioc){
        if($this->Cpor<3){
            if($gioc->getruolo()!='POR')
                print("Ruolo errato!!!");
            else{
                array_push($this->giocatori['POR'],$gioc);
                $this->Cpor++;
                $this->creditires=$this->creditires-$gioc->getvalore();
            }
        }
        else
		    print("Porta Piena!");
    }
    public function Aggiungi_Difensore(DGiocatore $gioc){
        if($this->Cdif<8){
            if($gioc->getruolo()!='DIF')
                print("Ruolo errato!!!");
            else{
                array_push($this->giocatori['DIF'],$gioc);
                $this->Cdif++;
                $this->creditires=$this->creditires-$gioc->getvalore();
            }
        }
        else
		    print("Difesa Piena!");
        }
  public function Aggiungi_Centrocampista(DGiocatore $gioc){
      if($this->Ccen<8){
          if($gioc->getruolo()!='CEN')
              print("Ruolo errato!!!");
          else{
              array_push($this->giocatori['CEN'],$gioc);
              $this->Ccen++;
              $this->creditires=$this->creditires-$gioc->getvalore();
          }
      }
      else
          print("Centrocampo Pieno!");
        }
  public function Aggiungi_Attaccante(DGiocatore $gioc){
      if($this->Catt<6){
          if($gioc->getruolo()!='ATT')
              print("Ruolo errato!!!");
          else{
              array_push($this->giocatori['ATT'],$gioc);
              $this->Catt++;
              $this->creditires=$this->creditires-$gioc->getvalore();
          }
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
   public function Rimuovi_Difensore(DGiocatore $gioc){
	if($gioc->getruolo()=='DIF'&&in_array($gioc, $this->giocatori)){
            if($this->Cdif!=0)
                unset($this->giocatori['DIF'][array_search($gioc, $this->giocatori)]);
            else
              return "Difesa vuota";
        }
         else 
            return "giocatore non trovato";
}
   public function Rimuovi_Centrocampista(DGiocatore $gioc){
	if($gioc->getruolo()=='CEN'&&in_array($gioc, $this->giocatori)){
            if($this->Ccen!=0)
              unset($this->giocatori['CEN'][array_search($gioc, $this->giocatori)]);
            else 
                return "Centrocampo vuoto";
        }
         else 
            return "giocatore non trovato";
}
   public function Rimuovi_Attaccante(DGiocatore $gioc){
	if($gioc->getruolo()=='ATT'&&in_array($gioc, $this->giocatori)){
            if($this->Catt!=0)
              unset($this->giocatori['ATT'][array_search($gioc, $this->giocatori)]);
            else 
                return "Attacco vuoto";
        }
         else 
            return "giocatore non trovato";
   }
    public function setgiocatori($giocatori){
       $stringa=base64_decode($giocatori);
       $this->giocatori=unserialize($stringa);
       
   }
   public function setnome($nome_squadra){
       $this->nome=$nome_squadra;
   }
    public function set_crediti($creditires){
        $this->creditires=$creditires;
    }
    public function Aggiungi(DGiocatore $giocatore){
        $ruolo=$giocatore->getruolo();
        if($ruolo=="POR")
            $this->Aggiungi_Portiere($giocatore);
        else if($ruolo=="DIF")
            $this->Aggiungi_Difensore($giocatore);
        else if($ruolo=="CEN")
            $this->Aggiungi_Centrocampista($giocatore);
        else 
            $this->Aggiungi_Attaccante($giocatore);
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