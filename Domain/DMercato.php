<?php
/**
 * Description of Mercato
 * @package Domain
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class DMercato{
    private $portieri=array();
    private $difensori=array();
    private $centrocampo=array();
    private $attacco=array();
                            
    public function __construct(){
    }
    private function Aggiungi_Portiere(DGiocatore $gioc){
            if($gioc->getruolo()!='POR')
                print("A");
            else
                array_push($this->portieri,$gioc);
    }
    private function Aggiungi_Difensore(DGiocatore $gioca){
            if($gioca->getruolo()!='DIF')
                print("B");
            else
                array_push($this->difensori,$gioca);
            
        
    }
    private function Aggiungi_Centrocampista(DGiocatore $gioc){
          if($gioc->getruolo()!="CEN")
              print("C");
          else
              array_push($this->centrocampo,$gioc);
          
      
   }
  private function Aggiungi_Attaccante(DGiocatore $gioc){
          if($gioc->getruolo()!="ATT")
              print("D");
          else
              array_push($this->attacco,$gioc);
   }
    private function Rimuovi_Portiere(DGiocatore $gioc){
	if($gioc->ruolo=='POR'&&in_array($gioc, $this->portieri))
             unset($this->portieri[array_search($gioc, $this->portieri)]);
         else
                return "Porta vuota";
        
    }
   private function Rimuovi_Difensore(DGiocatore $gioc){
	if($gioc->ruolo=='DIF'&&in_array($gioc, $this->difensori))
                unset($this->difensori[array_search($gioc, $this->difensori)]);
            else
              return "Difesa vuota";
}
   private function Rimuovi_Centrocampista(DGiocatore $gioc){
	if($gioc->ruolo=='CEN'&&in_array($gioc, $this->centrocampo))
              unset($this->centrocampo[array_search($gioc, $this->centrocampo)]);
            else 
                return "Centrocampo vuoto";
}
   private function Rimuovi_Attaccante(DGiocatore $gioc){
	if($gioc->getruolo()=='ATT'&&in_array($gioc, $this->attacco))
              unset($this->attacco[array_search($gioc, $this->attacco)]);
            else 
                return "Attacco vuoto";
         
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
   public function Rimuovi($giocatore){
        switch($giocatore->getruolo()){
               case 'POR': 
                   return $this->Rimuovi_Portiere($giocatore);
               case 'DIF': 
                   return $this->Rimuovi_Difensore($giocatore);
               case 'CEN': 
                   return $this->Rimuovi_Centrocampista($giocatore);
               case 'ATT': 
                   return $this->Rimuovi_Attaccante($giocatore);
        }        
   }
   public function getportieri(){
       return $this->portieri;
       
   }
      public function getdifesa(){
       return $this->difensori;
       
   }
      public function getcentrocampo(){
       return $this->centrocampo;
       
   }
      public function getattacco(){
       return $this->attacco;
       
   }
}
?>