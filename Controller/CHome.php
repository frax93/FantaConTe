<?php
/**
 * Questa è la classe Home
 * @package Controller
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class CHome {
	/**
	 * Imposta la pagina e verifica anche l'autenticazione.
	 */
	public function __construct(){
		$View = USingleton::getInstance('VHome');
		//try {
			$contenuto=$this->mux();
			echo $contenuto;
		//} catch (Exception $e) {
                    //throw new Exception ("Errore");
		//}
	}
        /**
         * Metodo che imposta la pagina home iniziale
         */
      public function impostaPagina() {
        $VHome= USingleton::getInstance('VHome');
        $CRegistrazione=USingleton::getInstance('CRegistrazione');
        $registrato=$CRegistrazione->getUtenteRegistrato();
        $contenuto=$this->mux();
        $VHome->impostaContenuto($contenuto);
        $fdb=USingleton::getInstance('Fdb');
        $query=$fdb->getDatabase();
        //$query->beginTransaction();
        if(!isset($contenuto)){
           if($registrato) {    
           try{
             $fclassifica=USingleton::getInstance('FClassifica');
             $classifica=$fclassifica->getClassifica();
             $classifica1=array();
             foreach($classifica as $key => $class)
                   array_push($classifica1, $class);
             $VHome->PaginaRegistrato($classifica1);
           }
           catch (Exception $e) {
             throw new Exception("Errore DB");
           }
        }
        
        else
            $VHome->PaginaGuest();
        }
      }
	/**
	 * Smista le richieste delegando i corrispondenti controller.
	 */
	public function mux(){
		$VHome=USingleton::getInstance('VHome');
		switch ($VHome->getController()){
                case 'Amministratore':
                    $CAmministratore= USingleton::getInstance('CAmministratore');
                    return $CAmministratore->mux();
                case 'Classifica':
                    $CClassifica= USingleton::getInstance('CClassifica');
                    return $CClassifica->mux();
        	case 'Squadra':
        	    $CSquadra=USingleton::getInstance('CSquadra');
                    return $CSquadra->mux();
        	case 'Formazione':
        	    $CFormazione=USingleton::getInstance('CFormazione');
        	    return $CFormazione->mux();
        	case 'Mercato':
        	    $CUtente=USingleton::getInstance('CMercato');
        	    return $CUtente->mux();
        	case 'Registrazione':
        	    $CRegistrazione=USingleton::getInstance('CRegistrazione');
        	    return $CRegistrazione->mux();
                }
	}		
}
?>

