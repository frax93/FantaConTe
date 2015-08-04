<?php
/**
 * Questa è la classe che gestisce la formazione
 * @package Controller
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class CFormazione {
	/**
	 * Smista le varie richieste delegando i metodi corrispondenti.
	 */
	public function mux(){
		$VFormazione=USingleton::getInstance('VFormazione');
		switch ($VFormazione->getTask()) {
			case 'nuova':
				return $this->Nuova();
			case 'modifica':
				return $this->Modifica();
                        case 'visualizza':
                            return $this->Visualizza();
		}
	}
	/**
	 * Permette di creare una nuova formazione
	 */
	public function Nuova() {        
		$VFormazione=USingleton::getInstance('VFormazione');
		$fformazione=USingleton::getInstance('FFormazione');
                $FSquadra= USingleton::getInstance('FSquadra');
		$fdb=USingleton::getInstance('Fdb');
		$session = USingleton::getInstance('USession');
                $dati = $VFormazione->getDati();
                $modulo=$dati[0];
                unset($dati[0]);
                $giocatori_selezionati=$dati;
                $nome=$session->getvalore('nome_squadra');
                //Inserire $nome per fare la cosa dinamica
                $DSquadra=new DSquadra('ciao');
                $Squadra=$FSquadra->getSquadraByNome('ciao');
                $Squadra=$Squadra[0];
                $DSquadra->setgiocatori($Squadra['giocatori']);
                $Formazione=new DFormazione($DSquadra,$modulo);
                $Formazione->impostatitolari($giocatori_selezionati);
                //Qui si deve salvare sul Database e poi chiamare con header
                //header("location: index.php?controller=Formazione&task=visualizza");
                $titolari=$Formazione->get_titolari();
                $portieri=$titolari['POR'];
                $portieri1=array();
                foreach($portieri as $key => $value)
                        array_push($portieri1,unserialize($value->getAsArray()));
                $VFormazione->impostaDati('portieri',$portieri1);
                 $difensori=$titolari['DIF'];
                $difensori1=array();
                foreach($difensori as $key => $value)
                        array_push($difensori1,unserialize($value->getAsArray()));
                $VFormazione->impostaDati('difensori',$difensori1);
                $centrocampo=$titolari['CEN'];
                $centrocampo1=array();
                foreach($centrocampo as $key => $value)
                        array_push($centrocampo1,unserialize($value->getAsArray()));
                $VFormazione->impostaDati('centrocampo',$centrocampo1);
                 $attacco=$titolari['ATT'];
                $attacco1=array();
                foreach($attacco as $key => $value)
                        array_push($attacco1,unserialize($value->getAsArray()));
                $VFormazione->impostaDati('attacco',$attacco1);
                return $VFormazione->processaTemplate();
                //$fformazione->inserisciFormazione($Formazione);
			//$query->commit();
		/*} catch (Exception $e) {
			$query->rollBack();
			throw new Exception($e->getMessage());
		}*/
	}
	/**
	 * Permette di modificare la formazione
	 */
	public function Modifica() {
      	        $fformazione=USingleton::getInstance('FFormazione');	
                $VFormazione=USingleton::getInstance('VFormazione');
		$DFormazione=USingleton::getInstance('DFormazione');
		$fdb=USingleton::getInstance('Fdb');
		$session = USingleton::getInstance('USession');
		$dati = $VFormazione->getDati();
                        $Formazione=new DFormazione($dati[$Squadra]);
                        $Formazione->impostatitolari($dati['giocatore'],$dati['modulo']);
                        $Formazione->impostapanchinari();
                        $fformazione->inserisciFormazione($Formazione);
			//$query->commit();
		/*} catch (Exception $e) {
			$query->rollBack();
			throw new Exception($e->getMessage());
		}*/
	}
        public function Visualizza(){
            $VFormazione=USingleton::getInstance('VFormazione');
            
            $VFormazione->impostaDati('portieri',$DFormazione);
            return $VFormazione->processaTemplate();
        }
}
?>

