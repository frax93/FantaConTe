<?php
/**
 * Classe DUtente che descrive l'Utente
 * @package Domain
 * @author Francesco Murador
 * @author Francesco Maione
 * @author Michele Taranta
 */
class DUtente{
    /**
     *
     * @var string $username identifica l'username dell'utente
     */
    private $username;
    /**
     *
     * @var string $password identifica la password dell'utente
     */
    private $password;
    /**
     *
     * @var string $nome identifica il nome dell'utente
     */
    private $nome;
    /**
     *
     * @var string $cognome identifica il cognome dell'utente
     */
    private $cognome;
    /**
     *
     * @var string $email identifica l'email dell'utente
     */
    private $email;
    /**
     *
     * @var string $codice_attivazione identifica il codice di attivazione dell'utente
     */
    private $codice_attivazione;
    /**
     *
     * @var string $stato_attivazione identifica lo stato dell'attivazione dell'utente
     */
    private $stato_attivazione;
    /**
     *
     * @var string $tipo identifica il tipo dell'utente
     */
    private $tipo;
    /**
     *
     * @var DSquadra $squadra identifica la dell'utente
     */
    private $squadra;
    /**
     * Costruttore di Utente
     * @param string $_username
     * @param string $_password
     * @param string $_email
     * @param string $_statoatt
     * @param string $_nome
     * @param string $_cognome
     * @param string $_tipo
     * @param DSquadra $_squadra
     */

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
    /**
     * Setta $_username come username dell'utente e in caso non sia valida ritorna una stringa
     * @param string $_username
     * @return string
     */
    public function setusername($_username){
        $regexp='/^[[:alnum:]_\.-]{3,15}$/';
        if(preg_match($regexp,$_username))
            $this->username=$_username;
        else 
            return "Username non valida";
    }
    /**
     * Setta $_password come password dell'utente e in caso non sia valida ritorna una stringa
     * @param string $_password
     * @return string
     */
    public function setpassword($_password){
        $regexp='/^[[:alnum:][:punct:]]{6,20}$/';
        if(preg_match($regexp,$_password))
            $this->password=md5($_password);
        else
            return "Password non valida";
    }
    /**
     * Setta $_nome come nome dell'utente e in caso non sia valido ritorna una stringa
     * @param string $_nome
     * @return string
     */
    public function setnome($_nome){
        $regexp='/^[[:alpha:] \']{3,20}$/';
        if(preg_match($regexp,$_nome))
           $this->nome=$_nome;
        else 
            return "Nome non valido";
    }
    /**
     * Setta $_cognome come cognome dell'utente e in caso non sia valido ritorna una stringa
     * @param string $_cognome
     * @return string
     */
    public function setcognome($_cognome){
        $regexp='/^[[:alpha:] \']{3,30}$/';
        if(preg_match($regexp,$_cognome))
           $this->cognome=$_cognome;
        else
            return "Cognome non valido";
    }
    /**
     * Setta $_email come email dell'utente e in caso non sia valida ritorna una stringa
     * @param string $_email
     * @return string
     */
    public function setemail($_email){
        if(filter_var($_email,FILTER_VALIDATE_EMAIL))
           $this->email=$_email;
        else 
            return "Email non valida";
    }
    /**
     * Setta $_squadra come squadra dell'utente
     * @param DSquadra $_squadra
     */
    public function setsquadra(DSquadra $_squadra){
        $_squadra= $_squadra->getAsArray();
        $_squadra= serialize($_squadra);
        $this->squadra=$_squadra;
    }
    /**
     * Setta il codice di attivazione dell'utente
     */
    public function set_activationcode(){
        if(!(isset($this->codice_attivazione)))
            $this->codice_attivazione=uniqid();
    }
    /**
     * Setta $_tipo come il tipo dell'utente
     * @param string $_tipo
     */
    public function set_tipouser($_tipo){
        $this->tipo=$_tipo;
    }
    /**
     * Setta $_stato come lo stato di attivazione dell'utente
     * @param string $_stato
     */
    public function setstato($_stato){
        $this->stato_attivazione=$_stato;
    }
    /**
     * Funzione che restituisce l'username dell'utente
     * @return string rappresenta l'username dell'utente
     */
    public function getusername(){
        return $this->username;
    }
    /**
     * Funzione che restituisce la password dell'utente
     * @return string rappresenta la password dell'utente
     */
    public function getpassword(){
        return $this->password;
    }
    /**
     * Funzione che restituisce il nome dell'utente
     * @return string rappresenta il nome dell'utente
     */
    public function getnome(){
        return $this->nome;
    }
    /**
     * Funzione che restituisce il cognome dell'utente
     * @return string rappresenta il cognome dell'utente
     */
    public function getcognome(){
        return $this->cognome;
    }
    /**
     * Funzione che restituisce l'email dell'utente
     * @return string rappresenta l'email dell'utente
     */
    public function getemail(){
        return $this->email;
    }
    /**
     * Funzione che restituisce il tipo dell'utente
     * @return string rappresenta il tipo dell'utente
     */
    public function gettype(){
        return $this->tipo;
    }
    /**
     * Funzione che restituisce il codice di attivazione dell'utente
     * @return string rappresenta il codice di attivazione dell'utente
     */
    public function getactivationcode(){
        return $this->codice_attivazione;
    }
    
    /**
     * Funzione che restituisce la squadra dell'utente
     * @return DSquadra rappresenta la squadra dell'utente
     */
    public function getsquadra(){
        $_squadra=unserialize($this->squadra);
        return $_squadra;
    }
    /**
     * Funzione che restituisce lo stato di attivazione dell'utente
     * @return string rappresenta lo stato di attivazione dell'utente
     */
    public function statoattivazione(){
        return $this->stato_attivazione;
    }
    /**
     * Funzione che restituisce l'array dato dalla trasformazione dell'oggetto Classifica
     * @return array Trasforma l'oggetto in un array
     */
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
