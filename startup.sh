#! /bin/bash
echo "Path Of Titans Egg Star-X"
echo "(c) Copyright 2024 - SwitchCompagnie"
echo "Checking Updates"
export DOTNET_BUNDLE_EXTRACT_BASE_DIR=$(pwd)
./AlderonGamesCmd --game path-of-titans --server true --beta-branch $BETA_BRANCH --install-dir .
echo "Starting Server"
UE_TRUE_SCRIPT_NAME=$(echo \"$0\" | xargs readlink -f)
UE_PROJECT_ROOT=$(dirname "$UE_TRUE_SCRIPT_NAME")
chmod +x "$UE_PROJECT_ROOT/PathOfTitans/Binaries/Linux/PathOfTitansServer-Linux-Shipping"
"$UE_PROJECT_ROOT/PathOfTitans/Binaries/Linux/PathOfTitansServer-Linux-Shipping" PathOfTitans -log -Port=$SERVER_PORT -BranchKey=$BETA_BRANCH -AuthToken=$AG_AUTH_TOKEN -ServerGUID=$SERVER_GUID -Database=Local
