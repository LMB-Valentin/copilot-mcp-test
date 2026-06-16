param (
    [Parameter(Mandatory=$true)]
    [string]$PathDir,

    [string]$DirName
)

# Resolve full target path
$TargetPath = (Resolve-Path $PathDir).Path

# If no custom name given, use the target folder name
if (-not $DirName) {
    $DirName = Split-Path $TargetPath -Leaf
}

# Build link path in current directory
$CurrentDir = Get-Location
$LinkPath = Join-Path $CurrentDir $DirName

# Prevent overwriting existing folder/link
if (Test-Path $LinkPath) {
    Write-Error "Path already exists: $LinkPath"
    exit 1
}

# Create junction
cmd /c "mklink /J `"$LinkPath`" `"$TargetPath`""