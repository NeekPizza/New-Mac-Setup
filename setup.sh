#!/usr/bin/env bash

# Install apps and binaries with Brew
echo "Initializing brew.sh..."
source ./brew.sh

# Configure zsh
echo "Initializing configure-zsh.sh..."
source ./configure-zsh.sh

# Configure MacOS defaults.
# You only want to run this once during setup. Additional runs may reset changes you make manually.
echo "Initializing mac.sh..."
source ./mac.sh

echo "Completed."