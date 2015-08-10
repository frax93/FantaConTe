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
			case 'aggiorna':
				return $this->Aggiorna();
			}
	}
        public function Nuova(){
            $VClassifica=USingleton::getInstance('VClassifica');
            $FClassifica=USingleton::getInstance('FClassifica');
            $Fdb=  USingleton::getInstance('Fdb');
            $q=$Fdb->getDataBase();
            //$q->beginTransaction();
            //try{
                $classifica=$FClassifica->getClassifica();
                $arr=array('posizione'=> 1, 'squadra' => 'Jurassic-World','nome'=>'Maione','pgioc'=>1,'punti'=>$totale,'percv'=>1);
                $key='arr';
                $VClassifica->impostaDati($key,$arr);
                return $VClassifica->processaTemplate();
            /*}
            catch(Exception $error) {
			$q->rollback();
			throw new Exception($error->getMessage());   
            } */
        }
        public function Aggiorna(){
               $VClassifica=USingleton::getInstance('VClassifica');
               $FClassifica=USingleton::getInstance('FClassifica');
               $Fdb=USingleton::getInstance('Fdb');
               $q=$Fdb->getDataBase();
               //$q->beginTransaction();
               //try{
                   //$classifica=$FClassifica->inserisciClassifica();
                   $arr=array('posizione'=> 1, 'squadra' => 'Jurassic-World','nome'=>'Maione','pgioc'=>1,'punti'=>$totale,'percv'=>1);    
                    $VClassifica->impostaDati('totale',$totale);
                   $key='arr';
                   $VClassifica->impostaDati($key,$arr);
                   return $VClassifica->processaTemplate();
               /*}
               catch(Exception $error) {
	            $q->rollback();
		    throw new Exception($error->getMessage());   
            } */
        }
        
}

?>