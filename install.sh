#!/bin/bash

# Define colors
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}Installing Price Action Skill...${NC}"

# Create skills directory if it doesn't exist
mkdir -p ./skills/price-action

# Download the SKILL.md file
curl -fsSL https://raw.githubusercontent.com/bigeye-ai/price-action-skill/main/skills/price-action/SKILL.md -o ./skills/price-action/SKILL.md

echo -e "${GREEN}Installation complete! The skill is located at ./skills/price-action/SKILL.md${NC}"
