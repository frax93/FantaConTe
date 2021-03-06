<?php
/**
 * Questa è la classe che gestisce la registrazione
 * @package Controller
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class CRegistrazione {
    /**
     * Controlla se l'utente è registrato o meno
     * @return boolean
     */
    public function getUtenteRegistrato() {
        $autenticato=false;
        $session=USingleton::getInstance('USession');
        $VRegistrazione= USingleton::getInstance('VRegistrazione');
        $task=$VRegistrazione->getTask();
        $controller=$VRegistrazione->getController();
        $dati=$VRegistrazione->getDati();
        if($session->getvalore('email')!=false) {
            $autenticato=true;
            //autenticato
        } elseif ($task=='login' && $controller=='Registrazione') {
            //controlla autenticazione
            $autenticato=$this->login();
        }
        if ($task=='logout' && $controller=='Registrazione') {
            //logout
            $this->logout();
            $autenticato=false;
        }
        return $autenticato;
    }
    /**
     * Controlla se una coppia username e password corrispondono ad un utente regirtrato ed in tal caso impostano le variabili di sessione relative all'autenticazione
     *
     * @return mixed
     */
    public function login() {
        $VRegistrazione= USingleton::getInstance('VRegistrazione');
        $login=$VRegistrazione->getDati();
        $FUtente=USingleton::getInstance('FUtente');
        $user=$FUtente->getUtenteByEmail($login['email']);
        if(empty($user)==0){
            $user=$user[0];
            if($user['password']==md5($login['password'])){
                if($user['stato_attivazione']==="Attivato"){
                    $session=USingleton::getInstance('USession');
                    $session->setvalore('username',$user['username']);
                    $session->setValore('nome',$user['nome']);
        	    $session->setValore('cognome',$user['cognome']);
        	    $session->setValore('email',$user['email']);
                    $session->setValore('squadra',$user['squadra']);
        	    $session->setValore('tipo_utente',$user['tipo_utente']);
                    $session->setValore('primoaccesso',true);
                    return true;
                 }
                else 
                    throw new Exception("Utente non attivato");
            }
            else{
                $VRegistrazione->impostaDati('errore','DATI ERRATI o MANCANTI!!!');
                $VRegistrazione->impostaDati('fallito','Torna indietro e riprova.');
                return $VRegistrazione->processaTemplate('loginfallito');
            }
        }   
         else {
            $VRegistrazione->impostaDati('errore','Utente non registrato');
            $VRegistrazione->impostaDati('fallito','Torna indietro e registrati.');
            return $VRegistrazione->processaTemplate('loginfallito');
         }
    return false;
}
    
    /**
     * Crea un utente sul database controllando che non esista già
     *
     * @return mixed
     */
    public function registra() {
        $VRegistrazione=USingleton::getInstance('VRegistrazione');
        $futente=USingleton::getInstance('FUtente');
        $fdb=USingleton::getInstance('Fdb');
        $data=$VRegistrazione->getDatiRegistrazione();
        $Squadra= new DSquadra($data['nome_squadra']);
        try{
        /*Controlla se l'utente non è già stato registrato*/
            if (!($futente->getUtenteByEmail($data['email']))){
              if($data['password_1']===$data['password']) {
                unset($data['password_1']);
                $dutente=new DUtente($data['username'],$data['password'],$data['email'],
                        "Attivato", $data['nome'],$data['cognome'],"normale",$Squadra);
                $dutente->set_activationcode();
                $futente->inserisciUtente($dutente);
                $this->invia_email($dutente);
                //$this->attivazione();
                return $VRegistrazione->processaTemplate('registrati_success');
                }  
            throw new Exception("Utente già registrato");
            }
        }
        catch (Exception $e){
            	return $VRegistrazione->processaTemplate('registrati_failed');
                
        }
        
    }
    
    /**
     * Invia un email contenente il codice di attivazione per un utente appena registrato
     *
     * @global array $config
     * @param EUtente $utente
     */
    //Da fare
    private function invia_email(DUtente $_utente) {
        $FUtente=USingleton::getInstance('FUtente');
        $email=$_utente->getemail();
    	$email_url = urlencode($email);
    	$utente=$FUtente->getUtenteByEmail($email);
        $utente=$utente[0];
    	$codice_attivazione = $utente['codice_attivazione'];
    	$url = "http://localhost/FantaConTe/index.php?controller=Registrazione&task=attiva&codice_attivazione=".$codice_attivazione."&mail=".$email_url;
    	$to = $email;
    	$subject = 'Benvenuto in FantaConTe';
    	$message = "Clicca sul seguente link per attivare il tuo account: " . $url;
    	$headers = 'From: fantaconte@altervista.org' . "\r\n" .
    			'Reply-To: fantaconte@altervista.org' . "\r\n" .
    			'X-Mailer: PHP/' . phpversion();
    			'MIME-Version: 1.0\n' .
    			'Content-Type: text/html; charset=\"iso-8859-1\"\n' .
    			'Content-Transfer-Encoding: 7bit\n\n';
    	mail($to, $subject, $message, $headers);
    }
    /**
     * Attiva un utente che inserisce un codice di attivazione valido oppure clicca sul link di autenticazione nell'email
     *
     */
    public function attivazione() {
        $VRegistrazione = USingleton::getInstance('VRegistrazione');
        $attivazione=$VRegistrazione->getDatiAttivazione();
        $futente=USingleton::getInstance('FUtente');
        $user=$futente->getUtenteByEmail($attivazione['email']);
        $user=$user[0];
        if (isset($attivazione)){
            if ($user->getCodiceAttivazione()==$attivazione['codice']) {
                $update = array("stato_attivazione" => "attivato",
    				       "email" => urldecode($attivazione['email']));
    		$futente->updateUtente($update);
                
            }
    }
    }
    /**
     * Mostra il modulo di registrazione
     *
     * @return string
     */
    public function inviamodulo() {
        $VRegistrazione=USingleton::getInstance('VRegistrazione');
        return $VRegistrazione->processaTemplate('registrati_reg');
    }
    /**
     * EfFettua il logout
     */
    public function logout() {
        $session=USingleton::getInstance('USession');
        $session->cancellaValore('username');
        $session->cancellaValore('nome');
        $session->cancellaValore('cognome');
        $session->cancellaValore('email');
        $session->cancellaValore('tipo_utente');    
    }
    /**
     * Mostra il tutorial per gli utenti non registrati
     * @return mixed
     */
    public function tutorial(){
     $VRegistrazione=USingleton::getInstance('VRegistrazione');
     return $VRegistrazione->processaTemplate("registrati_tutorial");
    }  
    /**
     * Controlla se esiste un utente gia' registrato con la stessa email
     * @return mixed
     */
    public function controllaemail(){
        $email=$_REQUEST['email'];
        $esiste=0;
        $futente= USingleton::getInstance('FUtente');
        $user=$futente->getUtenteByEmail($email);
        if($user!=false||!(filter_var($email,FILTER_VALIDATE_EMAIL))){
            $esiste=1;
        }   
        return($esiste);
    }
    /**
     * Smista le richieste ai relativi metodi della classe
     * 
     */
    public function mux() {
        $view=USingleton::getInstance('VRegistrazione');
        switch ($view->getTask()) {
            case 'recupera_password':
                return $this->recuperaPassword();
            case 'modulo_registrazione':
                return $this->inviamodulo();
            case 'salva':
                return $this->registra();
            case 'login':
                return $this->login();
            case 'attiva':
                return $this->attivazione();
            case 'logout':
                return $this->getUtenteRegistrato();
            case 'tutorial':
                return $this->tutorial();
            case 'Controllaemail':
                return $this->controllaemail();
        }
    }
}
?>

