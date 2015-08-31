<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of FRosa
 *
 * @author micheletaranta
 */
class FRosa extends Fdb {
    //put your code hereclass FSquadra extends Fdb {

	public function __construct(){
		$this->db = USingleton::getInstance('Fdb');
		$this->tabella="`rosa`";
		$this->chiavedb="( `id`,`squadra`)";
		$this->bind="( :id, :squadra)";
	}
         public function ResetRosa($nomesquadra){           
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
	        $this->db->deleteRighe($nomesquadra);
             
	}
	
        public function inserisciRosa($id,$nomesquadra){
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
                $stringa="('$id','$nomesquadra')";
		$this->db->insert($stringa);
                
        }
	public function getRosa($_nomesquadra){
                $this->tabella="$this->tabella".','.'`giocatori`';
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
	        return $this->db->queryRosa($_nomesquadra);
	}
}
