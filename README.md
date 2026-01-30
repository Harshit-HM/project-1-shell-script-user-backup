# Shell Script for User Management & Backup in Linux

**This repository contains a Bash shell script that automates Linux user management and backup tasks with a menu-based interface.**

---

## Table of Contents

1. [Project Overview](#project-overview)
2. [Features](#features)
3. [Why This Project / Objectives](#why-this-project-objectives)
4. [Technologies Used](#technologies-used)
5. [Repository Structure](#repository-structure)
6. [Setup & Installation](#setup-installation)
7. [Usage](#usage)
8. [Example Workflow](#example-workflow)
9. [Logging & Cron Jobs](#logging-cron-jobs)
10. [Contributing](#contributing)
11. [License](#license)
12. [About the Author](#about-the-author)

---

## Project Overview

This Bash project provides a **simple yet powerful shell script (`user_backup.sh`)** that helps automate:

* Linux **user and group management**
* Secure **directory backups**
* Timestamped archived backups

---

## Features

✔️ Add, remove, and manage users safely
✔️ Create and manage groups
✔️ Backup any specified directory
✔️ Compressed backups using `.tar.gz`
✔️ Timestamped backup files for easy tracking
✔️ Logging of all operations (user mgmt & backups)
✔️ Root permission checks with validation checks
✔️ Works across multiple Linux distributions

---

## Why This Project / Objectives

* Automate repetitive Linux administration tasks
* Improve efficiency with scripting and validation
* Secure backups with logging and timestamps
* Gain practical experience with Bash scripting & GitHub workflows

---

## 🛠️ Technologies Used

| Category         | Technology                   |               |
| ---------------- | ---------------------------- | ------------- |
| Operating System | Linux (Ubuntu, CentOS, RHEL) |               |
| Scripting        | Bash Shell                   |               |
| Version Control  | Git                          |               |

---

## Repository Structure

```
Project-1-Shell_Script_User_Backup/
│
├── user_backup.sh       # Main script
├── README.md            # This documentation
└── backups/             # Directory where backups are stored (optional)
```

---

## Setup & Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/Shipra-SG/Project-1-Shell_Script_User_Backup.git
   ```

2. **Go to the project directory**

   ```bash
   cd Project-1-Shell_Script_User_Backup
   ```

3. **Make the script executable**

   ```bash
   chmod +x user_backup.sh
   ```

4. **Run script with root permissions**

   ```bash
   sudo ./user_backup.sh
   ```

---

## Usage

Once executed, the script shows a **menu interface** where users can choose:

* Add a user
* Delete a user
* Add user to group
* Create a group
* Backup a specific directory

> 📌 Make sure you have **root privileges** when running the script.

---

## Example Workflow

```bash
$ sudo ./user_backup.sh
-----------------------------------
 Linux User Backup & Management CLI
-----------------------------------
1) Add new user
2) Delete user
3) Add user to group
4) Create a new group
5) Backup directory
0) Exit
```

➡ Choose option `5` to backup a directory:

```bash
Enter directory to backup: /home/project_files
Backup completed:
 backups/project_files_2025-01-25_1522.tar.gz
```

---

## 📋 Logging & Cron Jobs

All operations (like backup, user add/delete) are logged to:

```
/var/log/user_backup.log
```

You can also schedule automated backups using **cron jobs**:

```bash
sudo crontab -e
```

Add a cron entry for daily backups:

```
0 2 * * * /path/to/user_backup.sh backup
```

---

## 🤝 Contributing

⭐ Contributions are welcome!
Fork this repository and send a Pull Request to suggest improvements — especially:

* More user options
* Better error handling
* Unit tests / validations

---

## License

This project uses the **MIT License** — open for use and modifications.
