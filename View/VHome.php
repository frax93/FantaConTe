<?php
/**
 * @package View
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class VHome extends View{
    private $content;
    /**
     * imposta il contenuto principale alla variabile privata della classe
     */
    public function impostaContenuto($contenuto) {
        $this->content=$contenuto;
    }
    /**
     * Imposta la pagina per gli utenti registrati/autenticati
     */
    public function PaginaRegistrato($classifica) {
        $session=USingleton::getInstance('USession');            
        $this->assign('Fanta','Fanta');
        $this->assign('Con','Con');
        $this->assign('Te','Te');
        $this->assign('Benvenuto',$session->getvalore('username'));
        $this->assign('title','FantaConTe');
        $this->assign('arr',$classifica);
        $vincitore=$classifica[0]['nome_squadra'];
        $this->assign('vincitore',$vincitore);
        $this->display('classifica.tpl');
    }
    /*
     * imposta la pagina per gli utenti non registrati/autenticati
     */
    public function PaginaGuest() {
        $this->assign('title','FantaConTe');
        $this->assign('Fanta','Fanta');
        $this->assign('Con','Con');
        $this->assign('Te','Te');
        $this->display('home.tpl');
    }
}
 ?>