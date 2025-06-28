#!/bin/bash

# Navigate to ArduPilot folder
cd ~/ardupilot || { echo "ArduPilot folder not found!"; exit 1; }

# Check if custom param file exists
if [ ! -f tcp5760.parm ]; then
  echo -e "SERIAL0_PROTOCOL=2\nSERIAL0=5760" > tcp5760.parm
fi

# Open SITL in a new terminal
gnome-terminal -- bash -c "./build/sitl/bin/arducopter -w --model quad --defaults=tcp5760.parm; exec bash"

# Wait 3 seconds for SITL to start
sleep 3

# Open MAVProxy in a second terminal

gnome-terminal -- bash -c "mavproxy.py --master=127.0.0.1:5760; exec bash"
