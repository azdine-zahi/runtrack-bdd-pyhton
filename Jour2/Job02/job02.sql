"Voici les requêtes SQL pour créer les tables "etage" et "salles" avec les champs spécifiés :"

CREATE TABLE etage (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255),
    numero INT,
    superficie INT
);

CREATE TABLE salles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255),
    id_etage INT,
    capacite INT,
    FOREIGN KEY (id_etage) REFERENCES etage(id)
);

"""
Ces requêtes créeront deux tables : "etage" et "salles". 
La table "etage" contiendra les champs "id", "nom", "numero" et "superficie", 
tandis que la table "salles" contiendra les champs "id", "nom", "id_etage" et "capacite". 
La clé primaire pour chaque table est définie comme étant la colonne "id" avec l'option AUTO_INCREMENT 
pour générer automatiquement des valeurs uniques pour chaque enregistrement ajouté. 
La table "salles" a également une clé étrangère qui fait référence à la colonne "id" de la table "etage".

"""