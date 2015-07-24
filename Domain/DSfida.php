<?php
/**
 * Description of Sfida
 * @package Domain
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class DSfida {
    private $goal_casa;
    private $goal_trasferta;
    public function __construct(){
		$this->setGoalcasa(0);
		$this->setGoaltrasferta(0);
    }

    public function getgoalcasa(){
	return $this->goal_casa;
    }

    public function getgoaltrasferta(){
	return $this->goal_trasferta;
    }
    
    public function setgoalcasa($_goalcasa){
	$this->goalcasa=$_goalcasa;
    }

    public function setgoaltrasferta($_goaltrasferta){
	$this->goal_trasferta=$_goaltrasferta;
    }
    
    public function calcolagoal($_fantapoint){
	    if($_fantapoint<67) 
                $this->goal=0;
	    else if($_fantapoint>67 && $_fantapoint<70) 
                $this->goal=1;
	    else $this->goal=($fantap-67)/3+1;
	    return $this->goal;
    }
    
    public function calcolarisultato($_fantapointcasa,$_fantapointtrasferta){
        $this->goal_casa=$this->calcolagoal($_fantapointcasa);
        $this->goal_trasferta=$this->calcolagoal($_fantapointtrasferta);
        return "$this->goal_casa - $this->goal_trasferta";  
    }

}
    
?>