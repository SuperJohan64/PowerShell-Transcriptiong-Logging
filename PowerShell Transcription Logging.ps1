# Turns on Transcription to log all activity.
$TimeStamp = Get-Date -Format "yyyyMMddTHHmmssffff"
$LogFile = "$PSScriptRoot\Logs\$TimeStamp.txt"
Start-Transcript -Path $LogFile

# A small function to end the transcription and close the script
function EndTranscription {
    Stop-Transcript
    Invoke-Item $LogFile
    Disconnect-AzureAD -ErrorAction SilentlyContinue
}
