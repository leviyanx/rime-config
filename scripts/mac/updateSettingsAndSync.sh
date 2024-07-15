#!/bin/bash

cd ~/Library/Rime
git pull
sleep 10

if [ -n "$(pgrep 'Squirrel')" ]; then 
    cpu_usage=$(ps -p $(pgrep 'Squirrel') -o %cpu=); 
    if [ "$(echo "$cpu_usage <= 0.5" | bc -l)" -eq 1 ]; then 
        # sync first(make sure the sync is performed)
        DYLD_LIBRARY_PATH="/Library/Input Methods/Squirrel.app/Contents/Frameworks" "/Library/Input Methods/Squirrel.app/Contents/MacOS/Squirrel" --sync
        sleep 10
        DYLD_LIBRARY_PATH="/Library/Input Methods/Squirrel.app/Contents/Frameworks" "/Library/Input Methods/Squirrel.app/Contents/MacOS/Squirrel" --reload
    fi; 
fi