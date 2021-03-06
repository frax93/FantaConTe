<?php
/**
 * Classe DSquadra che descrive la Squadra
 * @package Domain
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class DSquadra {
    /**
     *
     * @var string $nome identifica il nome della squadra 
     */
    private $nome;
    /**
     *
     * @var int $Cpor intero utilizzato per contare il numero di portieri della squadra   
     */
    private $Cpor;
    /**
     *
     * @var int $Cdif intero utilizzato per contare il numero di difensori della squadra   
     */
    private $Cdif;
    /**
     *
     * @var int $Ccen intero utilizzato per contare il numero di centrocampisti della squadra   
     */
    private $Ccen;
    /**
     *
     * @var int $Catt intero utilizzato per contare il numero di attaccanti della squadra   
     */
    private $Catt;
    /**
     *
     * @var int $creditires intero che indica il numero di crediti residui per un a squadra
     */
    private $creditires;
    /**
     *
     * @var array $giocatori rappresenta l'array di giocatori di una squadra
     */
    private $giocatori=array('POR'=>array(),
                             'DIF'=>array(),
                             'CEN'=>array(),
                             'ATT'=>array());
    /**
     * Costruttore di Squadra
     * @param string $nom
     */
    public function __construct($nom) {
        $this->setnome($nom);
        $this->Cpor=0;
        $this->Cdif=0;
        $this->Ccen=0;
        $this->Catt=0;
        $this->set_crediti(250);
    }
    /**
     * Funzione che restituisce i giocatori di una squadra
     * @return array rappresenta l'array di giocatori
     */
     public function getgiocatori(){
       return $this->giocatori;
   }
   /**
     * Funzione che restituisce il nome della squadra
     * @return string rappresenta il nome della squadra
     */
    public function getnome(){
        return $this->nome;
    }
    /**
     * Funzione che restituisce i crediti residui di una squadra
     * @return int rappresenta il numero di crediti rimasti ad una squadra
     */
      public function get_crediti(){
      return $this->creditires;
    }
    /**
     * Aggiunge un portiere alla squadra
     * @param DGiocatore $gioc
     */
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
    /**
     * Aggiunge un difensore alla squadra
     * @param DGiocatore $gioc
     */
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
    /**
     * Aggiunge un centrocampista alla squadra
     * @param DGiocatore $gioc
     */
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
    /**
     * Aggiunge un attaccante alla squadra
     * @param DGiocatore $gioc
     */
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
    /**
     * Rimuove un portiere dalla squadra
     * @param DGiocatore $gioc
     */
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
    /**
     * Rimuove un difensore dalla squadra
     * @param DGiocatore $gioc
     */
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
    /**
     * Rimuove un centrocampista dalla squadra
     * @param DGiocatore $gioc
     */
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
    /**
     * Rimuove un attaccante dalla squadra
     * @param DGiocatore $gioc
     */
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
   /**
    * Setta $_giocatori di una squadra
    * @param array $giocatori
    */
    public function setgiocatori($giocatori){
       $stringa=base64_decode($giocatori);
       $this->giocatori=unserialize($stringa);
       
   }
   /**
    * Setta $nome_squadra come nome della squadra 
    * @param string $nome_squadra
    */
   public function setnome($nome_squadra){
       $this->nome=$nome_squadra;
   }
   /**
    * Setta $creditired come numero dei crediti residui di una squadra
    * @param int $creditires
    */
    public function set_crediti($creditires){
        $this->creditires=$creditires;
    }
    /**
     * Vede il ruolo di un giocatore e richiama una funzione in base al ruolo del giocatore stesso
     * @param DGiocatore $giocatore
     */
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
   /**
     * Funzione che restituisce l'array dato dalla trasformazione dell'oggetto Squadra
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