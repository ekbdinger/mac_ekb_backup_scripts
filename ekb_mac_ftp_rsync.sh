#!/bin/bash

# Updated this for the Mac on the night of September 9, 2012
# just going to backup the whole ekb server in one.  No more eKB and Pressflow

echo "This will back up the entire eKB Server public_html directory.  Confirm that you want to back up the server  This backup is typically done weekly ";
echo " "
echo "1:  Just the eKB";
echo " ";
echo "2:  Just the Pressflow site";
echo " ";
echo "3:  Backup the entire public_html directory";
echo " ";
echo "------------------------------------------";

read -p "Enter your selection: " choice;
echo " "
# echo $choice;
case $choice in 
	1)	echo "You selected choice #1"
		echo " "
		echo "Performing an Rsync on the eKB Files directory ";
		echo " "
		rsync -e "ssh -p 18765" -aHzvv --progress root@184.154.31.130:/home/ecwknowl/public_html/sites/default/files /home/paul/ecw/ekb/backups/ftp
		echo " "
		sleep 1
		echo " " 
		echo " " ;;
	2)  	echo "You selected choice #2"
		echo " "
		echo "Performing an Rsync on the eKB Files directory ";
		echo " "
		rsync -e "ssh -p 18765" -aHzvv --progress root@184.154.31.130:/home/ecwknowl/public_html/pressflow/sites/default/files /home/paul/ecw/pressflow/backups/ftp
		echo " "
		sleep 1
		echo "---------------------------------------------------------------------"
		echo " "
		echo "The Pressflow files directory has been backed up via rsync"
		echo " " ;;	
# This option is new as of September 9th
	3)  echo "You selected choice #3.  Backing up the public_html directory"	
		echo ""
		echo ""
		echo "Performing an Rsync on the public_html diretory on the eKB Server"
		echo ""	
		echo ""
		rsync -e "ssh -p 18765" -aHzvv --progress root@184.154.31.130:/home/ecwknowl/public_html /Users/paul/backups/ekb_server
esac	

echo " "
echo " "
echo "the rsync of the public_html directory is complete"
echo " "

# Details from when I ran the script early on Monday, September 10th
# sent 1991616 bytes  received 13727400274 bytes  1070309.25 bytes/sec
#  total size is 16081786450  speedup is 1.17

# I also had an error message, I removed the line at the end that was unnecessary