#!/bin/bash
#check root permission

if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root"
  exit 1
fi

# Variables for backup

BACKUP_DIR="./backup"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p $BACKUP_DIR

show_menu() {
        echo " ==================================="
        echo "User Mangement & Backup Tool"
        echo "===================================="
        echo "1. Add User"
        echo "2. Delete User"
        echo "3. Modify User (Add to Group)"
        echo "4. Create Group"
        echo "5. Backup Directory"
        echo "6. Exit"
}

add_user() {
        read -p "Enter Username:" username
        useradd $username && echo "User $username created successfully"
}

delete_user() {
  read -p "Enter username to delete: " username
  userdel -r $username && echo "User $username deleted successfully"
}

 modify_user() {
  read -p "Enter username: " username
  read -p "Enter group name: " group
  usermod -aG $group $username
}

create_group() {
  read -p "Enter group name: " group
  groupadd $group
}

backup_directory() {
        read -p "Enter directory path to backup:" dir
        if [ -d "$dir" ]; then
                tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" "$dir"
                echo "Backup completed:backup_$DATE.tar.gz"
        else
                echo "Directory does not exist"

        fi
}

while true; do
	show_menu
        read -p "Choose an option: " choice
         case $choice in
                 1) add_user ;;
                 2) delete_user ;;
                 3) modify_user ;;
                 4) create_group ;;
                 5) backup_directory ;;
                 6) echo "Exiting..."; exit ;;
                 *) echo "Invalid option" ;;
         esac
done
