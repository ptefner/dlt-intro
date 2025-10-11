from datetime import datetime
import os

print("Fichiers dans /app/data :", os.listdir("/app/data"))

# écrire un log dans le dossier partagé
with open("/app/logs/run.log", "a") as f:
    f.write(f"Script exécuté à {datetime.now()}\n")

print("✅ Script terminé.")