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
		$this->impostaPagina();
	}
        /**
         * Metodo che imposta la pagina home iniziale
         * @return mixed 
         */
      public function impostaPagina() {
        $VHome= USingleton::getInstance('VHome');
        $CRegistrazione=USingleton::getInstance('CRegistrazione');
        $Session=  USingleton::getInstance('USession');
        $registrato=$CRegistrazione->getUtenteRegistrato();
        $this->mux();
           if($registrato) {    
             if($Session->getValore('tipo_utente')=="normale"){
                $fclassifica=USingleton::getInstance('FClassifica');
                $classifica=$fclassifica->getClassifica();
                $classifica1=array();
                foreach($classifica as $key => $class)
                   array_push($classifica1, $class);
                $VHome->PaginaRegistrato($classifica1);
            }
          else if($Session->getValore('tipo_utente')=="Admin")
              header("location:index.php?controller=Amministratore&task=amministratore");
          else return $VHome->processaTemplate('loginfallito');
        }
        else{
            $VHome->PaginaGuest();
            $Session->end();
<<<<<<< HEAD
        }  
=======
        }
>>>>>>> origin/master
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

