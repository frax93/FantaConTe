<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class VSquadra extends View {
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
        return $this->fetch('squadra.tpl');
    }
    
}
?>