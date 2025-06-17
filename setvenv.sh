#!/bin/bash
set -e

if [[ "$#" != 0 && "$#" != 1 ]]; then
    echo "Not the right amount of CLA"
    exit 1
fi 

python --version
echo "Creating virtual environment"
python -m venv .venv
source .venv/bin/activate

echo "Quick check..."
python --version

echo "Upgrading pip"
pip install --upgrade pip

if [[ "$#" == 1 && "$1" == "-r" ]];then 
    echo "Installing requrements.txt"
    pip install -r requirements.txt || echo "No requirements.txt found"
fi

exit 0
