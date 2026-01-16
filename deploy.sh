#!/bin/bash

# Quick deployment script for Carbon Footprint Tracker Landing Page
# This script helps you deploy to GitHub Pages

echo "=========================================="
echo "Carbon Footprint Tracker - Deploy Script"
echo "=========================================="
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "Git not initialized. Initializing now..."
    git init
    echo ""
fi

# Get GitHub username and repo name
echo "Enter your GitHub username:"
read github_username

echo "Enter repository name (e.g., carbon-tracker-landing):"
read repo_name

# Confirm
echo ""
echo "Will deploy to: https://github.com/$github_username/$repo_name"
echo "Site will be live at: https://$github_username.github.io/$repo_name/"
echo ""
echo "Continue? (y/n)"
read confirm

if [ "$confirm" != "y" ]; then
    echo "Deployment cancelled."
    exit 0
fi

# Add remote if it doesn't exist
if ! git remote | grep -q origin; then
    echo "Adding remote..."
    git remote add origin "https://github.com/$github_username/$repo_name.git"
fi

# Stage and commit
echo "Staging files..."
git add .

echo "Committing..."
git commit -m "Deploy Carbon Footprint Tracker landing page"

# Create main branch if needed
echo "Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "=========================================="
echo "Deployment complete!"
echo "=========================================="
echo ""
echo "Next steps:"
echo "1. Go to: https://github.com/$github_username/$repo_name/settings/pages"
echo "2. Under 'Source', select 'main' branch and '/ (root)' folder"
echo "3. Click 'Save'"
echo "4. Wait 1-2 minutes for deployment"
echo "5. Visit: https://$github_username.github.io/$repo_name/"
echo ""
echo "Note: Make sure you've created the repository on GitHub first!"
echo "Create it at: https://github.com/new"
echo ""
