#################################################################################
# Zip Directories Script
#
# psudocode:
Get the root directory (s:)
Get the list of music directories
Get the list of movie directories

Build an array of all the directories to back up

Make a new folder to hold this batch

Loop through array zipping each one and adding it to folder name as root - master folder - sub folder 





#
# Created: 6/8/17
#################################################################################


#Parameters
$SourceDir = "S:\"
$LocalBackupDir = "X:\"
$Date = (Get-Date).toString("yyyy/MM/dd HH:mm:ss")
$LogFile = "C:\temp\backup_script_log.txt"
