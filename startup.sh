#! /bin/bash
echo "Path Of Titans Egg Star-X"
echo "(c) Copyright 2024 - SwitchCompagnie"
echo "Starting Server"

# Récupération du répertoire actuel du script
UE_TRUE_SCRIPT_NAME=$(realpath "$0")
UE_PROJECT_ROOT=$(dirname "$UE_TRUE_SCRIPT_NAME")

# Vérification de l'existence du répertoire du serveur
if [ ! -d "$UE_PROJECT_ROOT/PathOfTitans/Binaries/Linux/" ]; then
    echo "Error: Server directory not found."
    exit 1
fi

# Changement des permissions du serveur exécutable
chmod +x "$UE_PROJECT_ROOT/PathOfTitans/Binaries/Linux/PathOfTitansServer-Linux-Shipping"

# Démarrage du serveur avec les paramètres spécifiés
"$UE_PROJECT_ROOT/PathOfTitans/Binaries/Linux/PathOfTitansServer-Linux-Shipping" PathOfTitans \
    -log \
    -Port=$SERVER_PORT \
    -BranchKey=$BETA_BRANCH \
    -AuthToken=$AG_AUTH_TOKEN \
    -ServerGUID=$SERVER_GUID \
    -Database=Local
# Pour que la liste de serveurs fonctionne, vous devez ajouter l'option -ServerListIP=000.000.000
