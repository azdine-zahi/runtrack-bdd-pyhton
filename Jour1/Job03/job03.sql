"Sélectionner la base de données "LaPlateforme" en utilisant la commande suivante :"
USE LaPlateforme;

"Créer la table "etudiants" avec les champs spécifiés en utilisant la commande suivante :"
"Cette commande va créer une table appelée "etudiants" avec les champs spécifiés."
"Le champ "id" sera en auto-incrémente et sera la clé primaire de la table."
CREATE TABLE etudiants (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(25) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(255) NOT NULL
);


"Exécutez la commande SQL suivante pour afficher la liste des tables de la base de données "LaPlateforme" :"
SHOW TABLES;
