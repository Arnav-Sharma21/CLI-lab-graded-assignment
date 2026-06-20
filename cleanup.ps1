# Target base directory
$baseDir = "c:\Users\Arnav Sharma\CLIAssignment"

# Question 1 Screenshot
$q1_src = "C:\Users\Arnav Sharma\.gemini\antigravity\brain\06a97b30-d9e3-4b9b-a799-eb6f45d3bf65\media__1781988908934.png"
$q1_dest = "$baseDir\Question1\screenshots\verify_environment.png"

if (Test-Path $q1_src) {
    Copy-Item -Path $q1_src -Destination $q1_dest -Force
    Write-Host "Successfully copied Question 1 screenshot to: $q1_dest"
} else {
    Write-Warning "Question 1 source screenshot not found at: $q1_src"
}

# Question 2 Screenshots
$q2_files = @{
    "media__1781989483519.png" = "initial_workspace.png"
    "media__1781989492646.png" = "stat_before.png"
    "media__1781989509198.png" = "permissions_after.png"
    "media__1781989514433.png" = "umask_secret.png"
}

foreach ($srcName in $q2_files.Keys) {
    $srcPath = "C:\Users\Arnav Sharma\.gemini\antigravity\brain\06a97b30-d9e3-4b9b-a799-eb6f45d3bf65\$srcName"
    $destName = $q2_files[$srcName]
    $destPath = "$baseDir\Question2\screenshots\$destName"

    if (Test-Path $srcPath) {
        Copy-Item -Path $srcPath -Destination $destPath -Force
        Write-Host "Successfully copied Question 2 screenshot ($destName) to: $destPath"
    } else {
        Write-Warning "Question 2 source screenshot not found at: $srcPath"
    }
}

# Question 3 Screenshots
$q3_files = @{
    "media__1781989813792.png" = "link_creation.png"
    "media__1781989822769.png" = "stat_verification.png"
    "media__1781989826974.png" = "deletion_test.png"
}

foreach ($srcName in $q3_files.Keys) {
    $srcPath = "C:\Users\Arnav Sharma\.gemini\antigravity\brain\06a97b30-d9e3-4b9b-a799-eb6f45d3bf65\$srcName"
    $destName = $q3_files[$srcName]
    $destPath = "$baseDir\Question3\screenshots\$destName"

    if (Test-Path $srcPath) {
        Copy-Item -Path $srcPath -Destination $destPath -Force
        Write-Host "Successfully copied Question 3 screenshot ($destName) to: $destPath"
    } else {
        Write-Warning "Question 3 source screenshot not found at: $srcPath"
    }
}

# Question 4 Screenshots
$q4_files = @{
    "media__1781989859351.png" = "background_process.png"
    "media__1781989864561.png" = "ulimit_limits.png"
    "media__1781989869091.png" = "redirection_combined.png"
}

foreach ($srcName in $q4_files.Keys) {
    $srcPath = "C:\Users\Arnav Sharma\.gemini\antigravity\brain\06a97b30-d9e3-4b9b-a799-eb6f45d3bf65\$srcName"
    $destName = $q4_files[$srcName]
    $destPath = "$baseDir\Question4\screenshots\$destName"

    if (Test-Path $srcPath) {
        Copy-Item -Path $srcPath -Destination $destPath -Force
        Write-Host "Successfully copied Question 4 screenshot ($destName) to: $destPath"
    } else {
        Write-Warning "Question 4 source screenshot not found at: $srcPath"
    }
}

# Question 5 Screenshots
$q5_files = @{
    "media__1781989983599.png" = "storage_devices_usage.png"
    "media__1781989989278.png" = "directory_space_usage.png"
}

foreach ($srcName in $q5_files.Keys) {
    $srcPath = "C:\Users\Arnav Sharma\.gemini\antigravity\brain\06a97b30-d9e3-4b9b-a799-eb6f45d3bf65\$srcName"
    $destName = $q5_files[$srcName]
    $destPath = "$baseDir\Question5\screenshots\$destName"

    if (Test-Path $srcPath) {
        Copy-Item -Path $srcPath -Destination $destPath -Force
        Write-Host "Successfully copied Question 5 screenshot ($destName) to: $destPath"
    } else {
        Write-Warning "Question 5 source screenshot not found at: $srcPath"
    }
}

# Remove all .gitkeep files in the workspace
$gitkeeps = Get-ChildItem -Path $baseDir -Filter ".gitkeep" -Recurse -Force
foreach ($file in $gitkeeps) {
    Remove-Item -Path $file.FullName -Force
    Write-Host "Removed: $($file.FullName)"
}
