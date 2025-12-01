#!/bin/bash

# Get the current profile and extract the profile name from the output
current_profile=$(asusctl profile --profile-get | grep -oP '(?<=Active profile is ).*')

# Output the profile name
echo "$current_profile"
