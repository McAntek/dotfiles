#!/bin/bash

# Get the current profile and display it
current_profile=$(asusctl profile --profile-get)
echo "$current_profile"
