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
		$this->db = USingleton::getInstance('Fdb');
		$this->tabella="classifica";
                $this->chiavedb="(`email`,`nome_squadra`, `partite_giocate`,`punteggio`)";
		$this->bind="(:email,:nome_squadra, :partite_giocate,:punteggio)";
	}
	
public function inserisciClassifica(DClassifica $_object){
                $dati=$_object->getAsArray();
                $dati['utente']= unserialize($dati['utente']);
                $email=$dati['utente']->getemail();
                $squadra=$dati['utente']->getsquadra();
                $nomesquadra=$squadra['nome'];
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
                $stringa="('$email','$nomesquadra','$dati[partite_giocate]','$dati[punteggio]')";
		$this->db->insert($stringa);
        }

	public function getClassifica(){
		$this->db->setvariabili($this->tabella,"1","");
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