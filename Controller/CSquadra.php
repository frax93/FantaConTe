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
			case 'visualizza':
				return $this->Visualizza();
			case 'aggiorna':
				return $this->Aggiorna();
                        case 'salva':
                                return $this->Salva();
			}
                        
	}
	/**
	 * Permette di creare una nuova Squadra
	 */
	public function Visualizza() {
            $VSquadra= USingleton::getInstance('VSquadra');
            $FSquadra=  USingleton::getInstance('FSquadra');
            $session = USingleton::getInstance('USession');
            $nome_squadra=$session->getValore('nome_squadra');
            $DSquadra= new DSquadra($nome_squadra);
            $Squadra=$FSquadra->getSquadraByNome('ciao');
            $Squadra=$Squadra[0];
            $FRosa= USingleton::getInstance('FRosa');
            $rosa=$FRosa->getRosa('ciao',1);
            print_r($rosa);
           /* $modulo=array('3-4-3','3-5-2','4-3-3','4-4-2','4-5-1','5-3-2','5-4-1');
            $VSquadra->impostaDati('moduli',$modulo);
            $giocatori=$DSquadra->getgiocatori();
            $difensori=$giocatori['DIF'];
            $difensore1=array();
            foreach($difensori as $key => $value)
                array_push($difensore1,  unserialize($value->getAsArray()));
            $VSquadra->impostaDati('difensore',$difensore1);
            $centrocampo=$giocatori['CEN'];
            $centrocampo1=array();
            foreach($centrocampo as $key => $value)
                        array_push($centrocampo1,  unserialize ($value->getAsArray()));
            $VSquadra->impostaDati('centrocampo',$centrocampo1);
            $portieri=$giocatori['POR'];
            $portieri1=array();
            foreach($portieri as $key => $value)
                        array_push($portieri1,unserialize($value->getAsArray()));
            $VSquadra->impostaDati('portieri',$portieri1);
            $attacco=$giocatori['ATT'];
            $attacco1=array();
            foreach($attacco as $key => $value)
                        array_push($attacco1,  unserialize ($value->getAsArray()));
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
