#!/bin/bash

# --- SCRIPT DE ATUALIZAÇÃO COMPLETA PARA BASEADOS EM UBUNTU ---

# Define cores para a saída do terminal para melhor visualização
VERDE='\033[0;32m'
NC='\033[0m' # Sem Cor

echo -e "${VERDE}=== INICIANDO ATUALIZAÇÃO DO SISTEMA (APT) ===${NC}"
# Atualiza a lista de pacotes
sudo apt update

# Atualiza todos os pacotes instalados de forma inteligente
sudo apt full-upgrade -y

# Remove pacotes que não são mais necessários
sudo apt autoremove -y

# Limpa o cache de pacotes baixados
sudo apt autoclean

echo -e "\n${VERDE}=== ATUALIZAÇÃO APT CONCLUÍDA ===${NC}"


# Verifica se o Snap está instalado antes de tentar atualizar
if command -v snap &> /dev/null
then
    echo -e "\n${VERDE}=== INICIANDO ATUALIZAÇÃO DOS PACOTES SNAP ===${NC}"
    sudo snap refresh
    echo -e "\n${VERDE}=== ATUALIZAÇÃO SNAP CONCLUÍDA ===${NC}"
else
    echo -e "\nO sistema Snap não foi encontrado. Pulando."
fi


# Verifica se o Flatpak está instalado antes de tentar atualizar
if command -v flatpak &> /dev/null
then
    echo -e "\n${VERDE}=== INICIANDO ATUALIZAÇÃO DOS PACOTES FLATPAK ===${NC}"
    flatpak update -y
    echo -e "\n${VERDE}=== ATUALIZAÇÃO FLATPAK CONCLUÍDA ===${NC}"
else
    echo -e "\nO sistema Flatpak não foi encontrado. Pulando."
fi

echo -e "\n${VERDE}############################################${NC}"
echo -e "${VERDE}#      ATUALIZAÇÃO COMPLETA FINALIZADA     #${NC}"
echo -e "${VERDE}############################################${NC}"
