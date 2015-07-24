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
    public function getPassword() {
        $dati=array();
        if (isset($_REQUEST['password'])&&isset($_REQUEST['email'])){
            $dati[0]=$_REQUEST['email'];
            $dati[1]=$_REQUEST['password'];
            return $dati;
        }
        else
            return false;     
    }
    /**
     * @return mixed
     */
    public function getTask() {
        if (isset($_REQUEST['task']))
            return $_REQUEST['task'];
        else
            return false;
    }
    /**
     * @return string
     */
    public function processaTemplate(){
        return $this->fetch('registrati.tpl');
        
    }
    /**
     * @return string
     */
    public function successTemplate(){
        return $this->fetch('success.tpl');
    }
    /**
     * @return string
     */
    public function failedTemplate(){
         return $this->fetch('failed.tpl');
     
    }
    /**
     * @return string
     */
    public function tutorialTemplate() {
        return $this->fetch('tutorial.tpl');
    }
    /**
     * @return string
     */
    public function activationTemplate() {
        return $this->fetch('attivazione.tpl');
        
    }
    /**
     * Imposta i dati nel template identificati da una chiave ed il relativo valore
     *
     * @param string $key
     * @param mixed $valore
     */
    public function impostaDati($key,$valore){
        $this->assign($key,$valore);
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