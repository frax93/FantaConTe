<?php
/**
 * @package Controller
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class CClassifica{
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
        public function Nuova(){
            $FClassifica=USingleton::getInstance('FClassifica');
            $FUtente=  USingleton::getInstance('FUtente');
            $Fdb=USingleton::getInstance('Fdb');
            $FFormazione=  USingleton::getInstance('FFormazione');
            $q=$Fdb->getDataBase();
            $utenti=$FUtente->getUtenti();
            foreach($utenti as $key => $utente){
                if($utente['tipo_utente']!="Admin"){
                $squadra=  unserialize($utente['squadra']);
                $DSquadra=new DSquadra($squadra['nome']);
                $Dutente=new DUtente($utente['username'], $utente['password'], $utente['email'], 
                                     $utente['stato_attivazione'], $utente['nome'], 
                                     $utente['cognome'], $utente['tipo_utente'],$DSquadra);
                $classifica=new DClassifica($Dutente);
                $punteggio=$FFormazione->getpunteggiobySquadra($squadra['nome']);
                $punteggio=$punteggio[0]['fpunteggio'];
                $classifica->set_punteggio($punteggio);
                $FClassifica->inserisciClassifica($classifica);
                }
            }
              header("location: index.php?controller=Classifica&task=visualizza");
        }
        
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
               /*}
               catch(Exception $error) {
	            $q->rollback();
		    throw new Exception($error->getMessage());   
            } */
        }
        
}

?>