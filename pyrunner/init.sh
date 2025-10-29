# ########################################
# responsabilites de l hote
# ########################################

echo "🔧 Configuration du groupe Docker..."

# 1 - Créer le groupe docker, afficher un warning si déjà présent
if sudo groupadd docker 2>/dev/null; then
  echo "✅ Groupe 'docker' créé avec succès."
else
  if getent group docker > /dev/null; then
    echo "⚠️  Groupe 'docker' existe déjà, on continue..."
  else
    echo "❌ Erreur inconnue lors de la création du groupe 'docker'."
    exit 1
  fi
fi

# 2 - Ajouter l'utilisateur courant au groupe docker
echo "👤 Ajout de l'utilisateur '$(whoami)' au groupe 'docker'..."
sudo usermod -aG docker $(whoami)

# 3 - Créer le dossier de logs s'il n'existe pas déjà
echo "📁 Vérification du dossier ./logs/pyrunner..."
if [ ! -d "./logs/pyrunner" ]; then
  mkdir -p ./logs/pyrunner
  echo "✅ Dossier ./logs/pyrunner créé."
else
  echo "⚙️  Dossier ./logs/pyrunner déjà existant."
fi

# 4 - Donner les droits à l'utilisateur courant
echo "🔑 Attribution des droits à l'utilisateur '$(whoami)'..."
sudo chown -R "$(whoami):$(whoami)" ./logs/pyrunner

echo "🎉 Configuration terminée avec succès."
