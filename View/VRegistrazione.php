<?php
/**
 * @package View
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class VRegistrazione extends View{
    /**
     * restituisce email e password passata tramite GET o POST
     *
     * @return mixed
     */
    public function getDati() {
        $dati=array();
        if (isset($_REQUEST['password'])&&isset($_REQUEST['email'])){
            $dati['email']=$_REQUEST['email'];
            $dati['password']=$_REQUEST['password'];
            return $dati;
        }
        else
            return false;     
    }
    /**
     * Restituisce l'array contenente i dati di registrazione
     *
     * @return array();
     */
    public function getDatiRegistrazione() {
        $dati_richiesti=array('username','password','password_1','nome','cognome','email','nome_squadra');
        $dati=array();
        foreach ($dati_richiesti as $dato) {
            if (isset($_REQUEST[$dato]))
                $dati[$dato]=$_REQUEST[$dato];
        }
        return $dati;
    }
    /**
     * Restituisce un array contenente i dati di attivazione
     *
     * @return mixed
     */
    public function getDatiAttivazione() {
        if(isset($_REQUEST['codice_attivazione'])&&isset($_REQUEST['email']))
            return array('codice'=>$_REQUEST['codice_attivazione'], 'email'=>$_REQUEST['email']);
        else
            return false;
    } 
}
?>