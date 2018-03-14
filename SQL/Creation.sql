DROP TABLE IF EXISTS CLIENT;
DROP TABLE IF EXISTS CHAMBRE;
DROP TABLE IF EXISTS RESERVATION;



CREATE TABLE CLIENT (
 idClient SMALLINT NOT NULL AUTO_INCREMENT,
 nom VARCHAR(20) unique,
 prenom VARCHAR(20),
 numTelephone SMALLINT,
 PRIMARY KEY(idClient)
);

CREATE TABLE CHAMBRE (
 idChambre SMALLINT NOT NULL AUTO_INCREMENT,
 typeChambre VARCHAR(30),
 nombrePlaceLit SMALLINT,
 prixJournalier SMALLINT,
 etage SMALLINT,
 PRIMARY KEY(idChambre)
);

CREATE TABLE RESERVATION(
 idReservation INT NOT NULL AUTO_INCREMENT,
 idChambre SMALLINT,
 idClient SMALLINT,
 dateDebut DATE,
 dateFin DATE,
 nombrePlaces SMALLINT,
 booleenPaiementEffectue BOOLEAN,
 PRIMARY KEY(idReservation),
 FOREIGN KEY(idChambre) REFERENCES CHAMBRE(idChambre) ON DELETE SET NULL,
 FOREIGN KEY(idClient) REFERENCES CLIENT(idClient) ON DELETE SET NULL
);