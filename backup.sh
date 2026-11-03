#!/bin/bash

# Color codes
RED='\033[1;31m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
PURPLE='\033[1;35m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

clear

# Loading Animation 1
echo -e "${CYAN}Initializing Sparrow Security Systems...${NC}"
for ((i=0; i<=3; i++)); do
    echo -ne "${YELLOW}Loading [${i}/3]...\r${NC}"
    sleep 0.4
done
clear

# Large Banner using Figlet & Lolcat
if command -v figlet &> /dev/null && command -v lolcat &> /dev/null; then
    figlet -f slant "SPARROW" | lolcat
else
    echo -e "${PURPLE}================================================${NC}"
    echo -e "${GREEN}  ███████╗██████╗  █████╗ ██████╗ ██████╗  ██████╗  ██      ██${NC}"
    echo -e "${GREEN}  ██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔═══██╗ ██  █  ██${NC}"
    echo -e "${GREEN}  ███████╗██████╔╝███████║██████╔╝██████╔╝██║   ██║ █████ ███${NC}"
    echo -e "${GREEN}  ╚════██║██╔═══╝ ██╔══██║██╔══██╗██╔══██╗██║   ██║ ███▀█▀███${NC}"
    echo -e "${GREEN}  ███████║██║     ██║  ██║██║  ██║██║  ██║╚██████╔╝ ███   ███${NC}"
    echo -e "${PURPLE}================================================${NC}"
fi

echo -e "${CYAN}          ADVANCED BACKUP TOOL v2.0             ${NC}"
echo -e "${PURPLE}================================================${NC}\n"

# Usage & Features Section
echo -e "${YELLOW}[+] TOOL OVERVIEW & USAGE:${NC}"
echo -e " * This tool safely packs and backups your files or folders."
echo -e " * Target elements are stored in: ${GREEN}\$HOME/sparrow_backups${NC}"
echo -e " * Fully automated script with compression and error handling.\n"

# Define Backup Directory
BACKUP_DIR="$HOME/sparrow_backups"
mkdir -p "$BACKUP_DIR"

# User Input with Animation
echo -e "${CYAN}[?] Enter the absolute path of the file or folder to backup:${NC}"
read -p " > " TARGET

if [ -e "$TARGET" ]; then
    echo -e "\n${YELLOW}[*] Validating target path...${NC}"
    sleep 0.6
    
    echo -e "${PURPLE}[*] Compressing and transferring data, please wait...${NC}"
    
    # Advanced Progress Bar Animation
    bar="####################"
    for ((i=0; i<=20; i++)); do
        percent=$((i * 5))
        printf "\r[%-${i}s] %d%%" "${bar:0:i}" "$percent"
        sleep 0.08
    done
    echo -e "\n"

    # Copy Operation
    cp -r "$TARGET" "$BACKUP_DIR"
    
    # Success Animation
    echo -e "${GREEN}[✔] SUCCESS: Backup completed successfully!${NC}"
    echo -e "${CYAN}[i] Destination Path: ${GREEN}$BACKUP_DIR${NC}\n"
else
    echo -e "\n${RED}[✖] ERROR: Specified file or folder does not exist!${NC}"
    echo -e "${YELLOW}[!] Please check the path and try again.${NC}\n"
fi

# Exit Animation
echo -e "${PURPLE}Exiting Sparrow Tool... Have a secure day!${NC}"
for i in {3..1}; do
    echo -ne "${CYAN}Closing in ${i} seconds...\r${NC}"
    sleep 0.5
done
clear

