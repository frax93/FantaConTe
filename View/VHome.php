<?php
/**
 * @package View
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class VHome extends View{
    /**
     * Assegna il contenuto al template e lo manda in output
     */
    public function mostraPagina() {
        $this->assign('right_content',$this->side_content);
        $this->assign('tasti_laterali',$this->side_button);
        $this->display('home.tpl');
    }
    /**
     * imposta il contenuto principale alla variabile privata della classe
     */
    public function impostaContenuto($contenuto) {
        $this->content=$contenuto;
    }
    /**
     * Restituisce il controller passato tramite richiesta GET o POST
     *
     * @return mixed
     */
    public function getController() {
        if (isset($_REQUEST['controller']))
            return $_REQUEST['controller'];
        else
            return false;
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
    /**
     * aggiunge il tasto logout al menu laterale
     */
    public function aggiungiTastoLogout() {
        $tasto_logout=array();
        $tasto_logout[]=array('testo' => 'Logout', 'link' => '?controller=Registrazione&task=esci');
        $this->side_button=array_merge($tasto_logout,$this->side_button);
    }
    /**
     * aggiunge il tasto per la registrazione nel menu laterale (per gli utenti non autenticati)
     */
    public function aggiungiTastoRegistrazione() {
        $menu_registrazione=array();
        $menu_registrazione[]=array('testo' => 'Attivati', 'link' => '?controller=Registrazione&task=attivazione');
        $this->side_button[]=array_merge(array('testo' => 'Registrati', 'link' => '?controller=Registrazione&task=registra', 'submenu' => $menu_registrazione),$this->side_button);
    }
}
 ?>