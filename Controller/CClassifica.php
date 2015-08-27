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
			}
	}
        public function Nuova(){
            $VClassifica=USingleton::getInstance('VClassifica');
            $FClassifica=USingleton::getInstance('FClassifica');
            $FUtente=  USingleton::getInstance('FUtente');
            $Fdb=  USingleton::getInstance('Fdb');
            $q=$Fdb->getDataBase();
            $utenti=$FUtente->getUtenti();
            foreach($utenti as $key => $utente){
                $squadra=  unserialize($utente['squadra']);
                $DSquadra=new DSquadra($squadra['nome']);
                $Dutente=new DUtente($utente['username'], $utente['password'], $utente['email'], 
                                     $utente['stato_attivazione'], $utente['nome'], 
                                     $utente['cognome'], $utente['tipo_utente'],$DSquadra);
                $classifica=new DClassifica($Dutente);
                $FClassifica->inserisciClassifica($classifica);
            }
            
            
            return $VClassifica->processaTemplate();
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
               print_r($classifica1);
               $VClassifica->impostaDati('arr',$classifica1);
               return $VClassifica->processaTemplate();
               /*}
               catch(Exception $error) {
	            $q->rollback();
		    throw new Exception($error->getMessage());   
            } */
        }
        
}

?>