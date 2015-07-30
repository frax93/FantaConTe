<?php
/**
 * Questa è la classe che gestisce la formazione
 * @package Controller
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class CFormazione {
	/**
	 * Smista le varie richieste delegando i metodi corrispondenti.
	 */
	public function mux(){
		$VFormazione=USingleton::getInstance('VFormazione');
		switch ($VFormazione->getTask()) {
			case 'nuova':
				return $this->Nuova();
			case 'modifica':
				return $this->Modifica();
		}
	}
	/**
	 * Permette di creare una nuova formazione
	 */
	public function Nuova() {        
		$VFormazione=USingleton::getInstance('VFormazione');
		$dati = $VFormazione->getDati();
		$fformazione=USingleton::getInstance('FFormazione');
		$fdb=USingleton::getInstance('Fdb');
		$session = USingleton::getInstance('USession');
                $nome=$session->getvalore('nome_squadra');
                $Squadra=new DSquadra($nome);
	        try{ 
                        $Formazione=new DFormazione($Squadra);
                        $fformazione->inserisciFormazione($Formazione);
			//$query->commit();
		} catch (Exception $e) {
			$query->rollBack();
			throw new Exception($e->getMessage());
		}
	}
	/**
	 * Permette di modificare la formazione
	 */
	public function Modifica() {
      	        $fformazione=USingleton::getInstance('FFormazione');	
                $VFormazione=USingleton::getInstance('VFormazione');
		$DFormazione=USingleton::getInstance('DFormazione');
		$fdb=USingleton::getInstance('Fdb');
		$session = USingleton::getInstance('USession');
		$dati = $VFormazione->getDati();
                        $Formazione=new DFormazione($dati[$Squadra]);
                        $Formazione->impostatitolari($dati['giocatore'],$dati['modulo']);
                        $Formazione->impostapanchinari();
                        $fformazione->inserisciFormazione($Formazione);
			//$query->commit();
		/*} catch (Exception $e) {
			$query->rollBack();
			throw new Exception($e->getMessage());
		}*/
	}
}
?>

