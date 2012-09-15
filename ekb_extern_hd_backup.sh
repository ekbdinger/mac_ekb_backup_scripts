#!/bin/bash

# just a simple script to rsync the files from the mac to the external HD

rsync -avz --progress /Users/paul/backups/ /Volumes/WD\ Passport/mac/backups

# i think this is right, running it starting around 18:09 on September 15t
# yes, the rsync seems to have worked fine.  Let's move this into the other folder
