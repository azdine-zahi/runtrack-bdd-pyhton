"Voici la requête SQL pour compter le nombre d'étudiants mineurs présents en base de données :"

SELECT COUNT(*) FROM etudiants WHERE age < 18;

"""
Cette requête sélectionne tous les enregistrements dans la table "etudiants" où l'âge est inférieur à 18 
et compte le nombre total de ces enregistrements.

"""