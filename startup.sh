#! /bin/bash
echo "Path Of Titans Egg Star-X"
echo "(c) Copyright 2024 - SwitchCompagnie"
echo "Starting Server"

# Vérification de l'existence du répertoire du serveur
if [ ! -d "/mnt/server/PathOfTitans/Binaries/Linux/" ]; then
    echo "Error: Server directory not found."
    exit 1
fi

# Vérification de l'existence du fichier exécutable du serveur
if [ ! -f "/mnt/server/PathOfTitans/Binaries/Linux/PathOfTitansServer-Linux-Shipping" ]; then
    echo "Error: Server executable not found."
    exit 1
fi

# Changement des permissions du serveur exécutable
chmod +x "/mnt/server/PathOfTitans/Binaries/Linux/PathOfTitansServer-Linux-Shipping"

# Démarrage du serveur avec les paramètres spécifiés
"/mnt/server/PathOfTitans/Binaries/Linux/PathOfTitansServer-Linux-Shipping" PathOfTitans \
    -log \
    -Port=$SERVER_PORT \
    -BranchKey=$BETA_BRANCH \
    -AuthToken=$AG_AUTH_TOKEN \
    -ServerGUID=$SERVER_GUID \
    -Database=Local
# Pour que la liste de serveurs fonctionne, vous devez ajouter l'option -ServerListIP=000.000.000
