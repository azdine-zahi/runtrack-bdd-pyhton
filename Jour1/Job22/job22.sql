"Voici la requête SQL pour récupérer les informations de l'étudiant le plus jeune :"

SELECT *
FROM etudiants
WHERE age = (SELECT MIN(age) FROM etudiants);

"""
Cette requête va chercher les enregistrements de la table etudiants où l'âge est égal 
à l'âge minimum de tous les enregistrements de la même table, qui est obtenu grâce à une sous-requête.

"""