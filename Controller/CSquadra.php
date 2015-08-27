<?php
/**
 * Questa è la classe che gestisce la registrazione
 * @package Controller
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class CSquadra {
	/**
	 * Smista le varie richieste delegando i metodi corrispondenti.
	 */
	public function mux(){
		$VSquadra=USingleton::getInstance('VSquadra');
		switch ($VSquadra->getTask()) { 
			case 'visualizza':
				return $this->Visualizza();
			case 'aggiorna':
				return $this->Aggiorna();
                }
                        
	}
	/**
	 * Permette di visualizzare la Squadra creata dall'utente
	 */
	public function Visualizza() {
            $VSquadra= USingleton::getInstance('VSquadra');
            $FSquadra=  USingleton::getInstance('FSquadra');
            $session = USingleton::getInstance('USession');
            $nome_squadra=$session->getValore('nome_squadra');
            $DSquadra= new DSquadra($nome_squadra);
            $FRosa= USingleton::getInstance('FRosa');
            $giocatori=$FRosa->getRosa($nome_squadra);
            foreach($giocatori as $key => $value){
                $DGiocatore=new DGiocatore($value['id'],$value['nome'],$value['cognome'],$value['ruolo'],
                                             $value['squadra_reale'],$value['valore'],$value['voto'],
                                             $value['giocato']);
                $DSquadra->Aggiungi($DGiocatore);
            }
            $array_giocatori=$DSquadra->getgiocatori();
            $modulo=array('3-4-3','3-5-2','4-3-3','4-4-2','4-5-1','5-3-2','5-4-1');
            $VSquadra->impostaDati('moduli',$modulo);
            $portieri=$array_giocatori['POR'];
            $portieri1=array();
            foreach($portieri as $key => $value)
                array_push($portieri1,$value->getAsArray());
            $VSquadra->impostaDati('portieri',$portieri1);
            $difensore=$array_giocatori['DIF'];
            $difensore1=array();
            foreach($difensore as $key => $value)
                array_push($difensore1,$value->getAsArray());
            $VSquadra->impostaDati('difensore',$difensore1);
            $centrocampo=$array_giocatori['CEN'];
            $centrocampo1=array();
            foreach($centrocampo as $key => $value)
                array_push($centrocampo1,$value->getAsArray());
            $VSquadra->impostaDati('centrocampo',$centrocampo1);
            $attacco=$array_giocatori['ATT'];
            $attacco1=array();
            foreach($attacco as $key => $value)
                array_push($attacco1,$value->getAsArray());
            $VSquadra->impostaDati('attacco',$attacco1);
            return $VSquadra->processaTemplate();
			/*$query->commit();
		} catch (Exception $e) {
			$query->rollBack();
			throw new Exception($e->getMessage());
		}*/
	}
	/**
	 * Permette di aggiornare una squadra
	 */
	public function Aggiorna(){
		$session = USingleton::getInstance('USession');
		$fdb=USingleton::getInstance('Fdb');
		$VSquadra=USingleton::getInstance('VSquadra');
		$dati = $VSquadra->getDati();
		$fsquadra=USingleton::getInstance('FSquadra');
		$query=$fdb->getDb();
		//$query->beginTransaction();
		//try{
			$fsquadra->aggiornaSquadra($dati);
			/*$query->commit();
		} catch (Exception $e) {
			$query->rollback();
			throw new Exception($e->getMessage());			
		}*/
	}
}
	
?>
