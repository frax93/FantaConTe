<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class VAmministratore extends View{
    /**
     * 
     * @return boolean
     */
    public function getVoti() {
        unset($_REQUEST['controller']);
        unset($_REQUEST['task']);
        unset($_REQUEST['submit']);
        $voti=array(0=>'');
        if(isset($_REQUEST)){
          foreach($_REQUEST as $key => $value)
            array_push($voti,$value);
          return $voti;
        }
        else
            return false;
        }
    
    
}
?>