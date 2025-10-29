from datetime import datetime
from zoneinfo import ZoneInfo
import os

datadir = "/app/datas"
logfile = "/app/logs/run.log"
france_tz = ZoneInfo("Europe/Paris")

# Vérifier que les dossiers existent
os.makedirs(datadir, exist_ok=True)
os.makedirs(os.path.dirname(logfile), exist_ok=True)

# Lister les fichiers
try:
    files = os.listdir(datadir)
except PermissionError:
    print(f"Erreur : pas les droits pour accéder à {datadir}")
    files = []

print("1 - Identifie les fichiers dans", datadir, ":", files)

# Écrire un log
try:
    with open(logfile, "a") as f:
        print("2 - Écrire un log d'exécution dans :", logfile)
        f.write(f"Script exécuté à {datetime.now(tz=france_tz)}\n")
except PermissionError:
    print(f"Erreur : pas les droits pour écrire dans {logfile}")

print("3 - Script terminé.")