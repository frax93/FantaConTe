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
		switch ($VSquadra->getTask()) { //Controlla se nei dati arrivati c'é un task da richiamare
			case 'nuova':
				return $this->Nuova();
			case 'aggiorna':
				return $this->Aggiorna();
                        case 'salva':
                                return $this->Salva();
			}
                        
	}
	/**
	 * Permette di creare una nuova Squadra
	 */
	public function Nuova() {
                $DSquadra=USingleton::getInstance('DSquadra');
		$VSquadra=USingleton::getInstance('VSquadra');
		$dati = $VSquadra->getDati();
		$fsquadra=USingleton::getInstance('FSquadra');
		$fdb=USingleton::getInstance('Fdb');
		$session = USingleton::getInstance('USession');
		$query=$fdb->getDb();
		//$query->beginTransaction();
		//try { 
                        $Squadra=new DSquadra($dati['nome_squadra']);
                        $fsquadra->inserisciSquadra($Squadra);
			$id = $query->lastInsertId();
			$usrsq = array("id_squadra" => $id,
				       "email_utente" => $session->getValore("email"));
			$VSquadra->invia(array("id" => $id));
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
        public function Salva(){
            $VMercato=
            $Fdb=USingleton::getInstance('Fdb');
            $FSquadra=USingleton::getInstance('FSquadra');
            $query=$Fdb->getDataBase();
            $session= USingleton::getInstance('USession');
            $dati=$session->getvalore('nome_squadra');
            $Squadra=new DSquadra($dati['nome_squadra']);
            //$query->beginTransaction();
            //try{
                $FSquadra->inserisciSquadra($Squadra);
            /*    $query->commit();
            }
            catch(Exception $e){
                $query->rollback();
	        throw new Exception($e->getMessage());
            }*/
        }
}
	
?>
