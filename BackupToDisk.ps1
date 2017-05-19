




#################################################################################
# Backup to USB Drive Script
#
# Create exact replica of source dir on destination dir.  With S: and X: entered, 
#   copies all of s: data to USB drives mounted on x:
#
# Created: 1/8/17
#################################################################################


#Parameters
$SourceDir = "S:\"
$LocalBackupDir = "X:\"
$Date = (Get-Date).toString("yyyy/MM/dd HH:mm:ss")
$LogFile = "C:\temp\backup_script_log.txt"

#Logging Function
Function LogWrite
{
   Param ([string]$logstring)

   Add-content $Logfile -value $logstring
}


#Script Main

Try{
    Robocopy $SourceDir $LocalBackupDir /MIR /FFT /Z /XA:H /W:5 /XD *Recycle* *System*
}
Catch{
    $ErrorMessage = $_.Exception.Message
    $FailedItem = $_.Exception.ItemName

    LogWrite "$Date - Error during sync to $LocalBackupDir. `n Error Message: $ErrorMessage `n Error Item: $FailedItem"
}


