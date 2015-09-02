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
    `modulo`  CHAR(5) NOT NULL,
    `titolari` VARCHAR(5) NOT NULL,
    `squadra`  VARCHAR(20) NOT NULL ,
    `fpunteggio` INTEGER NOT NULL
    `countdif` INTEGER NOT NULL,
    `countcen` INTEGER NOT NULL,
    `countatt` INTEGER NOT NULL,
    PRIMARY KEY(`titolari`,`squadra`)
);
CREATE TABLE IF NOT EXISTS `Classifica`(
    `email`  VARCHAR(50) NOT NULL ,
    `nome_squadra` VARCHAR(20) NOT NULL,
    `punteggio` INTEGER NOT NULL,
    PRIMARY KEY (`email`)
);
CREATE TABLE IF NOT EXISTS `Squadra`(
    `nome`          VARCHAR(20) NOT NULL ,
    `crediti`       INTEGER NOT NULL ,
    `Cpor`          INTEGER NOT NULL,
    `Cdif`          INTEGER NOT NULL,
    `Ccen`          INTEGER NOT NULL,
    `Catt`          INTEGER NOT NULL,
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
    PRIMARY KEY (`id`)
);

CREATE TABLE  IF NOT EXISTS `Rosa` (
    `id`            SMALLINT NOT NULL,
    `squadra`          VARCHAR(20) NOT NULL ,
    PRIMARY KEY (`id` , `squadra`)
);

INSERT INTO utente (`username`,`password`,`nome`,`cognome`,`email`,`codice_attivazione`,`stato_attivazione`,`tipo_utente`,`squadra`) VALUES ( 'michele225','82a8f10c5e9252347bb5bd3419448401','Michele', 'Taranta', 'michele.taranta@libero.it','55c4c38fb0792','Attivato','Admin','');
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Gianluigi', 'Buffon', 'POR', 'Juventus',19,6 );
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Morgan', 'De Sanctis', 'POR', 'Roma',17,6); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mattia', 'Perin', 'POR', 'Genoa',14,6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Samir', 'Handanovic', 'POR', 'Inter',16,6); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Emiliano', 'Viviano', 'POR', 'Sampdoria',12,6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Albano Benjamin', 'Bizzarri', 'POR', 'Chievo',2,6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Federico', 'Marchetti', 'POR', 'Lazio',13,6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Stefano', 'Sorrentino', 'POR', 'Palermo',12,6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Andrea', 'Consigli', 'POR', 'Sassuolo','13',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Antonio', 'Mirante', 'POR', 'Parma','13',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Diego Rodriguez', 'Lopez', 'POR', 'Milan','13',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Orestis', 'Karnezis', 'POR', 'Udinese','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Norberto Murara', 'Neto', 'POR', 'Fiorentina','14',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Daniele', 'Padelli', 'POR', 'Torino','12',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Bittencourt Pinheiro', 'Rafael', 'POR', 'Verona','12',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Marco', 'Sportiello', 'POR', 'Juventus','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Luigi', 'Sepe', 'POR', 'Juventus','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Zeljko', 'Brkic', 'POR', 'Juventus','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Cabral Barbosa', 'Rafael', 'POR', 'Napoli','15',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Christian', 'Abbiati', 'POR', 'Milan','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Eugenio', 'Lamanna', 'POR', 'Genoa','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Etrit', 'Berisha', 'POR', 'Lazio','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Nicola', 'Leali', 'POR', 'Cesena','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Francesco', 'Bardi', 'POR', 'Chievo','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Francesco', 'Benussi', 'POR', 'Verona','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Sergio German', 'Romero', 'POR', 'Sampdoria','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Federico', 'Agliardi', 'POR', 'Cesena','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Simone', 'Scuffet', 'POR', 'Udinese','13',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Marco', 'Storari', 'POR', 'Juventus','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Ciprian', 'Tatarusanu', 'POR', 'Fiorentina','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mariano Gonzalo', 'Andujar', 'POR', 'Napoli','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alberto', 'Pomini', 'POR', 'Sassuolo','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Tukasz', 'Skorupski', 'POR', 'Roma','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Samir', 'Ujkani', 'POR', 'Palermo','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alessandro', 'Iacobucci', 'POR', 'Parma','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Davide', 'Bassi', 'POR', 'Empoli','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Salvador', 'Ichazo', 'POR', 'Torino','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Ciro', 'Polito', 'POR', 'Sassuolo','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Thomas', 'Strakosha', 'POR', 'Lazio','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Rubens Fernando', 'Rubinho', 'POR', 'Juventus','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Giorgio', 'Frezzolini', 'POR', 'Atalanta','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Gianluca', 'Pegolo', 'POR', 'Sassuolo','12',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Roberto', 'Colombo', 'POR', 'Napoli','2',6);

INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Lorenzo', 'De Silvestri', 'DIF', 'Sampdoria','12',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Leonardo', 'Bonucci', 'DIF', 'Juventus','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Gonzalo Javier', 'Rodriguez', 'DIF', 'Fiorentina','14',6); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Kamil', 'Glik', 'DIF', 'Torino','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Stephan', 'Lichtsteiner', 'DIF', 'Juventus','17',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Daniele', 'Rugani', 'DIF', 'Empoli','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Matteo', 'Darmian', 'DIF', 'Torino','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Stefan', 'De Vrij', 'DIF', 'Lazio','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Silvan', 'Widmer', 'DIF', 'Udinese','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Bruno', 'Peres', 'DIF', 'Torino','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Giorgio', 'Chiellini', 'DIF', 'Juventus','14',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Francesco', 'Acerbi', 'DIF', 'Sassuolo','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Dusan', 'Basta', 'DIF', 'Lazio','13',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Davide', 'Zappacosta', 'DIF', 'Atalanta','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Kostas', 'Manolas', 'DIF', 'Roma','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Achraf', 'Lazaar', 'DIF', 'Palermo','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Manuel', 'Pasqual', 'DIF', 'Fiorentina','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Luca', 'Antonelli', 'DIF', 'Milan','13',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Larangeira', 'Danilo', 'DIF', 'Udinese','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Emiliano', 'Moretti', 'DIF', 'Torino','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alessio', 'Romagnoli', 'DIF', 'Sampdoria','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Andrea', 'Barzagli', 'DIF', 'Juventus','14',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Andrade dos Santos', 'Edenilson', 'DIF', 'Genoa','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Dario', 'Dainelli', 'DIF', 'Chievo','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Sebastian', 'De Maio', 'DIF', 'Genoa','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Nicola', 'Maksimovic', 'DIF', 'Torino','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Stefan', 'Savic', 'DIF', 'Fiorentina','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Lorenzo', 'Tonelli', 'DIF', 'Empoli','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mario', 'Rui', 'DIF', 'Empoli','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Federico', 'Peluso', 'DIF', 'Sassuolo','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Nemanja', 'Vidic', 'DIF', 'Inter','12',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Massimo', 'Gobbi', 'DIF', 'Parma','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Luca', 'Rossettini', 'DIF', 'Cagliari','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Gabriel', 'Paletta', 'DIF', 'Milan','13',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Vaggelis', 'Moras', 'DIF', 'Verona','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Elseid', 'Hysaj', 'DIF', 'Empoli','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Danilo Fernando', 'Avelar', 'DIF', 'Cagliari','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Guglielmo', 'Stendardo', 'DIF', 'Atalanta','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Stefan', 'Radu', 'DIF', 'Lazio','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Philippe', 'Mexes', 'DIF', 'Milan','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Rorigo dias da Costa', 'Alex', 'DIF', 'Milan','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Andrea', 'Ranocchia', 'DIF', 'Inter','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Nicolas', 'Frey', 'DIF', 'Chievo','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Giancarlo', 'Gonzalez', 'DIF', 'Palermo','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mapou', 'Yanga Mbiwa', 'DIF', 'Roma','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Sime', 'Vrsaljko', 'DIF', 'Sassuolo','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Paolo', 'Cannavaro', 'DIF', 'Sassuolo','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Cristian', 'Molinaro', 'DIF', 'Torino','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alessandro', 'Lucarelli', 'DIF', 'Parma','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Davide', 'Astori', 'DIF', 'Roma','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Jose', 'Basanta', 'DIF', 'Fiorentina','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Christian', 'Maggio', 'DIF', 'Napoli','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Federico', 'Barba', 'DIF', 'Empoli','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Bostjan', 'Cesar', 'DIF', 'Chievo','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Angelo', 'Ogbonna', 'DIF', 'Juventus','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Matias', 'Silvestre', 'DIF', 'Sampdoria','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Vasilis', 'Torosidis', 'DIF', 'Roma','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Patrice', 'Evra', 'DIF', 'Juventus','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Sinisa', 'Andelkovic', 'DIF', 'Palermo','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Francesco', 'Renzetti', 'DIF', 'Cesena','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Luka', 'Krajnc', 'DIF', 'Cesena','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Boukary', 'Drame', 'DIF', 'Atalanta','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Facundo', 'Roncaglia', 'DIF', 'Genoa','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Ervin', 'Zukanovic', 'DIF', 'Chievo','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Davide', 'Santon', 'DIF', 'Inter','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Thomas', 'Heurtaux', 'DIF', 'Udinese','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Nicolas', 'Burdisso', 'DIF', 'Genoa','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Kalidou', 'Koulibaly', 'DIF', 'Napoli','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Raul', 'Albiol', 'DIF', 'Napoli','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Roberto', 'Vitiello', 'DIF', 'Palermo','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Zakarya', 'Bergdich', 'DIF', 'Genoa','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Andrea', 'Rispoli', 'DIF', 'Palermo','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Nenad', 'Tomovic', 'DIF', 'Fiorentina','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Giuseppe', 'Biava', 'DIF', 'Atalanta','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Ivan', 'Piris', 'DIF', 'Udinese','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Rafael', 'Marquez', 'DIF', 'Verona','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Eros', 'Pisano', 'DIF', 'Verona','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Urby', 'Emanuelson', 'DIF', 'Atalanta','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Yuto', 'Nagatomo', 'DIF', 'Inter','12',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Michel', 'Morganella', 'DIF', 'Palermo','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Douglas', 'Maicon', 'DIF', 'Roma','14',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Vasco', 'Regini', 'DIF', 'Sampdoria','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Marcos Mendoza', 'Alonso', 'DIF', 'Fiorentina','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Faouzi', 'Ghoulam', 'DIF', 'Napoli','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Andrea', 'Costa', 'DIF', 'Parma','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Ignazio', 'Abate', 'DIF', 'Milan','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Ezequiel', 'Munoz', 'DIF', 'Sampdoria','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Giovanni', 'Marchese', 'DIF', 'Genoa','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Stefano', 'Lucchini', 'DIF', 'Cesena','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Danilo', 'D\'ambrosio', 'DIF', 'Inter','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Pedro', 'Mendes', 'DIF', 'Parma','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Modibo', 'Diakite', 'DIF', 'Cagliari','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Zouhair', 'Feddal', 'DIF', 'Parma','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alessandro', 'Gamberini', 'DIF', 'Chievo','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Adil', 'Rami', 'DIF', 'Milan','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Ivan', 'Strinic', 'DIF', 'Napoli','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Jose', 'Holebas', 'DIF', 'Roma','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alessandro', 'Agostini', 'DIF', 'Verona','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Fabio', 'Daprela', 'DIF', 'Palermo','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mattia', 'Cassani', 'DIF', 'Parma','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Armando', 'Izzo', 'DIF', 'Genoa','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Antonio', 'Balzano', 'DIF', 'Cagliari','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Camilo', 'Zuniga', 'DIF', 'Napoli','13',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Edson', 'Braafheid', 'DIF', 'Lazio','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Salvatore', 'Bocchetti', 'DIF', 'Milan','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Giovanni', 'Pasquale', 'DIF', 'Udinese','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Gabriel', 'Silva', 'DIF', 'Udinese','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Juan', 'Jesus', 'DIF', 'Inter','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Yohan', 'Benalouane', 'DIF', 'Atalanta','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Molla', 'Wague', 'DIF', 'Udinese','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Dos Santos Nascimento', 'Mauricio', 'DIF', 'Lazio','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Andrea', 'Masiello', 'DIF', 'Atalanta','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Santiago', 'Gentiletti', 'DIF', 'Lazio','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Vincent', 'Laurini', 'DIF', 'Empoli','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Cristiano', 'Del Grosso', 'DIF', 'Atalanta','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Dal Bello', 'Felipe', 'DIF', 'Inter','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Claudio', 'Terzi', 'DIF', 'Palermo','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alessandro', 'Longhi', 'DIF', 'Sassuolo','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Luis Pedro', 'Cavanda', 'DIF', 'Lazio','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Martin', 'Caceres', 'DIF', 'Juventus','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Luca', 'Ceppitelli', 'DIF', 'Cagliari','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Fabrizio', 'Cacciatore', 'DIF', 'Sampdoria','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Cesare', 'Bovo', 'DIF', 'Torino','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Lorik', 'Cana', 'DIF', 'Lazio','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Miguel Angel', 'Britos', 'DIF', 'Napoli','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Daniele', 'Capelli', 'DIF', 'Cesena','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Micah', 'Richards', 'DIF', 'Fiorentina','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Fabiano', 'Santacroce', 'DIF', 'Parma','1',6); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Michael', 'Ciani', 'DIF', 'Lazio','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Gianpaolo', 'Bellini', 'DIF', 'Atalanta','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Ashley', 'Cole', 'DIF', 'Roma','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Marco', 'Capuano', 'DIF', 'Cagliari','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Djamel', 'Mesbah', 'DIF', 'Sampdoria','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Ivan', 'Martic', 'DIF', 'Verona','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Igor', 'Bubnjic', 'DIF', 'Udinese','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Jose Rodolfo Pires', 'Dodo', 'DIF', 'Inter','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Giandomenico', 'Mesto', 'DIF', 'Napoli','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Luca', 'Antonini', 'DIF', 'Genoa','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Lionel', 'Scaloni', 'DIF', 'Atalanta','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Gaston', 'Silva', 'DIF', 'Torino','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Guillermo', 'Rodriguez', 'DIF', 'Verona','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Paolo', 'De Ceglie', 'DIF', 'Juventus','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Daniele', 'Bonera', 'DIF', 'Milan','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Nicola', 'Murru', 'DIF', 'Cagliari','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Emanuele', 'Terranova', 'DIF', 'Sassuolo','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Cristiano', 'Biraghi', 'DIF', 'Chievo','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Gabriele', 'Perico', 'DIF', 'Cesena','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Cristian', 'Zapata', 'DIF', 'Milan','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Rafel Pinto', 'Marques', 'DIF', 'Verona','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Nicolas', 'Spolli', 'DIF', 'Roma','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Gennaro', 'Sardo', 'DIF', 'Chievo','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alassane', 'Tambe', 'DIF', 'Genoa','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Maurizio', 'Domizzi', 'DIF', 'Udinese','8',6); 

INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Antonio', 'Candreva', 'CEN', 'Lazio','25',6); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Marek', 'Hamsik', 'CEN', 'Napoli','22',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Jose Maria', 'Callejon', 'CEN', 'Napoli','27',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Paul', 'Pogba', 'CEN', 'Juventus','24',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Dries', 'Mertens', 'CEN', 'Napoli','23',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Felipe', 'Anderson', 'CEN', 'Lazio','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Iago', 'Falque', 'CEN', 'Genoa','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Franco', 'Vazquez', 'CEN', 'Palermo','13',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Claudio', 'Marchisio', 'CEN', 'Juventus','17',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Arturo', 'Vidal', 'CEN', 'Juventus','24',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Marco', 'Parolo', 'CEN', 'Lazio','15',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mohamed', 'Salah', 'CEN', 'Fiorentina','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Giacomo', 'Bonaventura', 'CEN', 'Atalanta','17',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Miralem', 'Pjanic', 'CEN', 'Roma','22',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alessandro', 'Florenzi', 'CEN', 'Roma','15',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Roberto', 'Pereyra', 'CEN', 'Juventus','12',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Anderson', 'Hernanes', 'CEN', 'Inter','19',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Radja', 'Nainggolan', 'CEN', 'Roma','13',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Maximiliano', 'Moralez', 'CEN', 'Atalanta','12',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Josip', 'Ilicic', 'CEN', 'Fiorentina','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Xherdan', 'Shaqiri', 'CEN', 'Inter','19',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Andrea', 'Bertolacci', 'CEN', 'Genoa','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Andrea', 'Pirlo', 'CEN', 'Juventus','19',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Franco', 'Brienza', 'CEN', 'Cesena','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alejandro', 'Gomez', 'CEN', 'Atalanta','16',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Omar', 'El Kaddouri', 'CEN', 'Torino','16',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Luca', 'Rigoni', 'CEN', 'Palermo','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Fredy', 'Guarin', 'CEN', 'Inter','12',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Riccardo', 'Saponara', 'CEN', 'Empoli','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Borja', 'Valero', 'CEN', 'Fiorentina','20',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Stefano', 'Mauri', 'CEN', 'Lazio','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Simone', 'Missiroli', 'CEN', 'Sassuolo','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Marques Loureiro', 'Allan', 'CEN', 'Udinese','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Matias', 'Fernandez', 'CEN', 'Fiorentina','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mateo', 'Kovacic', 'CEN', 'Inter','14',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mirko', 'Valdifiori', 'CEN', 'Empoli','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Roberto', 'Soriano', 'CEN', 'Sampdoria','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Die4', 'Perotti', 'CEN', 'Genoa','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Emil', 'Hallfredsson', 'CEN', 'Verona','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alessandro', 'Diamanti', 'CEN', 'Fiorentina','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Antonio', 'Nocerino', 'CEN', 'Parma','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'juraj', 'Kucka', 'CEN', 'Genoa','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Senad', 'Lulic', 'CEN', 'Lazio','13',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Silvestre', 'Varela', 'CEN', 'Parma','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Nigel', 'De Jong', 'CEN', 'Milan','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Keisuke', 'Honda', 'CEN', 'Milan','12',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Albin', 'Ekdal', 'CEN', 'Cagliari','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Lucas', 'Biglia', 'CEN', 'Lazio','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Joao', 'Pedro', 'CEN', 'Cagliari','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'David', 'Lopez', 'CEN', 'Napoli','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Daniele', 'De Rossi', 'CEN', 'Roma','17',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Marcelo', 'Brozovic', 'CEN', 'Inter','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Daniele', 'Croce', 'CEN', 'Empoli','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Sanchez', 'Joaquin', 'CEN', 'Fiorentina','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Valter', 'Birsa', 'CEN', 'Chievo','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Jacopo', 'Sala', 'CEN', 'Verona','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Matias', 'Vecino', 'CEN', 'Empoli','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Seydou', 'Keita', 'CEN', 'Roma','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Jose', 'Mauri', 'CEN', 'Parma','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Marco', 'Benassi', 'CEN', 'Torino','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Pedro', 'Obiang', 'CEN', 'Sampdoria','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alfred', 'Duncan', 'CEN', 'Sampdoria','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Perparim', 'Hetemaj', 'CEN', 'Chievo','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Luca', 'Cigarini', 'CEN', 'Atalanta','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Ezequiel', 'Schelotto', 'CEN', 'Chievo','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Andrea', 'Poli', 'CEN', 'Milan','12',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Angelo', 'Palombo', 'CEN', 'Sampdoria','8',6); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Maxime', 'Lestienne', 'CEN', 'Genoa','13',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mariano', 'Izco', 'CEN', 'Chievo','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Simone', 'Verdi', 'CEN', 'Empoli','9',6); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Daniele', 'Baselli', 'CEN', 'Atalanta','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Panagiotis', 'Kone', 'CEN', 'Udinese','14',6); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alberto Facundo', 'Costa', 'CEN', 'Genoa','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Edgar', 'Barreto', 'CEN', 'Palermo','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Giuseppe', 'Vives', 'CEN', 'Torino','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Francesco', 'Lodi', 'CEN', 'Parma','15',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Panagiotis', 'Tachtsidis', 'CEN', 'Verona','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Bruno', 'Fernandes', 'CEN', 'Udinese','14',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alberto', 'Aquilani', 'CEN', 'Fiorentina','17',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Francesco', 'Magnanelli', 'CEN', 'Sassuolo','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'David', 'Pizarro', 'CEN', 'Fiorentina','12',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Ivan', 'Radovanovic', 'CEN', 'Chievo','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alexander', 'Farnerud', 'CEN', 'Torino','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Daniele', 'Dessena', 'CEN', 'Cagliari','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Stefano', 'Sturaro', 'CEN', 'Juventus','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Jonathan', 'De Guzman', 'CEN', 'Napoli','13',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Simone', 'Padoin', 'CEN', 'Juventus','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Torres', 'Guilherme', 'CEN', 'Udinese','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Davide', 'Biondini', 'CEN', 'Sassuolo','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Milan', 'Badelj', 'CEN', 'Fiorentina','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Gary', 'Medel', 'CEN', 'Inter','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Ivajlo', 'Chochev', 'CEN', 'Palermo','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mounir', 'Obbadi', 'CEN', 'Verona','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Saphir', 'Taider', 'CEN', 'Sassuolo','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Juan Manuel', 'Vargas', 'CEN', 'Fiorentina','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Kevin', 'Strootman', 'CEN', 'Roma','19',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Lazaros', 'Christodoulopoulos', 'CEN', 'Verona','14',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Bosko', 'Jankovic', 'CEN', 'Verona','14',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Robin', 'Quaison', 'CEN', 'Palermo','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Piotr', 'Zielinski', 'CEN', 'Empoli','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Tomas', 'Rincon', 'CEN', 'Genoa','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Danilo', 'Cataldi', 'CEN', 'Lazio','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Andi', 'Lila', 'CEN', 'Parma','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alessandro', 'Gazzi', 'CEN', 'Torino','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Gokhan', 'Inler', 'CEN', 'Napoli','13',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Marco', 'D\'Alessandro', 'CEN', 'Atalanta','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Godfred', 'Donsah', 'CEN', 'Cagliari','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Emmanuel', 'Badu', 'CEN', 'Udinese','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Cristobal', 'Jorquera', 'CEN', 'Parma','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mato', 'Jajalo', 'CEN', 'Palermo','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Emmanuel', 'Cascione', 'CEN', 'Cesena','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Giulio', 'Migliaccio', 'CEN', 'Atalanta','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Luiz Frello', 'Jorginho', 'CEN', 'Napoli','14',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Cristian Daniel', 'Ledesma', 'CEN', 'Lazio','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Giampiero', 'Pinzi', 'CEN', 'Udinese','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Lorenzo', 'Crisetig', 'CEN', 'Cagliari','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Leandro', 'Greco', 'CEN', 'Verona','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Marco', 'Van Ginkel', 'CEN', 'Milan','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Joaquin', 'Correa', 'CEN', 'Sampdoria','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Afriyie', 'Acquah', 'CEN', 'Sampdoria','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Matteo', 'Brighi', 'CEN', 'Sassuolo','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Walter', 'Gargano', 'CEN', 'Napoli','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Carlos', 'Carmona', 'CEN', 'Atalanta','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Luigi', 'Giorgi', 'CEN', 'Cesena','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Giannis', 'Fetfatzidis', 'CEN', 'Chievo','12',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Riccardo', 'Montolivo', 'CEN', 'Milan','14',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Francesco', 'Bolzoni', 'CEN', 'Palermo','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Daniele', 'Galloppa', 'CEN', 'Parma','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Diego', 'Laxalt', 'CEN', 'Genoa','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Kingsley', 'Coman', 'CEN', 'Juventus','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Giuseppe', 'De Feudis', 'CEN', 'Cesena','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Jasmin', 'Kurtic', 'CEN', 'Fiorentina','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Andrea', 'Cossu', 'CEN', 'Cagliari','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Enzo', 'Maresca', 'CEN', 'Palermo','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Ogenyi', 'Onazi', 'CEN', 'Lazio','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Isaac', 'Cofie', 'CEN', 'Chievo','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Daniele', 'Conti', 'CEN', 'Cagliari','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Kwadwo', 'Asamoah', 'CEN', 'Juventus','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Jesus Fernandez', 'Suso', 'CEN', 'Milan','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Salih', 'Ucan', 'CEN', 'Roma','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Dejan', 'Lazarevic', 'CEN', 'Sassuolo','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mattia', 'Valoti', 'CEN', 'Verona','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Raman', 'Chibsah', 'CEN', 'Sassuolo','3',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Leandro', 'Paredes', 'CEN', 'Roma','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Sulley', 'Muntari', 'CEN', 'Milan','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'McDonald', 'Mariga', 'CEN', 'Parma','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Federico', 'Mattiello', 'CEN', 'Chievo','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Michael', 'Essien', 'CEN', 'Milan','7',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Luca', 'Marrone', 'CEN', 'Juventus','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Joshua', 'Brillante', 'CEN', 'Empoli','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alvaro', 'Gonzalez', 'CEN', 'Torino','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Joel', 'Obi', 'CEN', 'Inter','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Andrea', 'Lazzari', 'CEN', 'Fiorentina','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Lucas', 'Evangelista', 'CEN', 'Udinese','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Rolando', 'Mandragora', 'CEN', 'Genoa','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Marco', 'Marchionni', 'CEN', 'Sampdoria','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Assane', 'Gnoukouri', 'CEN', 'Inter','2',6);

INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Luca', 'Toni', 'ATT', 'Verona','30',6); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Carlos', 'Tevez', 'ATT', 'Juventus','37',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mauro', 'Icardi', 'ATT', 'Inter','28',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Gonzalo', 'Higuain', 'ATT', 'Napoli','36',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Domenico', 'Berardi', 'ATT', 'Sassuolo','27',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Antonio', 'Di Natale', 'ATT', 'Udinese','29',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Manolo', 'Gabbiadini', 'ATT', 'Napoli','23',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Miroslav', 'Klose', 'ATT', 'Lazio','25',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Fabio', 'Quagliarella', 'ATT', 'Torino','26',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Rodrigo', 'Palacio', 'ATT', 'Inter','30',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Paulo', 'Dybala', 'ATT', 'Palermo','17',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Samuel', 'Eto\'o', 'ATT', 'Sampdoria','24',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Citadin Martins', 'Eder', 'ATT', 'Sampdoria','26',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alberto', 'Paloschi', 'ATT', 'Chievo','25',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Francesco', 'Totti', 'ATT', 'Roma','27',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Fernando', 'Llorente', 'ATT', 'Juventus','33',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Jeremy', 'Menez', 'ATT', 'Milan','18',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Massimo', 'Maccarone', 'ATT', 'Empoli','18',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Simone', 'Zaza', 'ATT', 'Sassuolo','22',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Marco', 'Sau', 'ATT', 'Cagliari','25',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Maximiliano Gaston', 'Lopez', 'ATT', 'Torino','20',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Cyril', 'Thereau', 'ATT', 'Udinese','20',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alessio', 'Cerci', 'ATT', 'Milan','29',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mattia', 'Destro', 'ATT', 'Milan','30',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alberto', 'Gilardino', 'ATT', 'Fiorentina','17',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alvaro', 'Morata', 'ATT', 'Juventus','18',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'German', 'Denis', 'ATT', 'Atalanta','26',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mario', 'Gomez', 'ATT', 'Fiorentina','32',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Lukas', 'Podolski', 'ATT', 'Inter','24',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Nicola', 'Sansone', 'ATT', 'Sassuolo','20',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Luis', 'Muriel', 'ATT', 'Sampdoria','19',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Giuseppe', 'Rossi', 'ATT', 'Fiorentina','35',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Juan', 'Iturbe', 'ATT', 'Roma','25',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Gregoire', 'Defrel', 'ATT', 'Cesena','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Lombe Yao Kouassi', 'Gervinho', 'ATT', 'Roma','24',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Seydou', 'Doumbia', 'ATT', 'Roma','20',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alessandro', 'Matri', 'ATT', 'Juventus','23',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Victor', 'Ibarbo', 'ATT', 'Roma','23',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Juan', 'Gomez', 'ATT', 'Verona','18',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Mauricio', 'Pinilla', 'ATT', 'Atalanta','15',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Filip', 'Djordjevic', 'ATT', 'Lazio','17',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Stephan', 'El Shaarawy', 'ATT', 'Milan','24',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Adem', 'Ljajic', 'ATT', 'Roma','18',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Lorenzo', 'Insigne', 'ATT', 'Napoli','22',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Paul Jose', 'M\'poku', 'ATT', 'Cagliari','12',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Stefano', 'Okaka', 'ATT', 'Sampdoria','15',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Andrea', 'Belotti', 'ATT', 'Palermo','14',6); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Sergio', 'Pellissier', 'ATT', 'Chievo','14',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Leonardo', 'Pavoletti', 'ATT', 'Genoa','10',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Balde Diao', 'Keita', 'ATT', 'Lazio','22',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Riccardo', 'Meggiorini', 'ATT', 'Chievo','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Diego', 'Farias', 'ATT', 'Cagliari','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Nicolas', 'Lopez', 'ATT', 'Verona','14',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'M\'baye', 'Niang', 'ATT', 'Genoa','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Giampaolo', 'Pazzini', 'ATT', 'Milan','16',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Gonzalo', 'Bergessio', 'ATT', 'Sampdoria','22',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Duje', 'Cop', 'ATT', 'Cagliari','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Duvan', 'Zapata', 'ATT', 'Napoli','15',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Raffaele', 'Palladino', 'ATT', 'Parma','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Josef', 'Martinez', 'ATT', 'Torino','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Antonio', 'Floro Flores', 'ATT', 'Sassuolo','13',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Javier', 'Saviola', 'ATT', 'Verona','18',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Levan', 'Mchedlidze', 'ATT', 'Empoli','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Guida', 'Marilungo', 'ATT', 'Cesena','20',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Francesco', 'Tavano', 'ATT', 'Empoli','16',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Alejandro', 'Rodriguez', 'ATT', 'Cesena','2',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Khouma', 'Babacar', 'ATT', 'Fiorentina','4',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Milan', 'Djuric', 'ATT', 'Cesena','6',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Sergio', 'Floccari', 'ATT', 'Sassuolo','11',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Cavalho de Oliveira', 'Amauri', 'ATT', 'Torino','15',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Rolando', 'Bianchi', 'ATT', 'Atalanta','15',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Richmond', 'Boakye', 'ATT', 'Atalanta','14',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Samuele', 'Longo', 'ATT', 'Cagliari','13',6); 
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Rodrigo', 'Aguirre', 'ATT', 'Udinese','8',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Perez Cuesta', 'Michu', 'ATT', 'Napoli','15',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Stipe', 'Perica', 'ATT', 'Udinese','5',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Federico', 'Bernardeschi', 'ATT', 'Fiorentina','9',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Massimo', 'Coda', 'ATT', 'Parma','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Simon', 'Makienok', 'ATT', 'Palermo','12',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'Daniele', 'Verde', 'ATT', 'Roma','1',6);
INSERT INTO Giocatori (`nome`,`cognome`,`ruolo`,`squadra_reale`,`valore`,`voto`) VALUES ( 'George', 'Puscas', 'ATT', 'Inter','1',6);