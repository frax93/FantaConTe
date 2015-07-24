<?php
/**
 * Description of giocatore
 * @package Foundation
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class FGiocatore extends Fdb {

	public function __construct()
	{
		$this->autoincremento = TRUE;
		$this->db = USingleton::getInstance('Fdb');
		$this->tabella="giocatore";
		$this->chiavedb="(id,nome,cognome,ruolo,squadra_reale,valore,voto,giocato)";
		$this->bind="(:id,:nome,:cognome,:ruolo,:squadra_reale,:valore,:voto,:giocato)";
	}

	public function getGiocatore($_id)
	{
		$this->db->setvariabili($this->tabella,"id",":id");
	    return $this->db->queryvariabile("*",$_id);
	}
	
	//data la squadra dell'utente ritorna il giocatore
	/*public function getNoteByCartella($_id_cartella,$_posizione_finale = NULL,$_posizione_iniziale = NULL,$_tipo_ordinamento = NULL) {
	if (!isset($_posizione_finale)) {
			$chiavedb = "id_cartella";
			$bind = ":".$chiavedb;
		} else {
			$chiavedb = array("id_cartella","posizione");
			$bind = array(":".$chiavedb[0],":posizione_iniziale",":posizione_finale");
			if (isset($_tipo_ordinamento)) {
				$chiavedb[2] = strtoupper($_tipo_ordinamento);
			}
		}
		$this->db->setParam($this->tabella,$chiavedb,$bind);
		return $this->db->loadAsArray("*",$_id_cartella,$_posizione_finale,$_posizione_iniziale);
	}*/
	
	public function aggiornaGiocatore($dati) {

		foreach ($dati as $key => $value) {

			$chiavedb[]=$key;

			$bind[]=":".$key;

			$valori[]=$value;

		}

		$this->db->setvariabili($this->tabella,$chiavedb,$bind);

		return $this->db->update($valori);

	}
	
	public function getGiocatoreByvariabili($_var) {
		foreach ($_var as $key => $valore) {
			$chiavedb[] = $key;
			$bind[] = ":".$key;
			$valori[]=$valore;
		}
		$this->db->setvariabili($this->tabella,$chiavedb,$bind);
		return $this->db->queryvariabile("*",$valori);
	}

}
?>