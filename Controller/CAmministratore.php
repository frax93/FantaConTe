<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class CAmministratore{
    
    /**
	 * Smista le varie richieste delegando i metodi corrispondenti.
	 */
	public function mux(){
		$VAmministratore=USingleton::getInstance('VAmministratore');
		switch ($VAmministratore->getTask()) { 
			case 'amministratore':
				return $this->Visualizza();
                            case 'cambiovoti':
				return $this->CambiaVoti();
                }
	}
        
        public function Visualizza() {
            $VAmministratore=  USingleton::getInstance('VAmministratore');
            $Fdb=  USingleton::getInstance('Fdb');
            $FMercato= USingleton::getInstance('FMercato');
            $giocatori=$FMercato->getGiocatori();
            $p=$d=$c=$a=0;
                    for($i=0;$i<count($giocatori);$i++){
                    	if($giocatori[$i]['ruolo']=="POR"){
                           $portieri[$p]=$giocatori[$i];
                           $p++;
                         }
                         if($giocatori[$i]['ruolo']=="DIF"){
                           $difesa[$d]=$giocatori[$i];
                           $d++;
                         }
                         if($giocatori[$i]['ruolo']=="CEN"){
                           $centrocampo[$c]=$giocatori[$i];
                           $c++;
                         }
                         if($giocatori[$i]['ruolo']=="ATT"){
                           $attacco[$a]=$giocatori[$i];
                           $a++;
                         }
                        
                    }
            $VAmministratore->impostaDati('portieri',$portieri);
            $VAmministratore->impostaDati('difesa',$difesa);
            $VAmministratore->impostaDati('centrocampo',$centrocampo);
            $VAmministratore->impostaDati('attacco',$attacco);
            $dati=array();
            for($i=0;$i<=20;$i++)
                array_push($dati, $i);
            $VAmministratore->impostaDati('voti',$dati);
            return $VAmministratore->processaTemplate();
                    
                }  
                
                public function CambiaVoti() {
                    $Vamministratore=USingleton::getInstance('VAmministratore');
                    $Vamministratore->getVoti();
                   
                    
                }
}

