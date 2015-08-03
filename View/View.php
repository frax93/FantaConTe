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
	
	/*public function inviodati($dati){
		echo json_encode($dati);
	}
	
	public function getController(){
		if (isset($_REQUEST['controller']))
			return $_REQUEST['controller'];
		else
			return false;
	}
	
	public function getTask() {
		if (isset($_REQUEST['lavoro']))
			return $_REQUEST['lavoro'];
		else
			return false;

	}
        public function getDati(){
		unset($_REQUEST["lavoro"]);
		unset($_REQUEST["controller"]);
		foreach ($_REQUEST as $key => $valore) {
			$this::controllaInput($key, $valore);
			$dati[$key] = $valore;
		}
		return $dati;
	}*/
}
?>