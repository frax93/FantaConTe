<?php
/**
 * @package View
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class VClassifica extends View{
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
        return $this->fetch('classifica.tpl');
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
}

?>

