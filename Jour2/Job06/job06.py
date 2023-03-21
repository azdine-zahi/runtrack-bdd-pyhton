#Voici la requête SQL qui permet de calculer la somme des capacités de toutes les salles de la table "salles" :
#SELECT SUM(capacite) AS capacite_totale FROM salles




import mysql.connector

# Connexion à la base de données
db = mysql.connector.connect(
  host="localhost",
  user="root",
  password="root",
  database="LaPlateforme"
)

# Exécution de la requête SQL pour calculer la somme des capacités
cursor = db.cursor()
cursor.execute("SELECT SUM(capacite) AS capacite_totale FROM salles")
result = cursor.fetchone()

# Affichage du résultat
capacite_totale = result[0]
print("La capacité totale des salles est de", capacite_totale)

# Fermeture de la connexion à la base de données
db.close()
