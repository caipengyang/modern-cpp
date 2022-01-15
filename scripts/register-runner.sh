#!/usr/bin/env bash

#detect project root path
PROJECT_ROOT=`git rev-parse --show-toplevel`
CURRENT_PATH=`pwd`

# Create a folder
cd $PROJECT_ROOT
mkdir -p actions-runner && cd actions-runner
# Download the latest runner package
curl -o actions-runner-linux-x64-2.286.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.286.0/actions-runner-linux-x64-2.286.0.tar.gz
# Optional: Validate the hash
echo "855b84fe96fda84b22bb9efa2088652d785ed856a7af484b5f4c44f650d7eecf  actions-runner-linux-x64-2.286.0.tar.gz" | shasum -a 256 -c
# Extract the installer
tar xzf ./actions-runner-linux-x64-2.286.0.tar.gz

# Create the runner and start the configuration experience
RUNNER_ALLOW_RUNASROOT="1" ./bin/installdependencies.sh
RUNNER_ALLOW_RUNASROOT="1" DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1 ./config.sh --url https://github.com/caipengyang/modern-cpp --token AALY27E4MMA75F32UIZK4PDB4LH2E --unattended 
# Last step, run it!
RUNNER_ALLOW_RUNASROOT="1" DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1 DOTNET_SYSTEM_GLOBALIZATION_PREDEFINED_CULTURES_ONLY=false ./run.sh --unattended
