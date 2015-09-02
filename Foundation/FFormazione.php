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
		$this->tabella="`Formazione`";
		$this->chiavedb="(` modulo`, `titolari`, `squadra`,`fpunteggio`,`countdif`,`countcen`,`countatt`)";
		$this->bind="(:modulo, :titolari, :squadra, :fpunteggio,:countdif, :countcen, :countatt)";
	}
	
public function inserisciFormazione(DFormazione $_object, $nome_squadra){
		$dati=$_object->getasArray();
                $this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
                foreach ($dati['titolari'] as $key => $value) {
                    $stringa="('$dati[modulo]','$value','$nome_squadra',$dati[fpunteggio],$dati[countdif],$dati[countcen],$dati[countatt])";
                    $this->db->insert($stringa);
                } 
		
	}

	public function getFormazione($nomesquadra,$modulo){
		$this->db->setvariabili($this->tabella,"","");
	        return $this->db->queryFormazione($nomesquadra,$modulo);
             
	}
        public function getpunteggiobySquadra($nomesquadra){
                $this->db->setvariabili($this->tabella,"squadra",":squadra");
	        return $this->db->queryGenerica("*","=",$nomesquadra);
        }
        public function ResetFormazione($nomesquadra){
            
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
	        $this->db->deleteRighe($nomesquadra);
             
	}
	
}
?>