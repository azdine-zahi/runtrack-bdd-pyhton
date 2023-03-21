# Voici un exemple de code Python pour créer une base de données, une table "employes" et y insérer des données :

import mysql.connector

# Connexion à la base de données
db = mysql.connector.connect(
  host="localhost",
  user="root",
  password="Tighzrine1986@"
)

# Création de la base de données
cursor = db.cursor()
cursor.execute("CREATE DATABASE IF NOT EXISTS Ma_BDD")

# Connexion à la base de données nouvellement créée
db = mysql.connector.connect(
  host="localhost",
  user="root",
  password="Tighzrine1986@",
  database="Ma_BDD"
)

# Création de la table "employes"
cursor = db.cursor()
cursor.execute("""
CREATE TABLE IF NOT EXISTS employes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(255),
  prenom VARCHAR(255),
  salaire DECIMAL(10, 2),
  id_service INT
)
""")

# Insertion des employés dans la table
cursor.execute("INSERT INTO employes (nom, prenom, salaire, id_service) VALUES (%s, %s, %s, %s)", ("Doe", "John", 3500.00, 1))
cursor.execute("INSERT INTO employes (nom, prenom, salaire, id_service) VALUES (%s, %s, %s, %s)", ("Smith", "Jane", 4000.00, 1))
cursor.execute("INSERT INTO employes (nom, prenom, salaire, id_service) VALUES (%s, %s, %s, %s)", ("Martin", "Pierre", 2800.00, 2))
cursor.execute("INSERT INTO employes (nom, prenom, salaire, id_service) VALUES (%s, %s, %s, %s)", ("Dupont", "Julie", 3200.00, 3))

# Validation de la transaction
db.commit()

# Fermeture de la connexion à la base de données
db.close()



# Exécution de la requête SQL pour récupérer les employés dont le salaire est supérieur à 3 000 €
cursor = db.cursor()
cursor.execute("SELECT * FROM employes WHERE salaire > 3000")
result = cursor.fetchall()

# Affichage du résultat
for row in result:
  print(row)

# Fermeture de la connexion à la base de données
db.close()
