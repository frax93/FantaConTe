<?php
/**
 * @package View
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
require('lib/smarty/Smarty.class.php');
class View extends Smarty{
    public function __construct() {
        $this->Smarty();
        //global $config;
        
        $this->template_dir = 'templates/main/templates/';
        $this->compile_dir = 'templates/main/templates_c/';
        $this->config_dir = 'templates/main/configs/';
        $this->cache_dir = 'templates/main/cache/';
        $this->caching = false;
        $this->assign('app_name', 'FantaConTe');
    }
   /**
     * @param type $key
     * @param type $valore
     */
     public function impostaDati($key,$valore) {
        $this->assign($key,$valore);
    }
    /**
     * 
     * @return boolean
     */
    //Da modificare 
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
     * 
     * @return type
     */
    public function processaTemplate($pagina) {
        return $this->fetch("$pagina".'.tpl');
    }
    /**
     * 
     * @return boolean
     */
    public function getTask(){
        if (isset($_REQUEST['task']))
            return $_REQUEST['task'];
        else
            return false;
    }
    /**
     * 
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