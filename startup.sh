#!/bin/bash
echo "Path Of Titans Egg Star-X"
echo "(c) Copyright 2024 - SwitchCompagnie"

echo "-------------------------------------------------------------------------------------------------"
echo "Checking Updates"
echo "-------------------------------------------------------------------------------------------------"
./AlderonGamesCmd-Linux --game path-of-titans --server true --beta-branch $BETA_BRANCH --auth-token $AG_AUTH_TOKEN --install-dir ./POT/

echo "-------------------------------------------------------------------------------------------------"
echo "Starting POT Server"
echo "-------------------------------------------------------------------------------------------------"
./POT/PathOfTitansServer.sh ${SERVER_MAP} -log -ServerName=$ServerName -MaxPlayers=$MAX_PLAYERS -Port=$SERVER_PORT -BranchKey=$BETA_BRANCH -AuthToken=$AG_AUTH_TOKEN -ServerGUID=$SERVER_GUID -Database=$SERVER_DATABASE
