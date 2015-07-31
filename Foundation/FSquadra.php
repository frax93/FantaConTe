<?php
/**
 * Description of squadra
 * @package Foundation
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class FSquadra extends Fdb {

	public function __construct()
	{
		$this->autoincremento = TRUE;
		$this->db = USingleton::getInstance('Fdb');
		$this->tabella="squadra";
		$this->chiavedb="(`nome`,`Cpor`,`Cdif`,`Ccen`,`Catt`,`giocatori`)";
		$this->bind="( :nome, :Cpor, :Cdif, :Ccen, :Catt, :giocatori)";
	}
	
public function inserisciSquadra(DSquadra $object){
                $dati=$object->getAsArray();
		$this->db->autoincremento = $this->autoincremento;
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
                $stringa="('$dati[nome]','$dati[Cpor]','$dati[Cdif]','$dati[Ccen]','$dati[Catt]','$dati[giocatori]')";
		$this->db->insert($stringa);
                
}

	public function getSquadra($id){
		$this->db->setvariabili($this->tabella,"id",":id");
	        return $this->db->queryGenerica("*","=",$id);
	}
	
	public function aggiornaSquadra($dati) {
		foreach ($dati as $key => $value) {

			$chiavedb[]=$key;

			$bind[]=":".$key;

			$valori[]=$value;

		}

		$this->db->setvariabili($this->tabella,$chiavedb,$bind);

		return $this->db->update($valori);

	}
	
	public function deleteSquadra($dati) {

		$chiavedb = array_keys($dati); //ritorna le chiavi numeriche e stringhe dall'array

		$chiavedb = $chiavedb[0];

		$bind = ":".$chiavedb;

		$valori = $dati[$chiavedb];

		$this->db->setvariabili($this->tabella,$chiavedb,$bind);

		return $this->db->delete($valori);

	}
}
?>