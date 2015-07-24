<?php
/**
 * @package View
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class VFormazione extends View {
	
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
        if (isset($_REQUEST['username']))
            return $_REQUEST['username'];
        else
            return false;
    }
    /**
     * 
     * @return type
     */
    public function processaTemplate() {
        return $this->fetch('formazione.tpl');
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