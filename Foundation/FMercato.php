<?php
/**
 * Description of Mercato
 * @package Foundation
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class FMercato extends Fdb {

	public function __construct()
	{
		$this->autoincremento = TRUE;
		$this->db = USingleton::getInstance('Fdb');
		$this->tabella="giocatori";
		$this->chiavedb="(nome,cognome,ruolo,squadra_reale,valore,voto,giocato)";
		$this->bind="(:nome,:cognome,:ruolo,:squadra_reale,:valore,:voto,:giocato)";
	}

	public function getGiocatori(){
		$this->db->setvariabili($this->tabella,"id",""); //query per ottenere i 434 giocatori
	        return $this->db->queryGenerica("*","");
	}
	
	//prende DGiocatore e cambia voto
        public function updateVoto(){
            
        }

}
?>