#!/bin/bash

# Cerate /var/backup if it doesn't exist
mkdir -p /var/backup

# Create new /var/backup/hom.tar
tar cvf /var/backup/home.tar /home

# moves the file '/var/backup/home.tar to /var/backup/home.date.tar
mv /var/backup/home.tar /var/backup/home.03162021.tar

# Creates an arvhive of /home and saves it to /var/backup/home.tar
tar cvf /var/backup/system.tar /home

# List all files in /var/backup including file sizes and save the output
ls -lh /var/backup > /var/backup/file_report.txt

# Print how much free space is available
free -h > /var/backup/file_report.txt





