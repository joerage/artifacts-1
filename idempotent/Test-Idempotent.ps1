param
(
    [string]$Message = "Executing script at {0}." -f [DateTime]::Now,
    [string]$LogFile = 'C:\Temp\Idempotent.log'
)

$logFilePath = [IO.Path]::GetDirectoryName($LogFile)
if (-not [IO.Directory]::Exists($logFilePath))
{
    [IO.Directory]::CreateDirectory($logFilePath) | Out-Null
}
"Writing message '$Message' to log file '$LogFile' ..."
Add-Content "$LogFile" "$Message"
