<?php
/**
 * Description of db
 * @package Foundation
 * @author francesco murador
 * @author francesco maione
 * @author michele taranta
 */
Class Fdb{
   /**
    * la proprietà o il metodo dichiarato come protected è rispettivamente accessibile/modificabile e richiamabile dall’interno della classe stessa
    * e dall’interno delle classi che ereditano, ma non è accessibile dall’esterno della classe
    */
    protected $db;
    protected $tabella;
    protected $chiavedb;
    protected $bind;
    protected $autoincremento=FALSE;
    public function __construct(){
        require("includes/config.php");
        //si crea una stringa con il nome dell'host e del database
        //in seguito si crea un oggetto PDO per creare la connessione al DB
        try{ 
            //Attiva impostazione PDO per controllo errori try-catch
            
            $connection="$dbms:host=".$config[$dbms]['host'].";dbname=".$config[$dbms]['database'];
            $this->db= new PDO($connection,$config[$dbms]['user'],$config[$dbms]['password']);
            //$this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            //Disabilita Auto-commit del PDO al database
            //$this->db->setAttribute(PDO::ATTR_AUTOCOMMIT, FALSE);
        }
        catch(PDOException $error){
            die("Attenzione..! \n Errore durante la connessione al database: ".$error->getMessage());
        }
    }
    public function setvariabili($table,$dbkey,$_bind){
        $this->chiavedb=$dbkey;
        $this->tabella=$table;
        $this->bind=$_bind;
    }
    public function insert($dati){
            //usare $this->bind in $query
 
            $query = "INSERT INTO `fantaconte`.$this->tabella $this->chiavedb VALUES $dati";
            $sql=$this->db->prepare($query);
            var_dump($sql);
            //fare il bind dei dati passati usando i place-holders
            //$sql->bindParam($this->bind,$dati);
            //$sql->debugDumpParams();
            $risultato=$sql->execute();
            return $risultato;
         
        }
        /**
	  * Setta i parametri per la prossima query da effettuare
	  * @param string $_column Colonne da selezionare
	  * @param string|array $_paragone Array contenente in ordine i paragoni che si vogliono effettuare nelle condizioni (=,>,<,>=,<=)
	  * @param string|array $_parametri Parametri effettivi della query
	  * @param array $_operatori Operatori logici da applicare in caso ci siano più condizioni (AND,OR,ORDER BY)
	  * @return array $result Risultato della query effettuata
	  */
	 public function queryGenerica($_column,$_paragone,$_parametri = NULL, $_operatori = NULL) {
	 	if (preg_match('/^[^,]+$/',$this->tabella)) {
	 		$sql = "SELECT ".$_column." FROM ".$this->tabella." WHERE ";   
	 		if (is_array($_parametri)) {
	 			$sql = $sql.$this->chiavedb[0].$_paragone[0].$this->bind[0];
	 			foreach($this->bind as $key => $valore) {
	 				if ($key != 0) {
	 					$_operatori[$key-1] = strtoupper($_operatori[$key-1]);
                                                
	 					if ($_operatori[$key-1] != 'ORDER BY') {
	 						$sql = $sql." ".$_operatori[$key-1]." ".$this->chiavedb[$key].$_paragone[$key].$valore;
	 					} else {
	 						$sql = $sql." ".$_operatori[$key-1]." ".$this->chiavedb[$key]." ".$this->chiavedb[$key+1];
	 					}	
	 				} 				
	 			}
	 			$query=$this->db->prepare($sql);
                               
	 			foreach ($_parametri as $key => $valore) {
	 				$query->bindValue($this->bind[$key],$valore);
	 			}
	 		} else {
	 			$sql = $sql.$this->chiavedb.$_paragone.$this->bind;
	 			$query=$this->db->prepare($sql);
	 			$query->bindValue($this->bind,$_parametri);
	 		}
	 	} else {
	 		$sql = "SELECT ".$_column." FROM ".$this->tabella." WHERE ".$this->chiavedb[0].$_paragone[0].$this->chiavedb[1];
	 		if (isset($_parametri)) {
	 			foreach ($this->bind as $key => $valore) {
	 				if ($valore == -1) {
	 					$sql = $sql." ".$_operatori[$key]." ".$this->chiavedb[$key+2].$_paragone[0].$this->chiavedb[$key+3];
	 				} else {
	 					$_operatori[$key] = strtoupper($_operatori[$key]);
	 					$sql = $sql." ".$_operatori[$key]." ".$this->chiavedb[$key+2].$_paragone[$key+1].$valore;	 					
	 				}
	 			}
	 			$dim_bind = count($this->bind);
	 			if (isset($_operatori[$dim_bind]) && $_operatori[$dim_bind] == 'ORDER BY') {
	 				$sql = $sql." ORDER BY ".$this->chiavedb[$dim_bind+2]." ".$this->chiavedb[$dim_bind+3];
	 			}
	 			$query=$this->db->prepare($sql);
	 			foreach ($_parametri as $key => $valore) {
	 				$query->bindValue($this->bind[$key],$valore);
	 			}	
	 		} else {
	 			$query=$this->db->prepare($sql);
	 		}
	 	}
	 	try {  
	 		$query->execute();
	 		$result=$query->fetchAll(PDO::FETCH_ASSOC);
	 	} 
                catch (PDOException $e) {
	    	  echo 'Error: '.$e->getMessage();
	    }
	 	if(isset($result))
                    return $result;
                return false;
	 }
    public function queryRosa($nomesquadra){
        $sql="SELECT "."`giocatori`.`id`,`nome`,`cognome`,`squadra_reale`,`ruolo`,`valore`,`voto`"." FROM ".$this->tabella." WHERE ";
        $sql=$sql."`rosa`.id=`giocatori`.id AND `rosa`.nomesquadra='$nomesquadra'";
        $query=$this->db->prepare($sql);
        $query->execute();
        $result=$query->fetchAll();
        return $result;
    }
    
    public function queryFormazione($nomesquadra,$modulo){
        $sql="SELECT "."`titolari`"." FROM ".$this->tabella." WHERE ";
        $sql=$sql."` modulo`='$modulo' AND `squadra`='$nomesquadra'";
        $query=$this->db->prepare($sql);
        $query->execute();
        $result=$query->fetchAll();
        return $result;
    }
    public function update($valore){
                $sql = "UPDATE ".$this->tabella." SET ".$this->chiavedb[0]."=".$this->bind[0]." WHERE ".$this->chiavedb[1]."=".$this->bind[1];
	 	$query=$this->db->prepare($sql);
	 	$query->bindValue($this->bind[0],$valore[0]);
	 	$query->bindvalue($this->bind[1],$valore[1]);
	 	$query->execute();
	 	$result=$query->rowCount();
	 	return $result;
    }
    public function delete($valore){
                $sql = "DELETE FROM ".$this->tabella." WHERE ".$this->chiavedb."=".$this->bind;
	 	$query=$this->db->prepare($sql);
	 	$query->bindValue($this->bind,$valore);
	 	$query->execute();
	 	$result=$query->rowCount();
	 	return $result;  
    }
    public function deleteFormazione($nomesquadra){ 
        $sql="DELETE FROM ".$this->tabella." WHERE ";
        $sql=$sql."`squadra`='$nomesquadra'";
        var_dump($sql);
        $query=$this->db->prepare($sql);
        $query->execute();
        $result=$query->rowCount();
        return $result;
    }
    public function getDataBase(){
        return $this->db;
    }
    
} 

?>