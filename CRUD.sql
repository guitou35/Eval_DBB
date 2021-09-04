
/* CRUD Personnes */

INSERT INTO ManageCinema.Personnes (PersonneID, Nom, Prenom, Email, Password, Pseudo, CompteActived) VALUES ('a635c98f-0d5f-11ec-b289-c8f750103ac9','toto', 'titi', 'test@test.fr', 'adfsfredvc', 'toto', 1);

UPDATE ManageCinema.Personnes SET Nom = 'foufou', Prenom = 'loulou' WHERE PersonneID = 'a635c98f-0d5f-11ec-b289-c8f750103ac9';

SELECT * FROM ManageCinema.Personnes WHERE PersonneID = 'a635c98f-0d5f-11ec-b289-c8f750103ac9';

DELETE FROM ManageCinema.Personnes WHERE PersonneID = 'a635c98f-0d5f-11ec-b289-c8f750103ac9';