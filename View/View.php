<?php
/**
 * Classe View che ha i metodi fondamentali delle view
 * @package View
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
require('lib/smarty/Smarty.class.php');
class View extends Smarty{
    /**
     * Costruttore di View
     */
    public function __construct() {
        $this->Smarty();      
        $this->template_dir = 'templates/main/templates/';
        $this->compile_dir = 'templates/main/templates_c/';
        $this->config_dir = 'templates/main/configs/';
        $this->cache_dir = 'templates/main/cache/';
        $this->caching = false;
        $this->assign('app_name', 'FantaConTe');
    }
   /**
     * Imposta i dati 
     * @param string $key
     * @param mixed $valore
     */
     public function impostaDati($key,$valore) {
        $this->assign($key,$valore);
    }
    /**
     * Restituisce i dati arrivati
     * @return boolean
     */
     public function getDati() {
        unset($_REQUEST['task']);
        unset($_REQUEST['controller']);
        unset($_REQUEST['submit']);
        $dati=array();
        if(isset($_REQUEST)){
          foreach($_REQUEST as $key => $value)
            array_push($dati,$value);
          return $dati;
        }
        else
            return false;
    }
    /**
     * Processa il template della pagina
     * @param string $pagina
     * @return mixed
     */
    public function processaTemplate($pagina) {
        return $this->display("$pagina".'.tpl');
    }
    /**
     * Controlla se nei dati arrivati c'è un task da richiamare
     * @return boolean
     */
    public function getTask(){
        if (isset($_REQUEST['task']))
            return $_REQUEST['task'];
        else
            return false;
    }
    /**
     * Controlla se nei dati arrivati c'è un controller da richiamare
     * @return boolean
     */
    public function getController(){
        if (isset($_REQUEST['controller']))
            return $_REQUEST['controller'];
        else
            return false;
    }
}
?>