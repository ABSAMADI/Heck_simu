#!/bin/bash

# Check if Python is installed
if ! command -v python3 &> /dev/null
then
    echo "Python3 is not installed. Please install Python3 first."
    exit 1
fi

# Check if pip is installed
if ! command -v pip3 &> /dev/null
then
    echo "pip3 is not installed. Installing pip3..."
    python3 -m ensurepip --upgrade
fi

# Install specific Python libraries
echo "Installing required Python libraries..."
pip3 install colorama cowsay

# Note: The 'time' module is part of Python's standard library and does not require installation.

echo "Installation completed."
