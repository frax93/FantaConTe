<?php
/**
 * Questa è la classe che gestisce l'utente
 * @package Controller
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
//Non Dovrebbe servire
class CUtente {
	/**
	 * Smista le varie richieste delegando i metodi corrispondenti.
	 */
	public function multi(){
		$VUtente=USingleton::getInstance('VUtente');
		switch ($VUtente->getTask()) {
			case 'getSquadra':
				return $this->getCartelle();
			case 'inviaInfo':
				return $this->inviaInfo();
		}
	}
	/**
	 * Restituisce la squadra associata ad un utente
	 */
	public function getSquadra(){
		$Vsquadra=USingleton::getInstance('VSquadra');
		$puser=USingleton::getInstance('FUtente');
		$session=USingleton::getInstance('USession');
		$fdb=USingleton::getInstance('Fdb');
		$query=$fdb->getDb();
		$query->beginTransaction();
		try {
			$squadra=$puser->getSquadraByUtente($session->getValore("email"));
			$Vsquadra->invia($squadra);
			$query->commit();
		} catch (Exception $e) {
			$query->rollback();
			throw new Exception($e->getMessage());
		}
	}
	/**
	*Funzione che permette la visualizzazione delle informazioni relative all'utente
	**/
	public function inviaInfo() {
		$session = USingleton::getInstance('USession');
		$View = USingleton::getInstance('View');
		$info = array("username" => $session->getValore('username'),
					  "nome" => $session->getValore("nome"),
					  "cognome" => $session->getValore("cognome"),
					  "email" => $session->getValore("email"),
					  "tipo_utente" => $session->getValore("tipo_utente"),
					  "path" => $session->getValore("path"));
		$View->invia($info);
	}
	/**
	*INVIASFIDA LO FARA' MICHELE DETTO IL MOICANO
	**/
	/*public function inviaPartecipanti($_id_cartella) {
		$fraccoglitore=USingleton::getInstance('FRaccoglitore_cartelle');
		$session = USingleton::getInstance('USession');
		$futente=USingleton::getInstance('FUtente');
		$raccoglitore = $fraccoglitore->getTupleByIdCartella($_id_cartella);
		$condiviso = array();
		foreach ($raccoglitore as $key => $valore) {
			if ($valore['email_utente'] != $session->getValore("email")) {
				$utente = $futente->getUtenteByEmail($valore['email_utente']);
				$utente = $utente[0];
				$condiviso[$key]["email"] = $valore['email_utente'];
				$condiviso[$key]["path"] = "Home.php?controller=utente&lavoro=getImmagine&file=".$utente['id_immagine'];
			}
		}
		return $condiviso;
	}*/
}
?>
