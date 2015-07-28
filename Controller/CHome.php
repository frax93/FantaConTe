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
		try {
			$contenuto=$this->mux();
			echo $contenuto;
		} catch (Exception $e) {
                    throw new Exception ("Errore");
		}
	}
        /**
         * Metodo che imposta la pagina home iniziale
         */
      public function impostaPagina () {
        $VHome= USingleton::getInstance('VHome');
        $contenuto=$this->mux();
        $VHome->impostaContenuto($contenuto);
        $fdb=USingleton::getInstance('Fdb');
        $query=$fdb->getDatabase();
        //$query->beginTransaction();
        try{
        $fclassifica=USingleton::getInstance('FClassifica');
        $classifica=$fclassifica->getClassifica();
        $VHome->impostaPaginaGuest($classifica);
        return $VHome->mostraPagina();
        }
        catch (Exception $e) {
            
        }
        
      }
	/**
	 * Smista le richieste delegando i corrispondenti controller.
	 */
	public function mux(){
		$VHome=USingleton::getInstance('VHome');
		switch ($VHome->getController()) {
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
                case 'Tutorial':
                    $CTutorial=  USingleton::getInstance('CTutorial');
                    return $CTutorial->tutorial();
                }
	}		
}
?>

