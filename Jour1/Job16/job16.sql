"Pour récupérer tous les élèves dont le prénom commence par un "b", vous pouvez utiliser la requête suivante :"

SELECT * FROM etudiants WHERE prenom LIKE 'B%';


"""
Cette requête va sélectionner tous les enregistrements de la table "etudiants" où le prénom commence par la lettre "B".
Le symbole "%" est un joker qui représente n'importe quel caractère, donc en utilisant "B%" dans la clause WHERE, 
cela signifie que nous voulons récupérer tous les enregistrements où le prénom commence par "B", peu importe les autres caractères qui suivent.

"""