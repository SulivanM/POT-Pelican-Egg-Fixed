#!/bin/bash
echo "Path Of Titans Egg Star-X"
echo "(c) Copyright 2024 - SwitchCompagnie"
echo "Starting Server"

./AlderonGamesCmd-Linux --game path-of-titans --server true --beta-branch $BETA_BRANCH --auth-token $AG_AUTH_TOKEN --install-dir ./server/

./server/PathOfTitansServer.sh ${SERVER_MAP}?listen?MaxPlayers=${SERVER_MAX_PLAYERS} -nullRHI -ServerName=${SERVER_NAME} -ServerGUID=${SERVER_GUID} -BranchKey=${BETA_BRANCH} -Database=${SERVER_DB} -log
