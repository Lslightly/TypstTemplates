param (
    [string]$targetDirectory
)

# Check if the target directory parameter is provided
if (-not $targetDirectory) {
    Write-Host "Please provide the target directory parameter"
    exit 1
}

# Get the current script directory
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Definition

# Create symbolic link for the entire script directory
New-Item -ItemType SymbolicLink -Path "$targetDirectory\TypstTemplates" -Target $scriptPath

if ($?) {
    Write-Host "Symbolic link to TypstTemplates folder created successfully"
    exit 0
} else {
    Write-Host "Failed to create symbolic link to TypstTemplates folder"
    exit 1
}
