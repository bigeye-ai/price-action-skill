Write-Host "Installing Price Action Skill..." -ForegroundColor Green

# Create skills directory if it doesn't exist
if (!(Test-Path -Path "./skills/price-action")) {
    New-Item -ItemType Directory -Force -Path "./skills/price-action" | Out-Null
}

# Download the SKILL.md file
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/bigeye-ai/price-action-skill/main/skills/price-action/SKILL.md" -OutFile "./skills/price-action/SKILL.md"

Write-Host "Installation complete! The skill is located at ./skills/price-action/SKILL.md" -ForegroundColor Green
