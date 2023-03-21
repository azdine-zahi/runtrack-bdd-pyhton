#Voici un programme Python qui utilise le module "mysql-connector-python" pour récupérer les données de la table "salles" 
#et les afficher en console :


import mysql.connector

# se connecter à la base de données
cnx = mysql.connector.connect(
    host="localhost",
    user="root",
    password="***********",
    database="LaPlateforme"
)

# créer un curseur pour exécuter les requêtes SQL
cursor = cnx.cursor()

# exécuter une requête pour récupérer les noms et les capacités des salles
query = "SELECT nom, capacite FROM salles"
cursor.execute(query)

# afficher les résultats en console
for (nom, capacite) in cursor:
    print(f"{nom}: {capacite}")

# fermer le curseur et la connexion
cursor.close()
cnx.close()
