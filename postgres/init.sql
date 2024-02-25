-- Création de la table todos
CREATE TABLE todos (
    id SERIAL PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    done BOOLEAN NOT NULL
);

-- Insertion des données de test
INSERT INTO todos (titre, done) VALUES ('Faire les courses', false);
INSERT INTO todos (titre, done) VALUES ('Appeler le médecin', true);
INSERT INTO todos (titre, done) VALUES ('Répondre aux emails', false);
INSERT INTO todos (titre, done) VALUES ('Aller à la salle de sport', true);
INSERT INTO todos (titre, done) VALUES ('Préparer le rapport', false);
INSERT INTO todos (titre, done) VALUES ('Lire un livre', false);
INSERT INTO todos (titre, done) VALUES ('Ranger la chambre', true);
INSERT INTO todos (titre, done) VALUES ('Faire une pause café', false);
INSERT INTO todos (titre, done) VALUES ('Planifier les vacances', false);
INSERT INTO todos (titre, done) VALUES ('Sortir le chien', true);