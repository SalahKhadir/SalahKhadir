#!/bin/bash

# Helper script to update the GitHub profile banner
# Usage: ./update_banner.sh /path/to/your/file.gif

set -e

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo "======================================"
echo "GitHub Profile Banner Update Script"
echo "======================================"
echo ""

# Check if file path is provided
if [ $# -eq 0 ]; then
    echo -e "${RED}Error: No file path provided${NC}"
    echo ""
    echo "Usage: $0 /path/to/your/banner.gif"
    echo ""
    echo "Example: $0 ~/Downloads/my-cool-animation.gif"
    exit 1
fi

INPUT_FILE="$1"

# Check if file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo -e "${RED}Error: File not found: $INPUT_FILE${NC}"
    exit 1
fi

# Get file extension
EXT="${INPUT_FILE##*.}"
EXT_LOWER=$(echo "$EXT" | tr '[:upper:]' '[:lower:]')

# Check if it's a GIF
if [ "$EXT_LOWER" != "gif" ]; then
    echo -e "${YELLOW}Warning: File is not a GIF (it's .$EXT)${NC}"
    echo ""
    echo "GitHub READMEs only support GIF format for animations."
    echo "Would you like to:"
    echo "  1. Copy it anyway (if it's actually a GIF with wrong extension)"
    echo "  2. Cancel and convert it first"
    echo ""
    read -p "Enter choice (1 or 2): " choice
    
    if [ "$choice" != "1" ]; then
        echo ""
        echo "Please convert your file to GIF format first."
        echo "You can use:"
        echo "  - Online: https://ezgif.com/ or https://cloudconvert.com/"
        echo "  - Command: ffmpeg -i $INPUT_FILE -vf \"fps=10,scale=1500:-1:flags=lanczos\" banner.gif"
        exit 0
    fi
fi

# Create assets directory if it doesn't exist
mkdir -p assets

# Copy file to assets directory
echo "Copying file to assets/banner.gif..."
cp "$INPUT_FILE" assets/banner.gif

# Check if file was copied successfully
if [ ! -f "assets/banner.gif" ]; then
    echo -e "${RED}Error: Failed to copy file${NC}"
    exit 1
fi

echo -e "${GREEN}✓ File copied successfully${NC}"

# Get file size
FILE_SIZE=$(du -h "assets/banner.gif" | cut -f1)
echo "File size: $FILE_SIZE"

# Check if README.md exists
if [ ! -f "README.md" ]; then
    echo -e "${RED}Error: README.md not found${NC}"
    exit 1
fi

# Update README.md
echo ""
echo "Updating README.md..."

# Backup README.md
cp README.md README.md.backup

# Replace the image source
if grep -q 'src="https://media1.giphy.com' README.md; then
    # Replace Giphy URL with local path
    sed -i 's|src="https://media1.giphy.com/media/[^"]*"|src="./assets/banner.gif"|' README.md
    echo -e "${GREEN}✓ README.md updated (replaced Giphy URL)${NC}"
elif grep -q 'src="./assets/banner.gif"' README.md; then
    echo -e "${YELLOW}README.md already points to ./assets/banner.gif${NC}"
else
    echo -e "${YELLOW}Warning: Could not find expected image tag in README.md${NC}"
    echo "Please manually update line 2 in README.md to use: ./assets/banner.gif"
fi

echo ""
echo "======================================"
echo -e "${GREEN}Banner update complete!${NC}"
echo "======================================"
echo ""
echo "Next steps:"
echo "  1. Review the changes:"
echo "     git status"
echo "     git diff README.md"
echo ""
echo "  2. Commit the changes:"
echo "     git add assets/banner.gif README.md"
echo "     git commit -m \"Update profile banner\""
echo ""
echo "  3. Push to GitHub:"
echo "     git push"
echo ""
echo "  4. Visit your profile to see the new banner:"
echo "     https://github.com/SalahKhadir"
echo ""
echo "(A backup of your README.md was saved as README.md.backup)"
