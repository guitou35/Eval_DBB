
/* Création de quelques données en dur  */

INSERT INTO ManageCinema.Personnes (PersonneID, Nom, Prenom, Email, Password, Pseudo, CompteActived) VALUES ('a635c98f-0d5f-11ec-b289-c8f750103ac9','toto', 'titi', 'test@test.fr', 'adfsfredvc', 'toto', 1);

INSERT INTO ManageCinema.Roles (Nom) VALUES ('ADMIN');

INSERT INTO ManageCinema.PersonnesRoles (Personne, Role) VALUES ('a635c98f-0d5f-11ec-b289-c8f750103ac9',1);

INSERT INTO ManageCinema.Films (NomFilm) VALUES ('Kaamelott');

INSERT INTO ManageCinema.Salles ( NumeroSalle, Capacite) VALUES (1, 100);

INSERT INTO ManageCinema.Seances ( HeureSeance, Salle, Film) VALUES ('2021-12-01 12:00:00', 1,1);

INSERT INTO ManageCinema.Reservations (ReservationID, NombreDePlace, Price, Seance, Personne) VALUES (UUID(), 2, 10, 1, 'a635c98f-0d5f-11ec-b289-c8f750103ac9');
