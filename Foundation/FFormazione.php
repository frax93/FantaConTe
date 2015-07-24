<?php
/**
 * Description of formazione
 * @package Foundation
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class FFormazione extends Fdb {

	public function __construct()
	{
		$this->autoincremento = TRUE;
		$this->db = USingleton::getInstance('Fdb');
		$this->tabella="formazione";
		$this->chiavedb="(modulo,titolari,panchina,team,countdif,countcen,countatt,giocat)";
		$this->bind="(:modulo, :titolari, :panchina, :team, :countdif, :countcen, :countatt, :giocat)";
	}
	
public function inserisciFormazione(DFormazione $_object){
		$classe=get_class($_object);
		$this->db->autoincremento = $this->autoincremento;
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
		$this->db->insert($dati);
	}

	public function getFormazione($team)
	{
		$this->db->setvariabili($this->tabella,"team",":team");
	        return $this->db->queryGenerica("*",$team);
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
	
	public function aggiornaFormazione($dati) {

		foreach ($dati as $key => $value) {

			$chiavedb[]=$key;

			$bind[]=":".$key;

			$valori[]=$value;

		}

		$this->db->setvariabili($this->tabella,$chiavedb,$bind);

		return $this->db->update($valori);

	}
	
}
?>