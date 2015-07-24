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
	    $this->tabella="utenti";
	    $this->chiavedb="(username,password,nome,cognome,email,codice_attivazione,stato_attivazione,tipo_utente,squadra)";
	    $this->bind="(:username,:password,:nome,:cognome,:email,:codice_attivazione,:stato_attivazione,:tipo_utente,:squadra)";
	}
	
	public function inserisciUtente(DUtente $utente){   
		$dati=$utente->getAsArray();
                $username=$dati['username'];
                $Password=$dati['password'];
                $Nome=$dati['nome'];
                $Cognome=$dati['cognome'];
                $Email=$dati['email'];
                $Codice_attivazione=$dati['codice_attivazione'];
                $stato_attivazione=$dati['stato_attivazione'];
                $tipo=$dati['tipo'];
                $squadra=$dati['squadra'];
                $ElencoColonne="'username', 'password', 'nome','cognome', 'email','codice_attivazione','stato_attivazione','tipo','squadra' ";;
                $TuplaValori= "'$username', '$Password', '$Nome','$Cognome', '$Email','$Codice_attivazione','$stato_attivazione','$tipo','$squadra' ";
                $result=$this->db->insert($this->tabella,$ElencoColonne, $TuplaValori);
		//$this->db->setvariabili($this->tabella,$this->chiavedb,"");
		
	}
	
	public function getUtenteByEmail($_email){ 
	     $this->db->setvariabili($this->tabella,"email","");
	     return $this->db->queryGenerica("*",'=',$_email);
	}
	
	public function updateUtente($dati) {

		foreach ($dati as $key => $value) {

			$chiavedb[]=$key;

			$bind[]=":".$key;

			$valori[]=$value;

		}

		$this->db->setvariabili($this->tabella,$chiavedb,$bind);

		return $this->db->update($valori);

	}
	
	public function deleteUtente($dati) {

		$chiavedb = array_keys($dati);

		$chiavedb = $chiavedb[0];

		$bind = ":".$chiavedb;

		$valori = $dati[$chiavedb];

		$this->db->setvariabili($this->tabella,$chiavedb,$bind);

		return $this->db->delete($valori);

	}
}
?>
