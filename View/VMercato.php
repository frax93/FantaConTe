<?php
/**
 * @package View
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class VMercato extends View {
   /**
     * @param type $key
     * @param type $valore
     */
     public function impostaDati($key,$valore) {
        $this->assign($key,$valore);
    }
    /**
     * 
     * @return type
     */
    public function processaTemplate() {
        return $this->fetch('mercato.tpl');
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
   //Da fare
     public function getDati() {
        if (isset($_REQUEST['username']))
            return $_REQUEST['username'];
        else
            return false;
    }
        
}

?>