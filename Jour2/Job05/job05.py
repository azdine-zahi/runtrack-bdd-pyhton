#Voici la requête SQL pour calculer la superficie totale de tous les étages :

#SELECT SUM(superficie) AS superficie_totale FROM etage;


import mysql.connector

# Connexion à la base de données
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="**************",
  database="LaPlateforme"
)

# Exécution de la requête
mycursor = mydb.cursor()
mycursor.execute("SELECT SUM(superficie) AS superficie_totale FROM etage")
result = mycursor.fetchone()[0]

# Affichage du résultat
print("La superficie de La Plateforme est de {} m2".format(result))
