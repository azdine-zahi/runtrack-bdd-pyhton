
#D'abord nous allons installer mysql connector en exécutant cette commande dans le terminal:
# py -m pip install -U  mysql-connector-python

import mysql.connector

# création de la connexion à la base de données
connexion = mysql.connector.connect(
    host="localhost",
    user="root",
    password="**************",
    database="LaPlateforme"
)

# création d'un curseur pour exécuter les requêtes
curseur = connexion.cursor()

# requête pour récupérer tous les étudiants
requete = "SELECT * FROM etudiants"

# exécution de la requête
curseur.execute(requete)

# récupération des résultats
resultats = curseur.fetchall()

# affichage des résultats
for resultat in resultats:
    print(resultat)

# fermeture de la connexion et du curseur
curseur.close()
connexion.close()
