#!/bin/bash

# Color reset
NC='\033[0m'

BACKUP_DIR="$HOME/sparrow_backups"
mkdir -p "$BACKUP_DIR"

clear

# Animated Banner Function
show_banner() {
    clear
    if command -v figlet &> /dev/null && command -v lolcat &> /dev/null; then
        echo "SPARROW" | figlet -f slant | lolcat -a -d 3
    else
        echo "SPARROW BACKUP TOOL"
    fi
}

show_banner

echo -e "\033[1;33m========================================\033[0m"
echo -e "\033[1;36m       ADVANCED BACKUP & RESTORE        \033[0m"
echo -e "\033[1;33m========================================\033[0m\n"

echo -e "\033[1;32mSelect an option:\033[0m"
echo -e "\033[1;34m1)\033[0m Backup a file or folder"
echo -e "\033[1;34m2)\033[0m Restore backed up items"
read -p "Your choice [1-2]: " choice

case $choice in
    1)
        echo -e "\n\033[1;33m[*] Starting Backup Process...\033[0m"
        read -p "Enter source path to backup: " TARGET
        if [ -e "$TARGET" ]; then
            cp -r "$TARGET" "$BACKUP_DIR"
            echo -e "\033[1;32m[✔] Backup successful! Stored in $BACKUP_DIR\033[0m"
        else
            echo -e "\033[1;31m[✖] Error: Source path does not exist.\033[0m"
        fi
        ;;
    2)
        echo -e "\n\033[1;33m[*] Starting Restore Process...\033[0m"
        echo -e "Available backups in $BACKUP_DIR:"
        ls -la "$BACKUP_DIR"
        read -p "Enter the exact name of the item to restore: " ITEM
        read -p "Enter the destination path to restore to: " DEST

        if [ -e "$BACKUP_DIR/$ITEM" ]; then
            mkdir -p "$DEST"
            cp -r "$BACKUP_DIR/$ITEM" "$DEST"
            echo -e "\033[1;32m[✔] Restore successful! Check $DEST\033[0m"
        else
            echo -e "\033[1;31m[✖] Error: Backup item not found.\033[0m"
        fi
        ;;
    *)
        echo -e "\033[1;31mInvalid option. Exiting.\033[0m"
        ;;
esac
