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
   /**
    * Prende gli id dei giocatori nella view
    * @return boolean
    */
     public function getDati(){
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
        
}

?>