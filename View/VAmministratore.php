<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class VAmministratore extends View{
    
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
     * 
     * @return type
     */
    public function processaTemplate() {
        return $this->fetch('Amministratore.tpl');
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
    
    public function getVoti() {
        print_r($_REQUEST);
        
    }
    
    
}
?>