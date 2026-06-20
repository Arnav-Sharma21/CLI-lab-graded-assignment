# Target base directory
$baseDir = "c:\Users\Arnav Sharma\CLIAssignment"
$repoUrl = "https://github.com/Arnav-Sharma21/CLI-lab-graded-assignment.git"

# Make sure we are in the workspace directory
Set-Location -Path $baseDir

# Check if git is initialized
if (-not (Test-Path ".git")) {
    Write-Host "Initializing Git repository..."
    git init
} else {
    Write-Host "Git repository already initialized."
}

# Check if remote origin exists
$remoteExists = git remote | Select-String -Pattern "origin"
if ($remoteExists) {
    Write-Host "Setting remote origin URL..."
    git remote set-url origin $repoUrl
} else {
    Write-Host "Adding remote origin..."
    git remote add origin $repoUrl
}

# Add all files (this includes reports, commands logs, screenshots, and cleanups)
Write-Host "Staging files..."
git add .

# Check git status to see what's being committed
Write-Host "Git Status:"
git status

# Commit changes
Write-Host "Committing changes..."
git commit -m "Upload CLI Lab Graded Assignment deliverables with screenshots"

# Rename branch to main if needed
Write-Host "Setting branch to main..."
git branch -M main

# Push changes
Write-Host "Pushing to GitHub..."
git push -u origin main -f

Write-Host "Upload completed!"
