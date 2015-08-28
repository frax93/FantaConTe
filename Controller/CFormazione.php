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
		$session = USingleton::getInstance('USession');
                $nome_squadra=$session->getValore('squadra');
                $DSquadra=new DSquadra($nome_squadra);
                $FRosa= USingleton::getInstance('FRosa');
                $giocatori=$FRosa->getRosa($nome_squadra);
                $dati = $VFormazione->getDati();
                $modulo=$dati[0];
                unset($dati[0]);
                $giocatori_selezionati=$dati;
                //Inserire $nome per fare la cosa dinamica
                foreach($giocatori as $key => $value){
                    $DGiocatore=new DGiocatore($value['id'],$value['nome'],$value['cognome'],$value['ruolo'],
                                             $value['squadra_reale'],$value['valore'],$value['voto']);
                    $DSquadra->Aggiungi($DGiocatore);
                }
                $Formazione=new DFormazione($DSquadra,$modulo);
                $Formazione->impostatitolari($giocatori_selezionati);
                $fformazione->inserisciFormazione($Formazione,$nome_squadra);
                
                //Qui si deve salvare sul Database e poi chiamare con header
                header("location: index.php?controller=Formazione&task=visualizza");
                
               
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
                $FFormazione=USingleton::getInstance('FFormazione');
                $FRosa= USingleton::getInstance('FRosa');
                $Fdb=USingleton::getInstance('Fdb');
                $session=  USingleton::getInstance('USession');
                $nome_squadra=$session->getValore('squadra');
                $query=$Fdb->getDataBase();
                $titolari=$FFormazione->getFormazione($nome_squadra,'3-4-3');               
                $giocatori=$FRosa->getRosa($nome_squadra);
                $DSquadra=new DSquadra($nome_squadra);
                $DFormazione=new DFormazione($DSquadra,'3-4-3');
                foreach($giocatori as $key => $value){
                    $DGiocatore=new DGiocatore($value['id'],$value['nome'],$value['cognome'],$value['ruolo'],
                                             $value['squadra_reale'],$value['valore'],$value['voto']);
                    $DSquadra->Aggiungi($DGiocatore);
                }
                $titolare=array();
                foreach ($titolari as $key => $id){
                    array_push($titolare,$id['titolari']);
                }
                $DFormazione->impostatitolari($titolare);
                $titolari1=$DFormazione->gettitolari();
                $portieri=$titolari1['POR'];
                $portieri1=array();
                $totale=0;
                foreach($portieri as $key => $value){
                        array_push($portieri1,$value->getAsArray());
                        $totale=$totale+$portieri1[$key]['voto'];
                        
                }
                $VFormazione->impostaDati('portieri',$portieri1);
                 $difensori=$titolari1['DIF'];
                $difensori1=array();
                foreach($difensori as $key => $value){
                        array_push($difensori1,$value->getAsArray());
                        $totale=$totale+$difensori1[$key]['voto'];
                }
               
                $VFormazione->impostaDati('difensori',$difensori1);
                $centrocampo=$titolari1['CEN'];
                $centrocampo1=array();
                foreach($centrocampo as $key => $value){
                        array_push($centrocampo1,$value->getAsArray());
                        $totale=$totale+$centrocampo1[$key]['voto'];
                        
                }
                $VFormazione->impostaDati('centrocampo',$centrocampo1);
                 $attacco=$titolari1['ATT'];
                $attacco1=array();
                foreach($attacco as $key => $value){
                        array_push($attacco1,$value->getAsArray());
                        $totale=$totale+$attacco1[$key]['voto'];
                        $session->setValore('fantasypunteggio',$totale);
                }
                $VFormazione->impostaDati('attacco',$attacco1);
                $VFormazione->impostaDati('totale',$totale);
                return $VFormazione->processaTemplate();
        }
}
?>

