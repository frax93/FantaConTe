<?php
/**
 * Questa è la classe che gestisce la classifica
 * @package Controller
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class CClassifica{
    /**
     * Smista le varie richieste delegando i metodi corrispondenti
     */
        public function mux(){
		$VClassifica=USingleton::getInstance('VClassifica');
		switch ($VClassifica->getTask()) { //Controlla se nei dati arrivati c'é un task da richiamare
			case 'nuova':
				return $this->Nuova();
			case 'visualizza':
				return $this->Visualizza();
                        case 'modifica':
				return $this->Modifica();
			}
	}
        /**
         * Permette di creare la nuova classifica
         */
        public function Nuova(){
            $FClassifica=USingleton::getInstance('FClassifica');
            $FUtente=  USingleton::getInstance('FUtente');
            $Fdb=USingleton::getInstance('Fdb');
            $FFormazione=  USingleton::getInstance('FFormazione');
            $q=$Fdb->getDataBase();
            $utenti=$FUtente->getUtenti();
            foreach($utenti as $key => $utente){
                if($utente['tipo_utente']!="Admin"){
                $DSquadra=new DSquadra($utente['squadra']);
                $Dutente=new DUtente($utente['username'], $utente['password'], $utente['email'], 
                                     $utente['stato_attivazione'], $utente['nome'], 
                                     $utente['cognome'], $utente['tipo_utente'],$DSquadra);
                $classifica=new DClassifica($Dutente);
                $punteggio=$FFormazione->getpunteggiobySquadra($utente['squadra']);
                $punteggio=$punteggio[0]['fpunteggio'];
                print($punteggio);
                $classifica->set_punteggio($punteggio);
                $FClassifica->inserisciClassifica($classifica);
                }
            }
              header("location: index.php?controller=Classifica&task=visualizza");
        }
        /**
         * Permette di visualizzare la classifica degli utenti registrati
         * @return mixed
         */
        public function Visualizza(){
               $VClassifica=USingleton::getInstance('VClassifica');
               $FClassifica=USingleton::getInstance('FClassifica');  
               $Fdb=USingleton::getInstance('Fdb');
               $q=$Fdb->getDataBase();
               $classifica=$FClassifica->getClassifica();
               $classifica1=array();
               foreach($classifica as $key => $class)
                   array_push($classifica1, $class);
               $VClassifica->impostaDati('arr',$classifica1);
               $vincitore=$classifica1[0]['nome_squadra'];
               $VClassifica->impostaDati('vincitore',$vincitore);
               return $VClassifica->processaClassifica();
        }
        
}

?>