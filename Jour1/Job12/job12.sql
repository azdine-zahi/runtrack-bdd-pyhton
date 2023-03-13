"Voici la commande SQL pour ajouter Martin Dupuis à la table "etudiants" :"

INSERT INTO etudiants (nom, prenom, age, email) VALUES 
('Dupuis', 'Martin', 18, 'martin.dupuis@laplateforme.io');

"INSERT INTO etudiants (nom, prenom, age, email) VALUES ('Dupuis', 'Martin', 18, 'martin.dupuis@laplateforme.io');"


"""
Pour récupérer les membres d'une même famille, nous pouvons utiliser une requête SQL avec une clause WHERE 
pour sélectionner tous les enregistrements ayant le même nom de famille. Voici la commande SQL correspondante :

"""

SELECT * FROM etudiants WHERE nom = 'Dupuis';


"Cette commande va afficher tous les enregistrements de la table "etudiants" pour lesquels le nom est "Dupuis", c'est-à-dire les membres de la famille Dupuis."


