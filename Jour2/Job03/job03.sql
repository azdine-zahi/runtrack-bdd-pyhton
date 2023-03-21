"Voici les requêtes SQL pour ajouter les données à la table "etage" et à la table "salles" :"

INSERT INTO etage (nom, numero, superficie) VALUES ('RDC', 0, 500);
INSERT INTO etage (nom, numero, superficie) VALUES ('R+1', 1, 500);

INSERT INTO salles (nom, id_etage, capacite) VALUES ('Lounge', 1, 100);
INSERT INTO salles (nom, id_etage, capacite) VALUES ('Studio Son', 1, 5);
INSERT INTO salles (nom, id_etage, capacite) VALUES ('Broadcasting', 2, 50);
INSERT INTO salles (nom, id_etage, capacite) VALUES ('Bocal Peda', 2, 4);
INSERT INTO salles (nom, id_etage, capacite) VALUES ('Coworking', 2, 80);
INSERT INTO salles (nom, id_etage, capacite) VALUES ('Studio Video', 2, 5);


"""
Ces requêtes inséreront les données spécifiées dans les tables correspondantes. 
La première requête ajoute les données pour les deux étages, 
la deuxième requête ajoute les données pour les six salles. 
Chaque enregistrement est ajouté en spécifiant les valeurs pour chaque colonne dans l'ordre approprié. 
Notez que la valeur de la colonne "id" sera générée automatiquement car nous avons défini cette colonne comme ayant l'option AUTO_INCREMENT.


"""