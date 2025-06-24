#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

echo "📦 Mise à jour des paquets"
sudo apt-get update -y
sudo apt-get install -y ca-certificates curl gnupg

echo "🔐 Ajout de la clé GPG Docker"
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/keyrings/docker.gpg > /dev/null
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo "➕ Ajout du dépôt Docker"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update -y

echo "🐳 Installation de Docker (sans containerd)"
sudo apt-get install -y docker-ce docker-ce-cli docker-buildx-plugin docker-compose-plugin --no-install-recommends

echo "✅ Docker installé avec succès :"
sudo docker --version || { echo "❌ Docker non trouvé dans le PATH"; exit 1; }
