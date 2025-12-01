#!/bin/bash

# List of available profiles
profiles=("Quiet" "Balanced" "Performance")

# Use rofi to show a menu and capture the selection
selected_profile=$(echo -e "${profiles[@]}" | rofi -dmenu -p "Select Profile:")

# If a profile is selected, set it
if [[ -n "$selected_profile" ]]; then
    asusctl profile --profile-set "$selected_profile"
fi
