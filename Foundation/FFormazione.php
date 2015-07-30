<?php
/**
 * Description of formazione
 * @package Foundation
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class FFormazione extends Fdb {

	public function __construct(){
		$this->db = USingleton::getInstance('Fdb');
		$this->tabella="formazione";
		$this->chiavedb="(`modulo`, `titolari`, `panchina`, `squadra`)";
		$this->bind="(:modulo, :titolari, :panchina, :squadra, :countdif, :countcen, :countatt)";
	}
	
public function inserisciFormazione(DFormazione $_object){
		$dati=$_object->getasArray();
                print_r($dati);
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
                $stringa="('$dati[modulo]','$dati[titolari]','$dati[panchina]','$dati[squadra]')";
		$this->db->insert($stringa);
	}

	public function getFormazione($team){
		$this->db->setvariabili($this->tabella,"squadra",":squadra");
	        return $this->db->queryGenerica("*",$team);
	}
	
	
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