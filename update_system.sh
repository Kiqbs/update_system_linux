#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' 

echo -e "${GREEN}=== STARTING SYSTEM UPDATE (APT) ===${NC}"

sudo apt update
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean
echo -e "\n${GREEN}=== APT UPDATE COMPLETED ===${NC}"


if command -v snap &> /dev/null
then
    echo -e "\n${GREEN}=== STARTING UPDATING SNAP PACKAGES ===${NC}"
    sudo snap refresh
    echo -e "\n${GREEN}=== SNAP UPDATE COMPLETE ===${NC}"
else
    echo -e "\nSnap system not found. Skipping."
fi


if command -v flatpak &> /dev/null
then
    echo -e "\n${GREEN}=== STARTING FLATPAK PACKAGE UPDATES ===${NC}"
    flatpak update -y
    echo -e "\n${GREEN}=== FLATPAK UPDATE COMPLETE ===${NC}"
else
    echo -e "\nFlatpak system not found. Skipping."
fi

echo -e "\n${GREEN}############################################${NC}"
echo -e "${GREEN}#            FULL UPDATE COMPLETED           #${NC}"
echo -e "${GREEN}############################################${NC}"
