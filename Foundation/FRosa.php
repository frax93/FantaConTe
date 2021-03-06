<?php
/**
 * Classe FRosa che gestisce l'interazione con il database che ha come oggetto le rose
 * @package Foundation
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class FRosa extends Fdb {
        /**
         * Costruttore di FRosa
         */
        public function __construct(){
		$this->db = USingleton::getInstance('Fdb');
		$this->tabella="`rosa`";
		$this->chiavedb="( `id`,`squadra`)";
		$this->bind="( :id, :squadra)";
	}
        /**
         * Elimina la rosa
         * @param string $nomesquadra Nome della squadra
         */
        public function ResetRosa($nomesquadra){           
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
	        $this->db->deleteRighe($nomesquadra);
             
	}
	/**
         * Inserisce una rosa nel database
         * @param int $id intero che identifica l'id del giocatore
         * @param string $nomesquadra nome della squadra
         */
        public function inserisciRosa($id,$nomesquadra){
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
                $stringa="('$id','$nomesquadra')";
		$this->db->insert($stringa);
                
        }
        /**
         * Restituisce una Rosa
         * @param string $_nomesquadra nome della squadra
         * @return array Array contenente la rosa
         */
	public function getRosa($_nomesquadra){
                $this->tabella="$this->tabella".','.'`giocatori`';
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
	        return $this->db->queryRosa($_nomesquadra);
	}
}
