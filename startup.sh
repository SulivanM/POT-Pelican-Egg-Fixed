#!/bin/bash
echo "Path Of Titans Egg Star-X"
echo "(c) Copyright 2024 - SwitchCompagnie"
echo "Starting Server"

server_executable="/mnt/server/PathOfTitans/Binaries/Linux/PathOfTitansServer-Linux-Shipping"

# Vérification de l'existence du répertoire du serveur et du fichier exécutable
if [ ! -d "$(dirname "$server_executable")" ] || [ ! -f "$server_executable" ]; then
    echo "Error: Server directory or executable not found."
    exit 1
fi

# Changement des permissions du serveur exécutable
chmod +x "$server_executable"

# Démarrage du serveur avec les paramètres spécifiés
"$server_executable" PathOfTitans \
    -log \
    -Port="$SERVER_PORT" \
    -BranchKey="$BETA_BRANCH" \
    -AuthToken="$AG_AUTH_TOKEN" \
    -ServerGUID="$SERVER_GUID" \
    -Database=Local
