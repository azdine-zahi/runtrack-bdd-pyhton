"Voici la requête SQL pour récupérer les informations de l'étudiant le plus âgé :"

SELECT * 
FROM etudiants 
ORDER BY age DESC 
LIMIT 1;

"""
Cette requête trie les étudiants par ordre décroissant de l'âge et récupère le premier élément
(celui qui a l'âge le plus élevé). Le résultat affiche toutes les informations de l'étudiant le plus âgé.


"""