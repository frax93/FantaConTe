<?php
/**
 * Classe FSquadra che gestisce l'interazione con il database che ha come oggetto le squadre
 * @package Foundation
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class FSquadra extends Fdb {
        /**
         * Costruttore di FSquadra
         */
	public function __construct(){
		$this->db = USingleton::getInstance('Fdb');
		$this->tabella="squadra";
		$this->chiavedb="( `nome`,`crediti`,`Cpor`,`Cdif`,`Ccen`,`Catt`)";
		$this->bind="( :nome, :crediti,:Cpor,:Cdif,:Ccen,:Catt)";
	}
	/**
         * Inserisce una Squadra nel database
         * @param DSquadra $object Squadra da inserire
         */
        public function inserisciSquadra(DSquadra $object){
                $dati=$object->getAsArray();
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
                $stringa="('$dati[nome]', $dati[creditires],$dati[Cpor],$dati[Cdif],$dati[Ccen],$dati[Catt])";
		$this->db->insert($stringa);
                
        }
        /**
         * Restituisce una Squadra
         * @param string $_nome nome di una squadra
         * @return array Array contenente una squadra
         */
	public function getSquadraByNome($_nome){
		$this->db->setvariabili($this->tabella,"nome",":nome");
	        return $this->db->queryGenerica("*","=",$_nome);
	}
	
}
?>