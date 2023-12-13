#!/bin/bash
# Maintainer: Parakh Singhal
# Date: December 07, 2023
echo -e "\nThe current date and time is: $DATE"

# Adding a usr. Per the best practices the user should add a password at the time of the first login
echo -e "\n*** Adding a user***"
echo -e "\nPlease provide the username for the new user ***"
read username
sudo useradd --comment="Parakh Singhal" --create-home $username
sudo usermod --groups=research,accounting,realestate $username

# *** Please add the user password ***
echo -e "\nPlease add the password for the new created user"
sudo passwd $username
echo -e "\n*** User added ***"

# Reset the username
unset $username

# Update and upgrade the system
echo -e "\n*** Updating and upgrading the system **"
sudo apt update
sudo apt full-upgrade -y
echo -e "\n*** Completed the system update ***"

# Reboot the system
echo -e "\n*** Please reboot the system when convenient ***"
exit 0
