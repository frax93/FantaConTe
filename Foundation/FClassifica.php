<?php
/**
 * Description of classifica
 * @package Foundation
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class FClassifica extends Fdb {

	public function __construct()
	{
		$this->autoincremento = TRUE;
		$this->db = USingleton::getInstance('Fdb');
		$this->tabella="classifica";
                $this->chiavedb="(`utente`, `punteggio`, `partite_giocate`, `vittorie`, `pareggi`, `sconfitte`, `percentuale_vittoria`)";
		$this->bind="(:utente, :punteggio, :partite_giocate, :vittorie, :pareggi, :sconfitte, :percentuale_vittoria)";
	}
	
public function inserisciClassifica(DClassifica $_object){
                $dati=$_object->getasArray();
		$this->db->autoincremento = $this->autoincremento;
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
		$this->db->insert($dati);
        }

	public function getClassifica(){
		$this->db->setvariabili($this->tabella,"utente",":utente");
	        return $this->db->queryGenerica("*","");
	}
	
	public function aggiornaClassifica($dati) {

		foreach ($dati as $key => $value) {

			$chiavedb[]=$key;

			$bind[]=":".$key;

			$valori[]=$value;

		}

		$this->db->setvariabili($this->tabella,$chiavedb,$bind);

		return $this->db->update($valori);

	}
	
	public function deleteClassifica($dati) {

		$chiavedb = array_keys($dati); //ritorna le chiavi numeriche e stringhe dall'array

		$chiavedb = $chiavedb[0];

		$bind = ":".$chiavedb;

		$valori = $dati[$chiavedb];

		$this->db->setvariabili($this->tabella,$chiavedb,$bind);

		return $this->db->delete($valori);

	}
}
?>