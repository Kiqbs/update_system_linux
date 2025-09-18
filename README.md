# update_system_linux
Update Script for Ubuntu-based Systems

This repository contains a simple Bash script (atualizar-sistema.sh) to automate and centralize the update process for Ubuntu-based operating systems (such as Zorin OS, Linux Mint, Pop!_OS, etc.).

The goal is to provide a single command to keep the main system, Snap packages, and Flatpak applications always up-to-date.

Features

The script performs the following tasks in sequence:

    System Update (APT):

        apt update: Synchronizes the package list from the repositories.

        apt full-upgrade: Upgrades all installed packages to their newest versions, intelligently handling dependencies.

        apt autoremove: Removes packages and dependencies that are no longer required by the system.

        apt autoclean: Clears the local cache of downloaded package files, removing outdated versions.

    Snap Package Updates:

        Checks if snapd is installed on the system.

        If present, it runs the snap refresh command to update all installed Snap packages.

    Flatpak Application Updates:

        Checks if flatpak is installed.

        If present, it runs flatpak update to update all Flatpak applications and runtimes.

The script also uses color-coded output in the terminal to make it easier to track the progress of each stage.

How to Use

To use the script, follow the steps below:
______________________________________________________________________________________________________________________________
    1. Clone the repository (or download the script):

    git clone https://[URL_OF_YOUR_REPOSITORY].git
    cd [NAME_OF_YOUR_REPOSITORY
______________________________________________________________________________________________________________________________
    2. Make the script executable:
    You need to grant execute permissions to the file for the system to allow it to run.

    chmod +x atualizar-sistema.sh
______________________________________________________________________________________________________________________________    3. Run the script:
    ./update-system.sh    
______________________________________________________________________________________________________________________________

        Note: The script uses sudo for APT and Snap commands, so you will be prompted to enter your administrator password in the terminal.

Prerequisites

    An Ubuntu/Debian-based operating system.

    Terminal access.

    Sudo (superuser) privileges.