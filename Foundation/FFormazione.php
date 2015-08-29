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
		$this->chiavedb="(` modulo`, `titolari`, `squadra`)";
		$this->bind="(:modulo, :titolari, :squadra)";
	}
	
public function inserisciFormazione(DFormazione $_object, $nome_squadra){
		$dati=$_object->getasArray();
                $this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
                foreach ($dati['titolari'] as $key => $value) {
                    $stringa="('$dati[modulo]','$value','$nome_squadra')";
                    $this->db->insert($stringa);
                } 
		
	}

	public function getFormazione($nomesquadra,$modulo){
		$this->db->setvariabili($this->tabella,"","");
	        return $this->db->queryFormazione($nomesquadra,$modulo);
             
	}
        public function ResetFormazione($nomesquadra){
            
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
	        $this->db->deleteFormazione($nomesquadra);
             
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