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
		$this->tabella="`Classifica`";
                $this->chiavedb="(`email`,`nome_squadra`,`punteggio`)";
		$this->bind="(:email,:nome_squadra, :punteggio)";
	}
	
public function inserisciClassifica(DClassifica $_object){
                $dati=$_object->getAsArray();
                $dati['utente']= unserialize($dati['utente']);
                $email=$dati['utente']->getemail();
                $squadra=$dati['utente']->getsquadra();
                $nomesquadra=$squadra['nome'];
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
                $stringa="('$email','$nomesquadra','$dati[punteggio]')";
		$this->db->insert($stringa);
        }

	public function getClassifica(){
		$this->db->setvariabili($this->tabella,"1 ","");
	        return $this->db->queryGenerica("*","ORDER BY `punteggio` DESC");
	}
        
         public function ResetUtenteClassifica($email){   
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
	        $this->db->deleteUtente($email);
             
	}
}
?>