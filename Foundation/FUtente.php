<?php
/**
 * Classe FUtente che gestisce l'interazione con il database che ha come oggetto gli utenti
 * @package Foundation
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
Class FUtente extends Fdb {
        /**
         * Costruttore di FUtente
         */
	public function __construct(){   
	    $this->db = USingleton::getInstance('Fdb');
	    $this->tabella="`utente`";
	    $this->chiavedb="(`username`, `password`, `nome`, `cognome`, `email`, `codice_attivazione`, `stato_attivazione`, `tipo_utente`, `squadra`)";
	    $this->bind="(:username,:password,:nome,:cognome,:email,:codice_attivazione,:stato_attivazione,:tipo_utente,:squadra)";
	}
	/**
         * Inserisce un utente nel database
         * @param DUtente $utente utente da inserire
         */
	public function inserisciUtente(DUtente $utente){   
                $squadra=$utente->getsquadra();
                $nome_squadra=$squadra['nome'];
		$dati=$utente->getAsArray();
                $this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
                $stringa="('$dati[username]','$dati[password]','$dati[nome]','$dati[cognome]','$dati[email]','$dati[codice_attivazione]','$dati[stato_attivazione]','$dati[tipo]','$nome_squadra')";
                $this->db->insert($stringa);
	}
	/**
         * Restituisce un utente
         * @param string $_email email dell'utente da cercare
         * @return array Array contenente le info dell'utente
         */
	public function getUtenteByEmail($_email){ 
	     $this->db->setvariabili($this->tabella,"email",":email");
	     return $this->db->queryGenerica("*",'=',$_email);
        }
        /**
         * Restituisce tutti gli utenti del database
         * @return array Array contenente tutti gli utenti del database
         */
        public function getUtenti(){
             $this->db->setvariabili($this->tabella,"1","");
	     return $this->db->queryGenerica("*","");
        }
}
?>
