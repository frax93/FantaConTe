<?php
/**
 * Description of Utente
 * @package Domain
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class DUtente{
    
    private $username;
    private $password;
    private $nome;
    private $cognome;
    /*se si vuole inserire immagine nel profilo  
    private $image;*/
    private $email;
    private $codice_attivazione;
    private $stato_attivazione;
    private $tipo;
    private $squadra;
    public function __construct($_username,$_password,$_email,$_statoatt,$_nome,$_cognome,$_tipo, DSquadra $_squadra){
        $this->setusername($_username);
        $this->setpassword($_password);
        $this->setemail($_email);
        $this->setstato($_statoatt);
        $this->setnome($_nome);
        $this->setcognome($_cognome);
        $this->set_tipouser($_tipo);
        $this->set_activationcode();
        $this->setsquadra($_squadra);
    }
    public function setusername($_username){
        $regexp='/^[[:alnum:]_\.-]{3,15}$/';
        if(preg_match($regexp,$_username))
            $this->username=$_username;
        else 
            return "Username non valida";
    }
    public function setpassword($_password){
        $regexp='/^[[:alnum:][:punct:]]{6,20}$/';
        if(preg_match($regexp,$_password))
            $this->password=md5($_password);
        else
            return "Password non valida";
    }
    public function setnome($_nome){
        $regexp='/^[[:alpha:] \']{3,20}$/';
        if(preg_match($regexp,$_nome))
           $this->nome=$_nome;
        else 
            return "Nome non valido";
    }
    public function setcognome($_cognome){
        $regexp='/^[[:alpha:] \']{3,30}$/';
        if(preg_match($regexp,$_cognome))
           $this->cognome=$_cognome;
        else
            return "Cognome non valido";
    }
    public function setemail($_email){
        if(filter_var($_email,FILTER_VALIDATE_EMAIL))
           $this->email=$_email;
        else 
            return "Email non valida";
    }
    public function setsquadra(DSquadra $_squadra){
        $_squadra= $_squadra->getAsArray();
        $_squadra= serialize($_squadra);
        $this->squadra=$_squadra;
    }
    public function set_activationcode(){
        if(!(isset($this->codice_attivazione)))
            $this->codice_attivazione=uniqid();
    }
    public function set_tipouser($_tipo){
        $this->tipo=$_tipo;
    }
    public function setstato($_stato){
        $this->stato_attivazione=$_stato;
    }
    public function getusername(){
        return $this->username;
    }
    public function getpassword(){
        return $this->password;
    }
    public function getnome(){
        return $this->nome;
    }
    public function getcognome(){
        return $this->cognome;
    }
    public function getemail(){
        return $this->email;
    }
    public function gettype(){
        return $this->tipo;
    }
    public function getactivationcode(){
        return $this->codice_attivazione;
    }
    public function getsquadra(){
        $_squadra=unserialize($this->squadra);
        return $_squadra;
    }
    public function statoattivazione(){
        return $this->stato_attivazione;
    }
    public function getAsArray(){
    	$result=array();
    	foreach($this as $key => $value) {
    		if (!is_array($value) && !is_object($value)) {
    			$result[$key]= $value;
    		}
    	}
    	return $result;
    }
}
?>
