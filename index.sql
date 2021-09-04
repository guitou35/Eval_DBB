/* Création de la database */
CREATE DATABASE ManageCinema;

/* Création des tables */
CREATE TABLE ManageCinema.Personnes
(
    PersonneID CHAR(36) NOT NULL PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Password VARCHAR(50) NOT NULL,
    Pseudo VARCHAR(50) NOT NULL,
    CompteActived INT(1) NOT NULL
);

CREATE TABLE ManageCinema.Roles
(
    RoleID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nom VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE ManageCinema.PersonnesRoles
(
    Personne CHAR(36) NOT NULL,
    Role INT(11) NOT NULL,
    PRIMARY KEY (Personne, Role),
    FOREIGN KEY (Personne) REFERENCES Personnes(PersonneID),
    FOREIGN KEY (Role) REFERENCES Roles(RoleID)
);

CREATE TABLE ManageCinema.Reservations
(
    ReservationID CHAR(36) NOT NULL PRIMARY KEY,
    NombreDePlace INT NOT NULL,
    Price FLOAT(2),
    Seance INT NOT NULL,
    Personne VARCHAR(36) NOT NULL,
    FOREIGN KEY (Seance) REFERENCES Seances (SeanceID),
    FOREIGN KEY (Personne) REFERENCES Personnes (PersonneID)
);

CREATE TABLE ManageCinema.Seances
(
    SeanceID INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
    HeureSeance DATETIME NOT NULL,
    Salle INT NOT NULL,
    Film INT NOT NULL,
    FOREIGN KEY (Salle) REFERENCES Salles (SalleID),
    FOREIGN KEY (Film) REFERENCES Films (FilmID)
);

CREATE TABLE ManageCinema.Salles
(
    SalleID INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
    NumeroSalle INT NOT NULL,
    Capacite BIGINT NOT NULL
);

CREATE TABLE ManageCinema.Films
(
    FilmID INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
    NomFilm VARCHAR(50) NOT NULL
);

