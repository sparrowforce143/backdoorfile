# backdoorfile

# SPARROW BACKUP TOOL v2.0

An advanced, animated, and user-friendly backup and restore manager designed for Termux and Linux environments.

## Features

- **Animated Interface:** Features a dynamic banner using `figlet` and `lolcat`.
- **Dual Functionality:** Safely packs/backups your files/folders and restores them when needed.
- **Easy Configuration:** Simple command-line prompts suitable for all users.

---

## 📋 Complete Installation & Setup Guide

Follow these commands step-by-step in your Termux terminal from start to finish to set up and run the tool successfully.

### Step 1: Update and Upgrade Termux
```bash
pkg update && pkg upgrade -y

Verification: Termux packages update completely without any network or dependency errors.
Step 2: Install Required Packages
pkg install git figlet ruby -y
gem install lolcat
```

Verification: Git, Figlet, Ruby, and Lolcat install successfully in your system.
Step 3: Clone the Repository
```
git clone [https://github.com/sparrowforce143/backdoorfile.git](https://github.com/sparrowforce143/backdoorfile.git)
```
Verification: The repository folder downloads completely to your local storage without interruption.
Step 4: Navigate to the Directory
```
cd backdoorfile
```

Verification: Your terminal path successfully changes to the cloned backdoorfile folder.
Step 5: Grant Execution Permissions
```
chmod +x sparrow_backup.sh
```

Verification: The script file gains executable permissions to run smoothly.
Step 6: Run the Tool
```
./sparrow_backup.sh
```

Verification: The animated SPARROW banner appears on your terminal screen with color-cycling effects.
🛠️ How to Use
 * Run the script using ./sparrow_backup.sh.
 * Choose Option 1 to backup a file or folder by entering its absolute path.
 * Choose Option 2 to restore your backed-up items to a specific destination.

