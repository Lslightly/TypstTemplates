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

# Define an array of folders to link
$folders = @("templates", "fonts")

# Create symbolic links for folders in the array
foreach ($folder in $folders) {
    $linkPath = Join-Path -Path $targetDirectory -ChildPath $folder
    $targetPath = Join-Path -Path $scriptPath -ChildPath $folder

    if (-not (Test-Path $linkPath)) {
        New-Item -ItemType SymbolicLink -Path $linkPath -Target $targetPath
        if ($?) {
            Write-Host "Symbolic link for folder $folder created successfully"
        } else {
            Write-Host "Failed to create symbolic link for folder $folder"
            exit 1
        }
    } else {
        Write-Host "Symbolic link for folder $folder already exists"
    }
}

Write-Host "Symbolic links created successfully"
exit 0
