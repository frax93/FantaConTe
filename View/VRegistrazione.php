<?php
/**
 * @package View
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class VRegistrazione extends View{
    /**
     * Serve per cambiare template a seconda dei task
     * @var $template type string
     */
    private $template;
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
    public function processaTemplate($_template){
        $this->template=$_template;
        return $this->fetch('registrati_'.$this->template.'.tpl');
        
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
      public function getController() {
        if (isset($_REQUEST['controller']))
            return $_REQUEST['controller'];
        else
            return false;
    }
}
?>