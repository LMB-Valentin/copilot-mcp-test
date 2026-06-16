param (
    [Parameter(Mandatory=$true)]
    [string]$DirName
)

$CurrentDir = Get-Location
$LinkPath = Join-Path $CurrentDir $DirName

# Check if it exists
if (-not (Test-Path $LinkPath)) {
    Write-Error "Path does not exist: $LinkPath"
    exit 1
}

# Remove junction/symlink (not the target)
Remove-Item $LinkPath

Write-Host "Removed link: $LinkPath"