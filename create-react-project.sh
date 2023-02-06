#!/bin/bash

project_name=${1:-client}

# Checks if the project directory already exists.
if [ -e ${project_name} ]; then
    echo "A directory ${project_name} already exists."
    echo "Please remove it before executing this command."
    echo "Exiting."
fi

echo "Creating project ${project_name}..."

# Generate the project structure and copy template files.
npm create vite@latest ${project_name} -- --template react
cp .templates/{babel.config.json,jsonconfig.json} ${project_name}/

echo "Your project ${project_name} is ready."
