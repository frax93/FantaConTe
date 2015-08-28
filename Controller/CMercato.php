<?php
/**
 * Questa è la classe che gestisce il mercato
 * @package Controller
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class CMercato{
    /**
     * 
     * @return type
     */
    public function mux(){
		$VMercato=USingleton::getInstance('VMercato');
		switch ($VMercato->getTask()){
			case 'riempi':
				return $this->riempi();
                        case 'salva':
                                return $this->Salva();
		}
	}
    /**
     * 
     * @throws Exception
     */
    public function riempi(){
                $vmercato= USingleton::getInstance('VMercato');
                $dMercato=USingleton::getInstance('DMercato');
		$fmercato=USingleton::getInstance('FMercato');
		$fdb=USingleton::getInstance('Fdb');
		/*$query=$fdb->getDataBase();
		$query->beginTransaction();
                try{*/
                    $giocatori=$fmercato->getGiocatori();
                    $p=$d=$c=$a=0;
                    for($i=0;$i<count($giocatori);$i++){
                    	if($giocatori[$i]['ruolo']=="POR"){
                           $portieri[$p]=$giocatori[$i];
                           $p++;
                         }
                         if($giocatori[$i]['ruolo']=="DIF"){
                           $difesa[$d]=$giocatori[$i];
                           $d++;
                         }
                         if($giocatori[$i]['ruolo']=="CEN"){
                           $centrocampo[$c]=$giocatori[$i];
                           $c++;
                         }
                         if($giocatori[$i]['ruolo']=="ATT"){
                           $attacco[$a]=$giocatori[$i];
                           $a++;
                         }
                        
                    }
                    $vmercato->impostaDati('portieri',$portieri);
                    $vmercato->impostaDati('difesa',$difesa);
                    $vmercato->impostaDati('centrocampo',$centrocampo);
                    $vmercato->impostaDati('attacco',$attacco);
                    //$query->commit();
                    return $vmercato->processaTemplate();
                    
               /* }
                catch (Exception $e) {
			$query->rollback();
			throw new Exception($e->getMessage());
                    
                }*/
    }
     public function Salva(){
            $VMercato=  USingleton::getInstance('VMercato');
            $FRosa=  USingleton::getInstance('FRosa');
            $giocatori_selezionati=$VMercato->getDati();
            $Fdb=USingleton::getInstance('Fdb');
            $FSquadra=USingleton::getInstance('FSquadra');
            $query=$Fdb->getDataBase();
            $session= USingleton::getInstance('USession');
            $nome_squadra=$session->getvalore('squadra');
            $Squadra=new DSquadra($nome_squadra);
            foreach($giocatori_selezionati as $key => $id_giocatore){
                $FRosa->inserisciRosa($id_giocatore,$nome_squadra);
                
            }
            $FSquadra->inserisciSquadra($Squadra);
            //Redirect per mostrare la squadra all'utente
            header("location: index.php?controller=Squadra&task=visualizza");
            //$query->beginTransaction();
            //try{
                
            /*    $query->commit();
            }
            catch(Exception $e){
                $query->rollback();
	        throw new Exception($e->getMessage());
            }*/
        }
    
    
}
?>
