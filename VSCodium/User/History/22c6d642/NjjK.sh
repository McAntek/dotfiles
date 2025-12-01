#!/bin/bash

current_profile=$(asusctl profile --profile-get | grep -oP '(?<=Active profile is ).*')

echo "$current_profile"
