<?php
/**
 * Classe FClassifica che gestisce l'interazione con il database che ha come oggetto le classifiche
 * @package Foundation
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class FClassifica extends Fdb {
/**
 * Costruttore di FClassifica
 */
	public function __construct()
	{
		$this->db = USingleton::getInstance('Fdb');
		$this->tabella="`Classifica`";
                $this->chiavedb="(`email`,`nome_squadra`,`punteggio`)";
		$this->bind="(:email,:nome_squadra, :punteggio)";
	}
	/**
         * Inserisce una classifica nel database
         * @param DClassifica $_object Classifica da inserire
         */
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
        /**
         * Restituisce la classifica ordinata in ordina decrescente in base al punteggio
         * @return array Array contenente la classifica
         */

	public function getClassifica(){
		$this->db->setvariabili($this->tabella,"1 ","");
	        return $this->db->queryGenerica("*","ORDER BY `punteggio` DESC");
	}
        /**
         * Elimina un utente dalla classifica
         * @param string $email Email che permette di identificare l'utente nella classifica
         */
         public function ResetUtenteClassifica($email){   
		$this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
	        $this->db->deleteUtente($email);
             
	}
}
?>