DROP DATABASE IF EXISTS fantaconte;
CREATE DATABASE fantaconte;
USE fantaconte;

CREATE TABLE IF NOT EXISTS `utente` (
    `username` VARCHAR(20) NOT NULL ,
    `password` VARCHAR(100) NOT NULL,
    `nome`          VARCHAR(20) NOT NULL ,
    `cognome`       VARCHAR(20) NOT NULL ,
    `email`         VARCHAR(50) NOT NULL,
    `codice_attivazione` VARCHAR(13) NOT NULL,
    `stato_attivazione` VARCHAR(11) NOT NULL,
    `tipo_utente` VARCHAR(7) NOT NULL,
    `squadra` VARCHAR(200) NOT NULL,
    PRIMARY KEY (`email`)
);
CREATE TABLE IF NOT EXISTS `Formazione`(
    ` modulo`  CHAR(5) NOT NULL,
    `titolari` VARCHAR(5) NOT NULL,
    `squadra`  VARCHAR(20) NOT NULL ,
    PRIMARY KEY(`titolari`,`squadra`)
);
CREATE TABLE IF NOT EXISTS `Classifica`(
    `username`  VARCHAR(20) NOT NULL ,
    `punteggio` INTEGER NOT NULL,
    `partite_giocate` INTEGER NOT NULL,
    `vittorie` INTEGER NOT NULL,
    `pareggi` INTEGER NOT NULL,
    `sconfitte` INTEGER NOT NULL,
    `percentuale_vittoria` FLOAT NOT NULL,
    PRIMARY KEY (`username`)
);
CREATE TABLE IF NOT EXISTS `Squadra`(
    `nome`          VARCHAR(20) NOT NULL ,
    PRIMARY KEY (`nome`)
);

CREATE TABLE  IF NOT EXISTS `Giocatori` (
    `id`            SMALLINT NOT NULL AUTO_INCREMENT ,
    `nome`          VARCHAR(20) NOT NULL ,
    `cognome`       VARCHAR(20) NOT NULL ,
    `ruolo`         VARCHAR(3) NOT NULL,
    `squadra_reale` VARCHAR(10) NOT NULL,
    `valore`        INTEGER NOT NULL, 
    `voto`          INTEGER,
    `giocato`       BOOLEAN ,
    PRIMARY KEY (`id`)
);

CREATE TABLE  IF NOT EXISTS `Rosa` (
    `id`            SMALLINT NOT NULL,
    `nomesquadra`          VARCHAR(20) NOT NULL ,
    PRIMARY KEY (`id` , `nomesquadra`)
);

INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Gianluigi', 'Buffon', 'POR', 'Juventus',19,6,False );
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Morgan', 'De Sanctis', 'POR', 'Roma',17,6,False); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mattia', 'Perin', 'POR', 'Genoa',14,6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Samir', 'Handanovic', 'POR', 'Inter',16,6,False); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Emiliano', 'Viviano', 'POR', 'Sampdoria',12,6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Albano Benjamin', 'Bizzarri', 'POR', 'Chievo',2,6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Federico', 'Marchetti', 'POR', 'Lazio',13,6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Stefano', 'Sorrentino', 'POR', 'Palermo',12,6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Andrea', 'Consigli', 'POR', 'Sassuolo','13',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Antonio', 'Mirante', 'POR', 'Parma','13',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Diego Rodriguez', 'Lopez', 'POR', 'Milan','13',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Orestis', 'Karnezis', 'POR', 'Udinese','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Norberto Murara', 'Neto', 'POR', 'Fiorentina','14',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Daniele', 'Padelli', 'POR', 'Torino','12',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Bittencourt Pinheiro', 'Rafael', 'POR', 'Verona','12',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Marco', 'Sportiello', 'POR', 'Juventus','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Luigi', 'Sepe', 'POR', 'Juventus','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Zeljko', 'Brkic', 'POR', 'Juventus','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Cabral Barbosa', 'Rafael', 'POR', 'Napoli','15',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Christian', 'Abbiati', 'POR', 'Milan','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Eugenio', 'Lamanna', 'POR', 'Genoa','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Etrit', 'Berisha', 'POR', 'Lazio','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Nicola', 'Leali', 'POR', 'Cesena','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Francesco', 'Bardi', 'POR', 'Chievo','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Francesco', 'Benussi', 'POR', 'Verona','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Sergio German', 'Romero', 'POR', 'Sampdoria','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Federico', 'Agliardi', 'POR', 'Cesena','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Simone', 'Scuffet', 'POR', 'Udinese','13',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Marco', 'Storari', 'POR', 'Juventus','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Ciprian', 'Tatarusanu', 'POR', 'Fiorentina','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mariano Gonzalo', 'Andujar', 'POR', 'Napoli','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alberto', 'Pomini', 'POR', 'Sassuolo','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Tukasz', 'Skorupski', 'POR', 'Roma','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Samir', 'Ujkani', 'POR', 'Palermo','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alessandro', 'Iacobucci', 'POR', 'Parma','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Davide', 'Bassi', 'POR', 'Empoli','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Salvador', 'Ichazo', 'POR', 'Torino','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Ciro', 'Polito', 'POR', 'Sassuolo','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Thomas', 'Strakosha', 'POR', 'Lazio','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Rubens Fernando', 'Rubinho', 'POR', 'Juventus','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Giorgio', 'Frezzolini', 'POR', 'Atalanta','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Gianluca', 'Pegolo', 'POR', 'Sassuolo','12',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Roberto', 'Colombo', 'POR', 'Napoli','2',6,False);

INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Lorenzo', 'De Silvestri', 'DIF', 'Sampdoria','12',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Leonardo', 'Bonucci', 'DIF', 'Juventus','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Gonzalo Javier', 'Rodriguez', 'DIF', 'Fiorentina','14',6,False); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Kamil', 'Glik', 'DIF', 'Torino','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Stephan', 'Lichtsteiner', 'DIF', 'Juventus','17',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Daniele', 'Rugani', 'DIF', 'Empoli','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Matteo', 'Darmian', 'DIF', 'Torino','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Stefan', 'De Vrij', 'DIF', 'Lazio','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Silvan', 'Widmer', 'DIF', 'Udinese','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Bruno', 'Peres', 'DIF', 'Torino','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Giorgio', 'Chiellini', 'DIF', 'Juventus','14',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Francesco', 'Acerbi', 'DIF', 'Sassuolo','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Dusan', 'Basta', 'DIF', 'Lazio','13',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Davide', 'Zappacosta', 'DIF', 'Atalanta','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Kostas', 'Manolas', 'DIF', 'Roma','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Achraf', 'Lazaar', 'DIF', 'Palermo','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Manuel', 'Pasqual', 'DIF', 'Fiorentina','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Luca', 'Antonelli', 'DIF', 'Milan','13',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Larangeira', 'Danilo', 'DIF', 'Udinese','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Emiliano', 'Moretti', 'DIF', 'Torino','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alessio', 'Romagnoli', 'DIF', 'Sampdoria','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Andrea', 'Barzagli', 'DIF', 'Juventus','14',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Andrade dos Santos', 'Edenilson', 'DIF', 'Genoa','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Dario', 'Dainelli', 'DIF', 'Chievo','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Sebastian', 'De Maio', 'DIF', 'Genoa','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Nicola', 'Maksimovic', 'DIF', 'Torino','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Stefan', 'Savic', 'DIF', 'Fiorentina','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Lorenzo', 'Tonelli', 'DIF', 'Empoli','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mario', 'Rui', 'DIF', 'Empoli','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Federico', 'Peluso', 'DIF', 'Sassuolo','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Nemanja', 'Vidic', 'DIF', 'Inter','12',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Massimo', 'Gobbi', 'DIF', 'Parma','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Luca', 'Rossettini', 'DIF', 'Cagliari','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Gabriel', 'Paletta', 'DIF', 'Milan','13',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Vaggelis', 'Moras', 'DIF', 'Verona','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Elseid', 'Hysaj', 'DIF', 'Empoli','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Danilo Fernando', 'Avelar', 'DIF', 'Cagliari','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Guglielmo', 'Stendardo', 'DIF', 'Atalanta','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Stefan', 'Radu', 'DIF', 'Lazio','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Philippe', 'Mexes', 'DIF', 'Milan','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Rorigo dias da Costa', 'Alex', 'DIF', 'Milan','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Andrea', 'Ranocchia', 'DIF', 'Inter','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Nicolas', 'Frey', 'DIF', 'Chievo','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Giancarlo', 'Gonzalez', 'DIF', 'Palermo','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mapou', 'Yanga Mbiwa', 'DIF', 'Roma','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Sime', 'Vrsaljko', 'DIF', 'Sassuolo','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Paolo', 'Cannavaro', 'DIF', 'Sassuolo','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Cristian', 'Molinaro', 'DIF', 'Torino','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alessandro', 'Lucarelli', 'DIF', 'Parma','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Davide', 'Astori', 'DIF', 'Roma','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Jose', 'Basanta', 'DIF', 'Fiorentina','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Christian', 'Maggio', 'DIF', 'Napoli','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Federico', 'Barba', 'DIF', 'Empoli','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Bostjan', 'Cesar', 'DIF', 'Chievo','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Angelo', 'Ogbonna', 'DIF', 'Juventus','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Matias', 'Silvestre', 'DIF', 'Sampdoria','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Vasilis', 'Torosidis', 'DIF', 'Roma','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Patrice', 'Evra', 'DIF', 'Juventus','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Sinisa', 'Andelkovic', 'DIF', 'Palermo','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Francesco', 'Renzetti', 'DIF', 'Cesena','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Luka', 'Krajnc', 'DIF', 'Cesena','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Boukary', 'Drame', 'DIF', 'Atalanta','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Facundo', 'Roncaglia', 'DIF', 'Genoa','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Ervin', 'Zukanovic', 'DIF', 'Chievo','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Davide', 'Santon', 'DIF', 'Inter','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Thomas', 'Heurtaux', 'DIF', 'Udinese','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Nicolas', 'Burdisso', 'DIF', 'Genoa','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Kalidou', 'Koulibaly', 'DIF', 'Napoli','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Raul', 'Albiol', 'DIF', 'Napoli','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Roberto', 'Vitiello', 'DIF', 'Palermo','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Zakarya', 'Bergdich', 'DIF', 'Genoa','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Andrea', 'Rispoli', 'DIF', 'Palermo','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Nenad', 'Tomovic', 'DIF', 'Fiorentina','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Giuseppe', 'Biava', 'DIF', 'Atalanta','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Ivan', 'Piris', 'DIF', 'Udinese','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Rafael', 'Marquez', 'DIF', 'Verona','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Eros', 'Pisano', 'DIF', 'Verona','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Urby', 'Emanuelson', 'DIF', 'Atalanta','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Yuto', 'Nagatomo', 'DIF', 'Inter','12',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Michel', 'Morganella', 'DIF', 'Palermo','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Douglas', 'Maicon', 'DIF', 'Roma','14',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Vasco', 'Regini', 'DIF', 'Sampdoria','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Marcos Mendoza', 'Alonso', 'DIF', 'Fiorentina','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Faouzi', 'Ghoulam', 'DIF', 'Napoli','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Andrea', 'Costa', 'DIF', 'Parma','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Ignazio', 'Abate', 'DIF', 'Milan','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Ezequiel', 'Munoz', 'DIF', 'Sampdoria','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Giovanni', 'Marchese', 'DIF', 'Genoa','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Stefano', 'Lucchini', 'DIF', 'Cesena','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Danilo', 'D\'ambrosio', 'DIF', 'Inter','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Pedro', 'Mendes', 'DIF', 'Parma','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Modibo', 'Diakite', 'DIF', 'Cagliari','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Zouhair', 'Feddal', 'DIF', 'Parma','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alessandro', 'Gamberini', 'DIF', 'Chievo','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Adil', 'Rami', 'DIF', 'Milan','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Ivan', 'Strinic', 'DIF', 'Napoli','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Jose', 'Holebas', 'DIF', 'Roma','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alessandro', 'Agostini', 'DIF', 'Verona','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Fabio', 'Daprela', 'DIF', 'Palermo','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mattia', 'Cassani', 'DIF', 'Parma','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Armando', 'Izzo', 'DIF', 'Genoa','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Antonio', 'Balzano', 'DIF', 'Cagliari','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Camilo', 'Zuniga', 'DIF', 'Napoli','13',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Edson', 'Braafheid', 'DIF', 'Lazio','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Salvatore', 'Bocchetti', 'DIF', 'Milan','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Giovanni', 'Pasquale', 'DIF', 'Udinese','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Gabriel', 'Silva', 'DIF', 'Udinese','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Juan', 'Jesus', 'DIF', 'Inter','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Yohan', 'Benalouane', 'DIF', 'Atalanta','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Molla', 'Wague', 'DIF', 'Udinese','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Dos Santos Nascimento', 'Mauricio', 'DIF', 'Lazio','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Andrea', 'Masiello', 'DIF', 'Atalanta','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Santiago', 'Gentiletti', 'DIF', 'Lazio','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Vincent', 'Laurini', 'DIF', 'Empoli','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Cristiano', 'Del Grosso', 'DIF', 'Atalanta','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Dal Bello', 'Felipe', 'DIF', 'Inter','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Claudio', 'Terzi', 'DIF', 'Palermo','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alessandro', 'Longhi', 'DIF', 'Sassuolo','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Luis Pedro', 'Cavanda', 'DIF', 'Lazio','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Martin', 'Caceres', 'DIF', 'Juventus','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Luca', 'Ceppitelli', 'DIF', 'Cagliari','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Fabrizio', 'Cacciatore', 'DIF', 'Sampdoria','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Cesare', 'Bovo', 'DIF', 'Torino','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Lorik', 'Cana', 'DIF', 'Lazio','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Miguel Angel', 'Britos', 'DIF', 'Napoli','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Daniele', 'Capelli', 'DIF', 'Cesena','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Micah', 'Richards', 'DIF', 'Fiorentina','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Fabiano', 'Santacroce', 'DIF', 'Parma','1',6,False); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Michael', 'Ciani', 'DIF', 'Lazio','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Gianpaolo', 'Bellini', 'DIF', 'Atalanta','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Ashley', 'Cole', 'DIF', 'Roma','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Marco', 'Capuano', 'DIF', 'Cagliari','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Djamel', 'Mesbah', 'DIF', 'Sampdoria','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Ivan', 'Martic', 'DIF', 'Verona','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Igor', 'Bubnjic', 'DIF', 'Udinese','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Jose Rodolfo Pires', 'Dodo', 'DIF', 'Inter','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Giandomenico', 'Mesto', 'DIF', 'Napoli','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Luca', 'Antonini', 'DIF', 'Genoa','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Lionel', 'Scaloni', 'DIF', 'Atalanta','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Gaston', 'Silva', 'DIF', 'Torino','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Guillermo', 'Rodriguez', 'DIF', 'Verona','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Paolo', 'De Ceglie', 'DIF', 'Juventus','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Daniele', 'Bonera', 'DIF', 'Milan','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Nicola', 'Murru', 'DIF', 'Cagliari','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Emanuele', 'Terranova', 'DIF', 'Sassuolo','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Cristiano', 'Biraghi', 'DIF', 'Chievo','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Gabriele', 'Perico', 'DIF', 'Cesena','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Cristian', 'Zapata', 'DIF', 'Milan','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Rafel Pinto', 'Marques', 'DIF', 'Verona','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Nicolas', 'Spolli', 'DIF', 'Roma','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Gennaro', 'Sardo', 'DIF', 'Chievo','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alassane', 'Tambe', 'DIF', 'Genoa','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Maurizio', 'Domizzi', 'DIF', 'Udinese','8',6,False); 

INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Antonio', 'Candreva', 'CEN', 'Lazio','25',6,False); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Marek', 'Hamsik', 'CEN', 'Napoli','22',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Jose Maria', 'Callejon', 'CEN', 'Napoli','27',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Paul', 'Pogba', 'CEN', 'Juventus','24',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Dries', 'Mertens', 'CEN', 'Napoli','23',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Felipe', 'Anderson', 'CEN', 'Lazio','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Iago', 'Falque', 'CEN', 'Genoa','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Franco', 'Vazquez', 'CEN', 'Palermo','13',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Claudio', 'Marchisio', 'CEN', 'Juventus','17',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Arturo', 'Vidal', 'CEN', 'Juventus','24',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Marco', 'Parolo', 'CEN', 'Lazio','15',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mohamed', 'Salah', 'CEN', 'Fiorentina','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Giacomo', 'Bonaventura', 'CEN', 'Atalanta','17',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Miralem', 'Pjanic', 'CEN', 'Roma','22',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alessandro', 'Florenzi', 'CEN', 'Roma','15',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Roberto', 'Pereyra', 'CEN', 'Juventus','12',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Anderson', 'Hernanes', 'CEN', 'Inter','19',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Radja', 'Nainggolan', 'CEN', 'Roma','13',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Maximiliano', 'Moralez', 'CEN', 'Atalanta','12',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Josip', 'Ilicic', 'CEN', 'Fiorentina','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Xherdan', 'Shaqiri', 'CEN', 'Inter','19',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Andrea', 'Bertolacci', 'CEN', 'Genoa','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Andrea', 'Pirlo', 'CEN', 'Juventus','19',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Franco', 'Brienza', 'CEN', 'Cesena','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alejandro', 'Gomez', 'CEN', 'Atalanta','16',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Omar', 'El Kaddouri', 'CEN', 'Torino','16',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Luca', 'Rigoni', 'CEN', 'Palermo','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Fredy', 'Guarin', 'CEN', 'Inter','12',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Riccardo', 'Saponara', 'CEN', 'Empoli','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Borja', 'Valero', 'CEN', 'Fiorentina','20',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Stefano', 'Mauri', 'CEN', 'Lazio','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Simone', 'Missiroli', 'CEN', 'Sassuolo','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Marques Loureiro', 'Allan', 'CEN', 'Udinese','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Matias', 'Fernandez', 'CEN', 'Fiorentina','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mateo', 'Kovacic', 'CEN', 'Inter','14',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mirko', 'Valdifiori', 'CEN', 'Empoli','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Roberto', 'Soriano', 'CEN', 'Sampdoria','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Die4', 'Perotti', 'CEN', 'Genoa','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Emil', 'Hallfredsson', 'CEN', 'Verona','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alessandro', 'Diamanti', 'CEN', 'Fiorentina','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Antonio', 'Nocerino', 'CEN', 'Parma','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'juraj', 'Kucka', 'CEN', 'Genoa','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Senad', 'Lulic', 'CEN', 'Lazio','13',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Silvestre', 'Varela', 'CEN', 'Parma','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Nigel', 'De Jong', 'CEN', 'Milan','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Keisuke', 'Honda', 'CEN', 'Milan','12',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Albin', 'Ekdal', 'CEN', 'Cagliari','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Lucas', 'Biglia', 'CEN', 'Lazio','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Joao', 'Pedro', 'CEN', 'Cagliari','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'David', 'Lopez', 'CEN', 'Napoli','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Daniele', 'De Rossi', 'CEN', 'Roma','17',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Marcelo', 'Brozovic', 'CEN', 'Inter','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Daniele', 'Croce', 'CEN', 'Empoli','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Sanchez', 'Joaquin', 'CEN', 'Fiorentina','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Valter', 'Birsa', 'CEN', 'Chievo','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Jacopo', 'Sala', 'CEN', 'Verona','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Matias', 'Vecino', 'CEN', 'Empoli','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Seydou', 'Keita', 'CEN', 'Roma','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Jose', 'Mauri', 'CEN', 'Parma','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Marco', 'Benassi', 'CEN', 'Torino','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Pedro', 'Obiang', 'CEN', 'Sampdoria','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alfred', 'Duncan', 'CEN', 'Sampdoria','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Perparim', 'Hetemaj', 'CEN', 'Chievo','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Luca', 'Cigarini', 'CEN', 'Atalanta','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Ezequiel', 'Schelotto', 'CEN', 'Chievo','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Andrea', 'Poli', 'CEN', 'Milan','12',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Angelo', 'Palombo', 'CEN', 'Sampdoria','8',6,False); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Maxime', 'Lestienne', 'CEN', 'Genoa','13',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mariano', 'Izco', 'CEN', 'Chievo','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Simone', 'Verdi', 'CEN', 'Empoli','9',6,False); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Daniele', 'Baselli', 'CEN', 'Atalanta','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Panagiotis', 'Kone', 'CEN', 'Udinese','14',6,False); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alberto Facundo', 'Costa', 'CEN', 'Genoa','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Edgar', 'Barreto', 'CEN', 'Palermo','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Giuseppe', 'Vives', 'CEN', 'Torino','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Francesco', 'Lodi', 'CEN', 'Parma','15',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Panagiotis', 'Tachtsidis', 'CEN', 'Verona','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Bruno', 'Fernandes', 'CEN', 'Udinese','14',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alberto', 'Aquilani', 'CEN', 'Fiorentina','17',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Francesco', 'Magnanelli', 'CEN', 'Sassuolo','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'David', 'Pizarro', 'CEN', 'Fiorentina','12',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Ivan', 'Radovanovic', 'CEN', 'Chievo','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alexander', 'Farnerud', 'CEN', 'Torino','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Daniele', 'Dessena', 'CEN', 'Cagliari','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Stefano', 'Sturaro', 'CEN', 'Juventus','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Jonathan', 'De Guzman', 'CEN', 'Napoli','13',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Simone', 'Padoin', 'CEN', 'Juventus','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Torres', 'Guilherme', 'CEN', 'Udinese','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Davide', 'Biondini', 'CEN', 'Sassuolo','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Milan', 'Badelj', 'CEN', 'Fiorentina','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Gary', 'Medel', 'CEN', 'Inter','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Ivajlo', 'Chochev', 'CEN', 'Palermo','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mounir', 'Obbadi', 'CEN', 'Verona','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Saphir', 'Taider', 'CEN', 'Sassuolo','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Juan Manuel', 'Vargas', 'CEN', 'Fiorentina','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Kevin', 'Strootman', 'CEN', 'Roma','19',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Lazaros', 'Christodoulopoulos', 'CEN', 'Verona','14',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Bosko', 'Jankovic', 'CEN', 'Verona','14',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Robin', 'Quaison', 'CEN', 'Palermo','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Piotr', 'Zielinski', 'CEN', 'Empoli','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Tomas', 'Rincon', 'CEN', 'Genoa','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Danilo', 'Cataldi', 'CEN', 'Lazio','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Andi', 'Lila', 'CEN', 'Parma','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alessandro', 'Gazzi', 'CEN', 'Torino','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Gokhan', 'Inler', 'CEN', 'Napoli','13',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Marco', 'D\'Alessandro', 'CEN', 'Atalanta','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Godfred', 'Donsah', 'CEN', 'Cagliari','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Emmanuel', 'Badu', 'CEN', 'Udinese','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Cristobal', 'Jorquera', 'CEN', 'Parma','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mato', 'Jajalo', 'CEN', 'Palermo','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Emmanuel', 'Cascione', 'CEN', 'Cesena','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Giulio', 'Migliaccio', 'CEN', 'Atalanta','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Luiz Frello', 'Jorginho', 'CEN', 'Napoli','14',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Cristian Daniel', 'Ledesma', 'CEN', 'Lazio','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Giampiero', 'Pinzi', 'CEN', 'Udinese','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Lorenzo', 'Crisetig', 'CEN', 'Cagliari','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Leandro', 'Greco', 'CEN', 'Verona','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Marco', 'Van Ginkel', 'CEN', 'Milan','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Joaquin', 'Correa', 'CEN', 'Sampdoria','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Afriyie', 'Acquah', 'CEN', 'Sampdoria','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Matteo', 'Brighi', 'CEN', 'Sassuolo','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Walter', 'Gargano', 'CEN', 'Napoli','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Carlos', 'Carmona', 'CEN', 'Atalanta','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Luigi', 'Giorgi', 'CEN', 'Cesena','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Giannis', 'Fetfatzidis', 'CEN', 'Chievo','12',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Riccardo', 'Montolivo', 'CEN', 'Milan','14',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Francesco', 'Bolzoni', 'CEN', 'Palermo','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Daniele', 'Galloppa', 'CEN', 'Parma','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Diego', 'Laxalt', 'CEN', 'Genoa','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Kingsley', 'Coman', 'CEN', 'Juventus','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Giuseppe', 'De Feudis', 'CEN', 'Cesena','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Jasmin', 'Kurtic', 'CEN', 'Fiorentina','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Andrea', 'Cossu', 'CEN', 'Cagliari','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Enzo', 'Maresca', 'CEN', 'Palermo','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Ogenyi', 'Onazi', 'CEN', 'Lazio','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Isaac', 'Cofie', 'CEN', 'Chievo','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Daniele', 'Conti', 'CEN', 'Cagliari','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Kwadwo', 'Asamoah', 'CEN', 'Juventus','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Jesus Fernandez', 'Suso', 'CEN', 'Milan','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Salih', 'Ucan', 'CEN', 'Roma','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Dejan', 'Lazarevic', 'CEN', 'Sassuolo','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mattia', 'Valoti', 'CEN', 'Verona','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Raman', 'Chibsah', 'CEN', 'Sassuolo','3',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Leandro', 'Paredes', 'CEN', 'Roma','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Sulley', 'Muntari', 'CEN', 'Milan','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'McDonald', 'Mariga', 'CEN', 'Parma','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Federico', 'Mattiello', 'CEN', 'Chievo','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Michael', 'Essien', 'CEN', 'Milan','7',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Luca', 'Marrone', 'CEN', 'Juventus','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Joshua', 'Brillante', 'CEN', 'Empoli','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alvaro', 'Gonzalez', 'CEN', 'Torino','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Joel', 'Obi', 'CEN', 'Inter','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Andrea', 'Lazzari', 'CEN', 'Fiorentina','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Lucas', 'Evangelista', 'CEN', 'Udinese','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Rolando', 'Mandragora', 'CEN', 'Genoa','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Marco', 'Marchionni', 'CEN', 'Sampdoria','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Assane', 'Gnoukouri', 'CEN', 'Inter','2',6,False);

INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Luca', 'Toni', 'ATT', 'Verona','30',6,False); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Carlos', 'Tevez', 'ATT', 'Juventus','37',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mauro', 'Icardi', 'ATT', 'Inter','28',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Gonzalo', 'Higuain', 'ATT', 'Napoli','36',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Domenico', 'Berardi', 'ATT', 'Sassuolo','27',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Antonio', 'Di Natale', 'ATT', 'Udinese','29',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Manolo', 'Gabbiadini', 'ATT', 'Napoli','23',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Miroslav', 'Klose', 'ATT', 'Lazio','25',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Fabio', 'Quagliarella', 'ATT', 'Torino','26',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Rodrigo', 'Palacio', 'ATT', 'Inter','30',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Paulo', 'Dybala', 'ATT', 'Palermo','17',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Samuel', 'Eto\'o', 'ATT', 'Sampdoria','24',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Citadin Martins', 'Eder', 'ATT', 'Sampdoria','26',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alberto', 'Paloschi', 'ATT', 'Chievo','25',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Francesco', 'Totti', 'ATT', 'Roma','27',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Fernando', 'Llorente', 'ATT', 'Juventus','33',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Jeremy', 'Menez', 'ATT', 'Milan','18',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Massimo', 'Maccarone', 'ATT', 'Empoli','18',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Simone', 'Zaza', 'ATT', 'Sassuolo','22',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Marco', 'Sau', 'ATT', 'Cagliari','25',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Maximiliano Gaston', 'Lopez', 'ATT', 'Torino','20',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Cyril', 'Thereau', 'ATT', 'Udinese','20',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alessio', 'Cerci', 'ATT', 'Milan','29',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mattia', 'Destro', 'ATT', 'Milan','30',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alberto', 'Gilardino', 'ATT', 'Fiorentina','17',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alvaro', 'Morata', 'ATT', 'Juventus','18',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'German', 'Denis', 'ATT', 'Atalanta','26',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mario', 'Gomez', 'ATT', 'Fiorentina','32',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Lukas', 'Podolski', 'ATT', 'Inter','24',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Nicola', 'Sansone', 'ATT', 'Sassuolo','20',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Luis', 'Muriel', 'ATT', 'Sampdoria','19',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Giuseppe', 'Rossi', 'ATT', 'Fiorentina','35',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Juan', 'Iturbe', 'ATT', 'Roma','25',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Gregoire', 'Defrel', 'ATT', 'Cesena','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Lombe Yao Kouassi', 'Gervinho', 'ATT', 'Roma','24',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Seydou', 'Doumbia', 'ATT', 'Roma','20',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alessandro', 'Matri', 'ATT', 'Juventus','23',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Victor', 'Ibarbo', 'ATT', 'Roma','23',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Juan', 'Gomez', 'ATT', 'Verona','18',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Mauricio', 'Pinilla', 'ATT', 'Atalanta','15',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Filip', 'Djordjevic', 'ATT', 'Lazio','17',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Stephan', 'El Shaarawy', 'ATT', 'Milan','24',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Adem', 'Ljajic', 'ATT', 'Roma','18',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Lorenzo', 'Insigne', 'ATT', 'Napoli','22',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Paul Jose', 'M\'poku', 'ATT', 'Cagliari','12',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Stefano', 'Okaka', 'ATT', 'Sampdoria','15',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Andrea', 'Belotti', 'ATT', 'Palermo','14',6,False); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Sergio', 'Pellissier', 'ATT', 'Chievo','14',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Leonardo', 'Pavoletti', 'ATT', 'Genoa','10',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Balde Diao', 'Keita', 'ATT', 'Lazio','22',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Riccardo', 'Meggiorini', 'ATT', 'Chievo','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Diego', 'Farias', 'ATT', 'Cagliari','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Nicolas', 'Lopez', 'ATT', 'Verona','14',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'M\'baye', 'Niang', 'ATT', 'Genoa','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Giampaolo', 'Pazzini', 'ATT', 'Milan','16',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Gonzalo', 'Bergessio', 'ATT', 'Sampdoria','22',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Duje', 'Cop', 'ATT', 'Cagliari','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Duvan', 'Zapata', 'ATT', 'Napoli','15',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Raffaele', 'Palladino', 'ATT', 'Parma','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Josef', 'Martinez', 'ATT', 'Torino','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Antonio', 'Floro Flores', 'ATT', 'Sassuolo','13',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Javier', 'Saviola', 'ATT', 'Verona','18',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Levan', 'Mchedlidze', 'ATT', 'Empoli','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Guida', 'Marilungo', 'ATT', 'Cesena','20',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Francesco', 'Tavano', 'ATT', 'Empoli','16',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Alejandro', 'Rodriguez', 'ATT', 'Cesena','2',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Khouma', 'Babacar', 'ATT', 'Fiorentina','4',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Milan', 'Djuric', 'ATT', 'Cesena','6',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Sergio', 'Floccari', 'ATT', 'Sassuolo','11',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Cavalho de Oliveira', 'Amauri', 'ATT', 'Torino','15',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Rolando', 'Bianchi', 'ATT', 'Atalanta','15',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Richmond', 'Boakye', 'ATT', 'Atalanta','14',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Samuele', 'Longo', 'ATT', 'Cagliari','13',6,False); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Rodrigo', 'Aguirre', 'ATT', 'Udinese','8',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Perez Cuesta', 'Michu', 'ATT', 'Napoli','15',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Stipe', 'Perica', 'ATT', 'Udinese','5',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Federico', 'Bernardeschi', 'ATT', 'Fiorentina','9',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Massimo', 'Coda', 'ATT', 'Parma','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Simon', 'Makienok', 'ATT', 'Palermo','12',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'Daniele', 'Verde', 'ATT', 'Roma','1',6,False);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`,`giocato`) VALUES ( 'George', 'Puscas', 'ATT', 'Inter','1',6,False);