CSELECT /* GESTION Simple */

CREATE DATABASE nom_de_votre_db; -- Créer votre base de données
DROP DATABASE nom_de_votre_db; -- Supprimer une base de données

USE nom_de_votre_db; -- Utiliser une base de données
SHOW DATABASES; -- Pour afficher toutes les bases de données.

/* Creation d'une table */

CREATE TABLE Student (
    id_student INT NOT NULL PRIMARY KEY AUTO INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    phone INTEGER(255),
    zipcode VARCHAR(255),
    city VARCHAR(255),
    avatar VARCHAR(255)
);

/* Modifictation de la structure */
ALTER TABLE nom_de_la_table ADD COLUMN nom_nouvelle_colonne VARCHAR(100); -- Pour ajouter une colonne
ALTER TABLE nom_de_la_table DROP COLUMN nom_de_la_colonne; -- Supprimer une colonne.
ALTER TABLE nom_de_la_table MODIFY COLUMN nom_de_la_colonne VARCHAR(100); -- Modifier une colonne.
TRUNCATE TABLE nom_de_la_table; -- vider une table
DROP TABLE nom_de_la_table; -- Supprimer une table


/* Types de données */
/* Numériques */
INT -- Nombre entier
DECIMAL(p,s) -- Nombre décimal précis (p => chiffres au total, s => après la virgule)
FLOAT -- Nombre à virgule

/* Chaines */
VARCHAR(n) -- Chaine de caractères variable (max 65535)
TEXT -- Texte long (max 65535 caractères)
CHAR(n) -- Chaine de caractères fixe

/* Dates - heures */
DATE -- DATE (AAAA-MM-JJ)
TIME -- Heure (HH:MM:SS)
DATETIME -- Date et heure (AAAA-MM-JJ HH:MM:SS)

/* Manipulation de données (CRUD) */

/* CREATE pour inserer des données */

/* Insertion simple */
INSERT INTO nom_de_la_table (colonne1, colonne2, ect...) VALUES ('valeur1', 'valeur2', '...');

/* Insertion multiple */

INSERT INTO nom_de_la_table (colonne1, colonne2, ect...) VALUES ('valeur1', 'valeur2', '...'), ('valeur1', 'valeur2', '...'), ('valeur1', 'valeur2', '...');

/* READ - Lire */

/* Séléction */
SELECT * FROM nom_de_la_table; -- Toutes les colonnes de la table
SELECT colonne1, colonne2 FROM nom_de_la_table; -- Colonne(s) spécifique


/* FILTRER AVEC WHERE */
SELECT * FROM nom_de_la_table WHERE condition;
SELECT * FROM nom_de_la_table WHERE age > 18;
SELECT * FROM nom_de_la_table WHERE nom LIKE 'A%'; -- nom commençant par A

/* TRI */
SELECT * FROM nom_de_la_table ORDER BY colonne ASC; (ou DESC)

/* LIMITE */
SELECT * FROM nom_de_la_table LIMIT 10;
SELECT * FROM nom_de_la_table LIMIT 10 OFFSET 30; -- Renverra les résultats 31 à 40.


/* UPDATE - Mise à jour */
UPDATE nom_de_la_table SET colonne1 = 'la nouvelle valeur' WHERE condition; -- mettre à jour une colonne

/* DELETE - Suppression */
DELETE FROM nom_de_la_table WHERE condition;


/* JOIN */

/* INNER JOIN */
SELECT * FROM table1 INNER JOIN table2 ON table1.id = table2.table1_id;

/* INNER JOIN va UNIQUEMENT retourner les enregistrements ayant une correspondance dans les deux tables. */
/* Si vous joignez 'Commande' et 'Client', seulement les clients ayant une commande seront affichés */


/* LEFT JOIN (ou LEFT OUTER JOIN) */
SELECT * FROM table1 LEFT JOIN table2 ON table1.id = table2.table1_id;

/* LEFT JOIN va retourner tous les enregistrements de la table de gauche (table1) et les correspondance de la table de droite (table2) */
/* Si il n'y a pas de correspondance, alors les colonnes de la table2 seront NULL */

/* RIGHT JOIN (ou RIGHT OUTER JOIN) */
SELECT * FROM table1 RIGHT JOIN table2 ON table1.id = table2.table1_id;

/* C'est l'inverse de LEFT JOIN, il va retourner tous les enregistrements de la table de droite */



/* CLAUSE LIKE */

/* % représente 0, 1 ou plusieurs caratères */

'A%' -- commence par A
'%JS' -- termine par JS
'%ea%' -- contient ea

/* _ représente exactement un caractère */
'A_' -- 2 lettres, commence par A
'_odeJS' -- 6 lettres, finit par odeJS


/* AUTRES REQUETES */

COUNT(*) -- nombre total d'enregistrements
SUM(colonne) -- somme
AVG(colonne) -- moyenne
MAX(colonne) -- maximum
MIN(colonne) -- minimum

/* CONTRAINTES*/

NOT NULL -- valeur obligatoire
UNIQUE -- valeur unique
DEFAULT valeur -- valeur par défaut
