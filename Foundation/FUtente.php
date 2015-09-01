<?php
/**
 * Description of utente
 * @package Foundation
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
Class FUtente extends Fdb {

	public function __construct(){   
	    $this->db = USingleton::getInstance('Fdb');
	    $this->tabella="`utente`";
	    $this->chiavedb="(`username`, `password`, `nome`, `cognome`, `email`, `codice_attivazione`, `stato_attivazione`, `tipo_utente`, `squadra`)";
	    $this->bind="(:username,:password,:nome,:cognome,:email,:codice_attivazione,:stato_attivazione,:tipo_utente,:squadra)";
	}
	
	public function inserisciUtente(DUtente $utente){   
		$dati=$utente->getAsArray();
                $this->db->setvariabili($this->tabella,$this->chiavedb,$this->bind);
                $stringa="('$dati[username]','$dati[password]','$dati[nome]','$dati[cognome]','$dati[email]','$dati[codice_attivazione]','$dati[stato_attivazione]','$dati[tipo]','$dati[squadra]')";
                $this->db->insert($stringa);
	}
	
	public function getUtenteByEmail($_email){ 
	     $this->db->setvariabili($this->tabella,"email",":email");
	     return $this->db->queryGenerica("*",'=',$_email);
        }
        public function getUtenti(){
             $this->db->setvariabili($this->tabella,"1","");
	     return $this->db->queryGenerica("*","");
        }
}
?>
