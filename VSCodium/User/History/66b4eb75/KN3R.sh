#!/bin/bash

# List of available profiles
profiles=("Integrated" "Hybrid" "AsusMuxDgpu")

# Get the current active profile using asusctl
current_gpu_profile=$(supergfxctl --get)

# Find the index of the current profile in the array
current_index=-1
for i in "${!profiles[@]}"; do
    if [[ "${profiles[$i]}" == "$current_gpu_profile" ]]; then
        current_index=$i
        break
    fi
done

# If the current profile is found, select the next one in the list
if [[ $current_index -ge 0 ]]; then
    next_index=$(( (current_index + 1) % ${#profiles[@]} ))
    next_profile="${profiles[$next_index]}"
else
    # If the current profile is not found, start from the first profile
    next_profile="${profiles[0]}"
fi

# Set the new profile
supergfxctl --mode 