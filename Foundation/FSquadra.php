<?php
/**
 * Description of squadra
 * @package Foundation
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class FSquadra extends Fdb {

	public function __construct(){
		$this->db = USingleton::getInstance('Fdb');
		$this->tabella="squadra";
		$this->chiavedb="( `nome`,`crediti`,`Cpor`,`Cdif`,`Ccen`,`Catt`)";
		$this->bind="( :nome, :crediti,:Cpor,:Cdif,:Ccen,:Catt)";
	}
	
        public function inserisciSquadra(DSquadra $object){
                $dati=$object->getAsArray();
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
                $stringa="('$dati[nome]', $dati[creditires],$dati[Cpor],$dati[Cdif],$dati[Ccen],$dati[Catt])";
		$this->db->insert($stringa);
                
        }
	public function getSquadraByNome($_nome){
		$this->db->setvariabili($this->tabella,"nome",":nome");
	        return $this->db->queryGenerica("*","=",$_nome);
	}
	
}
?>